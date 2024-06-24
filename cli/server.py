import cli.protocol as protocol
import tools.assembler, tools.simulator

import socket
import threading
import re
import time
import glob
import serial

# for talking to hardware, might be moved to its own module soon
class HardwareManager:
    def __init__(self):
        # find the port
        ports = glob.glob('/dev/ttyUSB[0-9]*') # for linux/mac systems, i have no clue how to do this on windows machine
        if len(ports) == 1:
            port = ports[0]
        else:
            print("available ports are: \n","\n".join(f"{i+1}: {port}" for i, port in enumerate(ports)))
            while True:
                try:
                    port_number = int(input("select one of them (by number before it in list): "))
                except ValueError:
                    print("Not a number or not an integer, try again.")
                else:
                    if 0 < port_number <= len(ports):
                        break
                    else:
                        print("Not in range of the list, try again.")
        
            port = ports[port_number-1]

        self.ser_connection = serial.Serial(port, 2_000_000, timeout=0.05) # very short timeout so we can do other things
        self.test_hardware()

        # every item in queue is tuple or list of shape (<client_socket>, <aes_key>, <machine code to be run>)
        self.queue = [] # using list as queue, doesn't matter for performance really
        
        self.default_max_runtime = 20*60 # default max runtime is 20 minutes
        self.queued_max_runtime = 3*60 # if someone's waiting in the queue then max runtime is only 3 minutes
        
        self.max_runtime = self.default_max_runtime # may change if people are waiting in queue
        
        self.running = False # is hardware currently running someone's code
    
    
    def test_hardware(self):
        """makes sure the hardware is responding correctly to trivial input, to make sure it's running
        """
        self.ser_connection.reset_input_buffer() # clear the input buffer
        self.ser_connection.write(b"\xff") # start sending something
        self.ser_connection.write(b"\0\0\0") # one word - 0
        self.ser_connection.write(b"\xfa") # stop sending
        dat = self.ser_connection.read(2)
        try:
            assert dat == b'\0\xff' # checksum of nothing is 0, and 0xff for done running
        except AssertionError as err:
            print(f"Assert failed. didn't get b'\\0\\xff', instead got {dat!r}. Error was:")
            raise err
        print("Hardware connected and running correctly")
    
    def send_program(self, machine_code, clear_received = True):
        """runs the program on hardware

        Args:
            machine_code (str): machine code in common string representation
            clear_received (bool, optional): Clear stuff sent from hardware right before program was loaded. Defaults to True.
        """
        self.ser_connection.write(b"\xff") # send 0xff first to kill execution and start loading next program
        
        checksum = 0
        for line in machine_code.split("\n"):
            # check legality of machine code
            if len(line) != 6:
                raise SyntaxError("Illegal machine code line! it's not 6 long")
            if not line.isdigit():
                raise SyntaxError("Illegal machine code line! it's not a number")
            
            # send it to hardware
            to_send = line[:2], line[2:4], line[4:] # split into three parts for hardware
            for number in to_send:
                checksum += int(number) # doesn't matter if we do modulo 100 every time or just in the end
                                        # so not doing it here
                self.ser_connection.write(int(number).to_bytes(1, 'big')) # big or little doesn't matter - one byte 

        checksum = checksum % (1 << 8) # do modulo of one byte, that's how the checksum is calculated on the hardware

        if (clear_received):
            self.ser_connection.reset_input_buffer() # clear the input buffer as the program hasn't started yet
            
        # send done command
        self.ser_connection.write(b'\xfe')
        
        print(f"sent program to hardware. checksum should be: {hex(checksum)}")
        
        dat = self.ser_connection.read(1)
        print("received checksum:", dat, hex(int.from_bytes(dat, 'big'))) # byte order doesn't matter - one byte
        if checksum == int.from_bytes(dat, 'big'): # byte order doesn't matter - one byte
            print("Checksum matches")
        else:
            raise RuntimeError("Checksum failed to match!! Try again? Maybe Restart server?")

    def run_next(self):
        next = self.queue.pop(0) # get and remove first in queue
        
        if len(self.queue) > 0:
            self.max_runtime = self.queued_max_runtime
        else:
            self.max_runtime = self.default_max_runtime
        
        # tell all other people in queue of their new position
        for i, (client_socket, aes_key, _) in enumerate(self.queue):
            print_to_client(client_socket, aes_key, f"Position in Queue: {i+1}")
        
        # actually start running
        self.handle_running_program(*next)

    def handle_running_program(self, client_socket, aes_key, machine_code):
        self.running = True
        print_to_client(client_socket, aes_key, "Program has begun running on hardware!")
        
        try:
            self.send_program(machine_code)
        except SyntaxError as err:
            print_to_client(client_socket, aes_key, "Error: "+err.msg)
            # restart thread
            threading.Thread(target=client_communication_thread, args=(client_socket, self, aes_key, machine_code), daemon=True).start()
            return # no use in trying to run
        except RuntimeError as err:
            print_to_client(client_socket, aes_key, "Unkown server side error while sending program: "+str(err))
            disconnect_from_client(client_socket, aes_key) # stop the client
            raise err # stop
            
        start_time = time.time() # immediately after loading the program, so we time execution time
        
        last_ping = time.time()
        
        while time.time() - start_time < self.max_runtime:
            if time.time() - last_ping > 1: # more than a second since last ping
                if protocol.is_socket_closed(client_socket):
                    print("Client killed by disconnecting. stopping execution")
                    break
                last_ping = time.time()
        
            
            hardware_first_byte = self.ser_connection.read(1)
            
            if len(hardware_first_byte) < 1: # nothing was sent this time
                continue # nothing to do
            
            try:
                if hardware_first_byte[0] & 0x80: # command of some sort if MSB is on.
                    
                    if hardware_first_byte[0] & 0xf0 == 0x80: # it's an input command
                        while True: # keep asking for input until it's legal
                            match hardware_first_byte[0]:
                                case 0x80:
                                    try:
                                        input_value = input_from_client(client_socket, aes_key, "Hardware waiting for one char of input: ")
                                    except RuntimeError:
                                        print("Client killed by disconnecting. stopping execution")
                                        self.max_runtime = 0 # so we stop running completely
                                        break
                                    
                                    if len(input_value) != 1:
                                        print_to_client(client_socket, aes_key, "More than one character was given, inputting first of them")
                                    
                                    try:
                                        to_send = input_converter(0, input_value)
                                    except SyntaxError:
                                        print_to_client(client_socket, aes_key,"Error: Not representable by char set! (is it even in ascii?)")
                                    else:
                                        self.ser_connection.write(to_send.to_bytes(1, 'big'))
                                        break
                                
                                case 0x81:
                                    try:
                                        input_value = input_from_client(client_socket, aes_key, "Hardware waiting for a line of input: ")
                                    except RuntimeError:
                                        print("Client killed by disconnecting. stopping execution")
                                        self.max_runtime = 0 # so we stop running completely
                                        break
                                    
                                    try:
                                        to_send = input_converter(2, input_value)
                                    except SyntaxError:
                                        print_to_client(client_socket, aes_key,"Error: Not representable by char set! (is it even in ascii?)")
                                    else:
                                        self.ser_connection.write(to_send)
                                        break
                                
                                case 0x82:
                                    try:
                                        input_value = input_from_client(client_socket, aes_key, "Hardware waiting for a number input: ")
                                    except RuntimeError:
                                        print("Client killed by disconnecting. stopping execution")
                                        self.max_runtime = 0 # so we stop running completely
                                        break
                                    
                                    try:
                                        to_send = input_converter(1, input_value)
                                    except ValueError:
                                        print_to_client(client_socket, aes_key,"Error: Not a number")
                                    else:
                                        if to_send > 999999 or to_send < 0:
                                            print_to_client(client_socket, aes_key,"Error: Number must be in range 0-999999")
                                        else:
                                            self.ser_connection.write(split_into_bytes(to_send))
                                            break
                                
                                case 0x83:
                                    try:
                                        input_value = input_from_client(client_socket, aes_key, "Hardware waiting for list of numbers as input: ")
                                    except RuntimeError:
                                        print("Client killed by disconnecting. stopping execution")
                                        self.max_runtime = 0 # so we stop running completely
                                        break
                                    
                                    
                                    try:
                                        to_send = input_converter(3, input_value)
                                    except ValueError:
                                        print_to_client(client_socket, aes_key,"Error: Not a valid list of numbers")
                                    else:
                                        for number in to_send:
                                            if number > 999999 or number < 0:
                                                print_to_client(client_socket, aes_key,"Error: Numbers must be in range 0-999999")
                                                break
                                        else: # all were in range
                                            for number in to_send:
                                                self.ser_connection.write(split_into_bytes(number))
                                            break
                                
                                case 0x84:
                                    print_to_client(client_socket, aes_key,"Warning: Waiting input not implemeneted, returned 0.")
                                    self.ser_connection.write(0)
                                    break
                                
                            print_to_client(client_socket, aes_key,"Try again.")
                    
                    elif hardware_first_byte[0] & 0xf0 == 0x90: # it's printing numbers
                        if hardware_first_byte[0] == 0x90: # only one number
                            # keep getting input until we are at 3, needed because of timeout
                            decimal_number = b""
                            while len(decimal_number) < 3:
                                decimal_number += self.ser_connection.read(3 - len(decimal_number))

                            # convert it
                            number = decimal_number[0]*10000 + decimal_number[1]*100 + decimal_number[2]
                            print_to_client(client_socket, aes_key,str(number))
                        
                        elif hardware_first_byte[0] == 0x91: # list of numbers
                            # keep getting input until we have null terminator, needed because of timeout
                            decimal_numbers = b""
                            while decimal_numbers[-3:] != b"\0\0\0": # triple null terminator because it's a whole word
                                decimal_numbers += self.ser_connection.read_until(b"\0\0\0")
                            
                            # convert it
                            decimal_numbers = decimal_numbers[:-3] # cut off null terminator
                            to_print = []
                            for i in range(len(decimal_numbers)//3): # convert each number seperately
                                number = decimal_numbers[3*i]*10000 + decimal_numbers[3*i + 1]*100 + decimal_numbers[3*i + 2]
                                to_print.append(str(number))

                            print_to_client(client_socket, aes_key,"["+", ".join(to_print)+"]") # print as a list
                    
                    elif hardware_first_byte[0] & 0xf0 == 0xf0: # it's an exception
                        match hardware_first_byte[0]:
                            # runtime exceptions
                            case 0xf0:
                                print_to_client(client_socket, aes_key,"Error: Unkown opcode was reached.")
                            case 0xf1:
                                print_to_client(client_socket, aes_key,"Error: Unkown register was reached.")
                            case 0xf2:
                                print_to_client(client_socket, aes_key,"Error: Unkown syscall number was reached.")
                            case 0xff:
                                elapsed = time.time() - start_time
                                print_to_client(client_socket, aes_key,f"Program ended in {elapsed:.5f} seconds.")
                                
                        
                        break # we have ended execution
            
                else: # just a regular char
                    if hardware_first_byte[0] != 0: # ignore the null-terminator
                        print_to_client(client_socket, aes_key, reverse_char_representation(hardware_first_byte[0]),end="")
            except (ConnectionResetError, BrokenPipeError):
                print("Client disconnected. stopping execution")
                break
            
        self.running = False
        
        # recreate client thread, so they can continue running
        threading.Thread(target=client_communication_thread, args=(client_socket, self, aes_key, machine_code), daemon=True).start()
        # run next in queue if it's there
        if len(self.queue) > 0:
            if not self.running: # here in case somehow in that short span, a thread ran add_to_queue and started running
                self.run_next() # recursive, not great, but it's fine for a few thousand users in queue so i won't worry about it right now


    def add_to_queue(self, client_socket, aes_key, machine_code):
        # add to queue
        self.queue.append((client_socket, aes_key, machine_code))
        
        # notify them of queue position
        print_to_client(client_socket, aes_key, f"Position in Queue: {len(self.queue)}")
        
        if len(self.queue) > 0:
            self.max_runtime = self.queued_max_runtime
        else:
            self.max_runtime = self.default_max_runtime
        
        # run next waiting person in queue if relevant
        if not self.running:
            self.run_next()


#       UTILITY FUNCTIONS
def print_to_client(sock: socket.socket, aes_key: bytes, message: bytes | str, end=b"\n"):
    if type(message) is str:
        message = message.encode("utf-8")
    if type(end) is str:
        end = end.encode("utf-8")
    
    protocol.send_encrypted_message(sock, aes_key, b"print")
    protocol.send_encrypted_message(sock, aes_key, message+end)

def input_from_client(sock: socket.socket, aes_key: bytes, prompt: bytes | str) -> bytes:
    if type(prompt) is str:
        prompt = prompt.encode("utf-8")
    protocol.send_encrypted_message(sock, aes_key, b"input")
    protocol.send_encrypted_message(sock, aes_key, prompt)
    return protocol.get_encrypted_message(sock, aes_key)

def ask_for_file_from_client(sock: socket.socket, aes_key: bytes, prompt: bytes | str) -> bytes:
    if type(prompt) is str:
        prompt = prompt.encode("utf-8")
    protocol.send_encrypted_message(sock, aes_key, b"file-picker")
    protocol.send_encrypted_message(sock, aes_key, prompt)
    return protocol.get_encrypted_message(sock, aes_key)

def disconnect_from_client(sock: socket.socket, aes_key: bytes):
    protocol.send_encrypted_message(sock, aes_key, b"stop")


# functions to print and read input from sim or hardware and return the string to print
def split_into_bytes(number: int) -> bytes:
    """given a number it splits it into a bytes string of length 3. MUST be in range 0-999999

    Args:
        number (int): the number to split
    """
    number_parts = [
        number // 10000,
        (number // 100)%100,
        number%100
    ]
    return b"".join(a.to_bytes(1, 'big') for a in number_parts)

def reverse_char_representation(number):
    """given a number in the special char representation, it converts it back to a normal string.

    Args:
        char (int): a number
        
    Returns:
        normal string representation of that char
    """
    
    special_translations = {
        0: 0,
        96: 13, # \r
        97: 10, # \n
        98: 9, # \t
        99: 7, # BEL
    }
    
    if number > 99 or number < 0:
        raise ValueError("Representation only covers numbers in range 0-99")
    
    if number in special_translations:
        return chr(special_translations[number])
    
    return chr(number + 31)

def runner_print(print_type, values: bytes | list):
    match print_type:
        case 0:
            if values == b'\xff':
                return "Program Ended."
            elif values == b'\xf0':
                return "Error: Unkown opcode"
            elif values == b'\xf1':
                return "Error: Unkown register"
            elif values == b'\xf2':
                return "Error: Unkown syscall number"
            
            return "".join(reverse_char_representation(char) for char in values)
        case 1:
            if values[-1] == 0: # remove null terminator
                values = values[:-1]
            return ", ".join(str(number) for number in values)
        case _:
            raise ValueError(f"Unkown {print_type=}, expects 0 or 1")

def input_converter(input_type, input_value):
    match input_type:
        case 0:
            return tools.assembler.char_representation(input_value[0])
        case 1:
            result = int(input_value)
            if result < 0 or result > 999999:
                raise ValueError(f"Number was outside of range 0-999999")
            return result
        case 2:
            return b"".join(tools.assembler.char_representation(char).to_bytes(1,'big') for char in input_value)+b"\0"
        case 3:
            if input_value.strip() == b"": # empty line
                return [0]
            split_input = re.split(b'[, \t]+', input_value.strip())
            results = [int(val) for val in split_input] + [0] # add null terminator to the end
            for res in results:
                if res < 0 or res > 999999:
                    raise ValueError(f"Number was outside of range 0-999999")
            return results
        case 4:
            return 0 # not implemented, so always nothing is waiting
        case _:
            raise ValueError(f"Unkown {input_type=}, expects 0-4")

def client_input_getter(sock: socket.socket, aes_key: bytes, input_type):
    prompts = (
        "Program asking for one char: ",
        "Program asking for a number: ",
        "Program asking for line of input: ",
        "program asking for list of number: ",
        None
    )
    prompt = prompts[input_type]
    if prompt is None:
        return 0 # not implemented, so always nothing is waiting
    
    while True:
        try:
            return input_converter(input_type, input_from_client(sock, aes_key, prompt))
        except (ValueError, SyntaxError):
            print_to_client(sock, aes_key, "Invalid input. try again.")

documentation = """List of commands
---------------------------
docs: get these docs
instruction docs: get the documentation on the instruction set
                  and how to write machine code or assembly for
                  this processor.
assembly docs: get the documentation for how to use labels and
               other similar assembly features.

asm file: given an assembly file in yuda's assembly format,
          it will be assembled and the machine code returned
machine code: given a machine code file, which is just a file
              where each line is a 6 digit number, and there
              is no extra line in the end.

run sim: run the last machine code from either of the last two
         commands, in an interactive simulation
run hardware: same, but run on actual physical hardware, you
              may need to wait in a queue though.

exit: exit the program

you can press Ctrl+C at any point to kill the program.
"""
# thread that does everything
def client_communication_thread(client_socket, hardware: HardwareManager, aes_key=None, last_machine_code=None):
    """
    Handles the communication with a client in a separate thread.
    Can be given aes_key to start from middle, or if not given, it starts a new connection by getting an aes key from the client.

    Args:
        client_socket (socket.socket): The client socket object.
        aes_key (bytes, optional): The AES encryption key. Defaults to None.
                                    if it is none, a handshake is done to get one
        hardware (HardwareManager): The hardware manager to hand control over to if trying to run program on hardware
        last_machine_code (str): The machine code to run if user asks to run somewhere. None requires user to provide it
        
    Returns:
        None
    """
    if aes_key is None:
        aes_key = protocol.server_side_handshake(client_socket)
        print_to_client(client_socket, aes_key, "Welcome to the interactive yuda's-assembly runner!")

    while True:
        if protocol.is_socket_closed(client_socket):
            print("Client disconnected with KeyboardInterrupt")
            break
        
        try:
            user_command = input_from_client(client_socket, aes_key, "Select a command ('docs' for documentation): ").decode('utf-8')
            match user_command.lower(): # we're case insensitive
                case "docs":
                    print_to_client(client_socket, aes_key, documentation)
                
                case "instruction docs":
                    with open("hardware/instruction set details.txt", "r") as f:
                        docs = f.read()
                    print_to_client(client_socket, aes_key, docs)
                
                case "assembly docs":
                    with open("tools/assembly_details.txt", "r") as f:
                        docs = f.read()
                    print_to_client(client_socket, aes_key, docs)
                
                case "asm file": # assemble file
                    asm_file = ask_for_file_from_client(client_socket, aes_key, "file to assemble: ").decode("utf-8")
                    try:
                        machine_code = tools.assembler.assemble(asm_file)
                    except SyntaxError as err:
                        print_to_client(client_socket, aes_key, "Error: "+err.msg)
                    else:
                        print_to_client(client_socket, aes_key, "Success! Machine code is\n"+machine_code+
                                        "\nIf you want to replace this, run 'machine code' command")
                        
                        last_machine_code = machine_code

                case "machine code":
                    last_machine_code = ask_for_file_from_client(client_socket, aes_key, "machine code file: ").decode("utf-8")
                    print_to_client(client_socket, aes_key, "Successfully updated machine code. it is now:\n"+last_machine_code)
                    
                
                case "run sim":
                    if last_machine_code is None:
                        print_to_client(client_socket, aes_key, "Error: no machine code to run")
                        continue
                    start_time = time.time()
                    try:
                        tools.simulator.simulate_numerical(
                            last_machine_code,
                            lambda print_type, to_print: print_to_client(client_socket, aes_key, runner_print(print_type, to_print)),
                            lambda input_type: client_input_getter(client_socket, aes_key, input_type),
                            lambda: not protocol.is_socket_closed(client_socket) # fast enough to not affect runtime
                        )
                    except RuntimeError:
                        print("Client killed by disconnecting. stopping execution of simulation")
                        break
                    
                    except ValueError:
                        print_to_client(client_socket, aes_key, "Error: machine code was illegal")
                        continue
                        
                    elapsed = time.time() - start_time
                    print_to_client(client_socket, aes_key, f"Program in simulation completed in {elapsed:.5f} seconds")
                
                case "run hardware":
                    if last_machine_code is None:
                        print_to_client(client_socket, aes_key, "Error: no machine code to run")
                        continue
                    hardware.add_to_queue(client_socket, aes_key, last_machine_code)
                    return # we're waiting in the queue, this thread can stop now, the hardware manager will handle everything now.
                
                case "exit":
                    print("Client disconnected")
                    break
                
                case _:
                    print_to_client(client_socket, aes_key, "Unkown command. try again")
        
        except (ConnectionResetError, BrokenPipeError, RuntimeError): # client disconnected in the middle
            print("Client disconnected in the middle of command, stopping.")
            break
    try:
        disconnect_from_client(client_socket, aes_key)
        
    except (ConnectionResetError, BrokenPipeError):
        pass # if they disconnected we don't care at this point


# dispatches threads whenever clients connect
def main():
    hardware = HardwareManager()
    
    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    
    # set SO_REUSEADDR option. this allows us to rerun the server immediately after closing, even
    # on computers that don't free the port right after running.
    server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    
    server_socket.bind(('0.0.0.0', 8800)) # not localhost, so it can accept traffic from lan
    server_socket.listen(1)
    print("Server listening...")
    
    while True:
        client_socket, addr = server_socket.accept()
        print("Client connected:", addr)

        threading.Thread(target = client_communication_thread, args = (client_socket, hardware), daemon = True).start()


if __name__ == "__main__":
    main()

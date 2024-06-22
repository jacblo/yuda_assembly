import cli.protocol as protocol
import socket
import threading
import tools.assembler, tools.simulator
import time

#       UTILITY FUNCTIONS
def print_to_client(sock: socket.socket, aes_key: bytes, message: bytes | str):
    if type(message) is str:
        message = message.encode("utf-8")
    protocol.send_encrypted_message(sock, aes_key, b"print")
    protocol.send_encrypted_message(sock, aes_key, message)

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

# functions to print and read input from sim or hardware and return the string to print
def runner_print(print_type, values: bytes | list):
    match print_type:
        case 0:
            if values == b'\xff':
                return "Program Ended."
            return "".join(reverse_char_representation(char) for char in values)
        case 1:
            return ", ".join(str(number) for number in values)
        case _:
            raise ValueError(f"Unkown {print_type=}, expects 0 or 1")

def input_converter(input_type, input_value):
    match input_type:
        case 0:
            return tools.assembler.char_representation(input_value[0])
        case 1:
            return int(input_value)
        case 2:
            return b"".join(tools.assembler.char_representation(char).to_bytes(1,'big') for char in input_value)
        case 3:
            split_input = input_value.split((',', ' ', '\t'))
            return [int(val) for val in split_input]
        case 4:
            return 0 # not implemented, so always nothing is waiting
        case _:
            raise ValueError(f"Unkown {input_type=}, expects 0-4")


documentation = """Documentation
-------------------------

"""
# thread that does everything
def client_communication_thread(client_socket):
    aes_key = protocol.server_side_handshake(client_socket)

    last_machine_code = None
    print_to_client(client_socket, aes_key, "Welcome to the interactive yuda's-assembly runner!")
    while True:
        user_command = input_from_client(client_socket, aes_key, "Select a command ('docs' for documentation): ").decode('utf-8')
        match user_command.lower(): # we're case insensitive
            case "docs":
                print_to_client(client_socket, aes_key, documentation)
            case "asm file": # assemble file
                asm_file = ask_for_file_from_client(client_socket, aes_key, "file to assemble: ").decode("utf-8")
                try:
                    machine_code = tools.assembler.assemble(asm_file)
                except SyntaxError:
                    print_to_client(client_socket, aes_key, "Error: "+SyntaxError.msg)
                else:
                    print_to_client(client_socket, aes_key, "Success! Machine code is\n"+machine_code+
                                    "\nIf you want to replace this, run 'machine code' command")
                    
                    last_machine_code = machine_code

            case "machine code":
                last_machine_code = ask_for_file_from_client(client_socket, aes_key, "machine code file: ").decode("utf-8")
                print_to_client(client_socket, aes_key, "Successfully updated machine code. it is now:\n"+last_machine_code)
                
            
            case "run sim":
                start_time = time.time()
                tools.simulator.simulate_numerical(
                    last_machine_code,
                    lambda a,b: print_to_client(client_socket, aes_key, runner_print(a,b)),
                    lambda a: input_converter(a, input_from_client(client_socket, aes_key, "Program asking for input: "))
                )
                elapsed = time.time() - start_time
                print_to_client(client_socket, aes_key, f"Program in simulation completed in {elapsed} seconds")
            
            case "exit":
                print()
                break
    disconnect_from_client(client_socket, aes_key)


# dispatches threads whenever clients connect
def main():
    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    
    # set SO_REUSEADDR option. this allows us to rerun the server immediately after closing, even
    # on computers that don't free the port right after running.
    server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    
    server_socket.bind(('localhost', 8800))
    server_socket.listen(1)
    print("Server listening...")
    
    while True:
        client_socket, addr = server_socket.accept()
        print("Client connected:", addr)

        threading.Thread(
            target = client_communication_thread, args = (client_socket,), daemon = True
        ).start()


if __name__ == "__main__":
    main()

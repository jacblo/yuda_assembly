"""
This module is used to simulate the execution of base 10 machine code for the base 10 processor.
If the file is run directly - expects a command line argument of the file path to the machine code.
"""
MEMSIZE = 100

def chunks(lst, n):
    """Yield successive n-sized chunks from lst.
    this code is from stackoverflow - https://stackoverflow.com/a/312464/14103406"""
    for i in range(0, len(lst), n):
        yield lst[i:i + n]

def decode_instruction(opcode, operand1, operand2):
    """given 3 parts of instruction, outputs what to do as tuple
    
    Args: 
        opcode, operand1, operand2: the instruction
        
    Returns:
        (mem_write, reg_write, reg_read1, reg_read2, write_reg, address, is_ptr,
        ptr_reg_output_selector, is_jmp, requires_less, requires_greater, requires_eq, requires_ne,
        alu_A,alu_B, alu_op, store_cmp_flags, is_syscall, is_ret, constant, unknown_op, unknown_reg)
    """
    ptr_reg_output_selector = 0
    reg_read1 = 0
    reg_read2 = 0
    write_reg = 0 
    address = 0
    alu_A = 0
    alu_B = 0
    alu_op = 0
    constant = 0

    mem_write = False
    reg_write = False
    is_ptr = False
    is_jmp = False
    requires_less = False
    requires_greater = False
    requires_eq = False
    requires_ne = False
    store_cmp_flags = False
    is_syscall = False
    is_ret = False
    unknown_op = False
    unknown_reg = False

    internal_reg1 = 0
    internal_reg2 = 0
    internal_unknown_reg1 = 0
    internal_unknown_reg2 = 0

    # prep
    match operand1:
        case 1: internal_reg1 = 0
        case 2: internal_reg1 = 1
        case 99: internal_reg1 = 2
        case _:
            internal_unknown_reg1 = 1

    match operand2:
        case 1: internal_reg2 = 0
        case 2: internal_reg2 = 1
        case 99: internal_reg2 = 2
        case _:
            internal_unknown_reg2 = 1

    # actual decoding
    match opcode:
        case 0: is_ret = 1 # ret

        #      MOV operations
        case 1: # mov register, constant
            reg_write = True
            write_reg = internal_reg1
            unknown_reg = internal_unknown_reg1
            constant = operand2
            alu_A = 3 # send constant
            alu_op = 0 # output A

        case 2: # mov register, register
            reg_write = True
            write_reg = internal_reg1
            # if either register is illegal, the operation is illegal
            unknown_reg = internal_unknown_reg1 or internal_unknown_reg2
            reg_read1 = internal_reg2 # load from second register operand
            alu_A = 0 # send regData1
            alu_op = 0 # output A

        case 3: # mov register, memory
            reg_write = True
            write_reg = internal_reg1
            unknown_reg = internal_unknown_reg1
            address = operand2
            alu_A = 2 # send mem
            alu_op = 0 # output A

        case 4: # mov memory, constant
            address = operand1
            constant = operand2
            mem_write = 1
            alu_A = 3 # send constant
            alu_op = 0 # output A

        case 5: # mov memory, register
            address = operand1
            mem_write = 1
            unknown_reg = internal_unknown_reg2
            reg_read1 = internal_reg2
            alu_A = 0 # send regData1
            alu_op = 0 # output A

        

        #      ADD operations
        case 6: # add register, constant
            reg_write = True
            write_reg = internal_reg1
            unknown_reg = internal_unknown_reg1
            constant = operand2
            reg_read1 = internal_reg1
            alu_A = 0 # send regData1
            alu_B = 3 # send constant
            alu_op = 1 # A + B
            store_cmp_flags = 1

        case 7: # add register, register
            reg_write = True
            write_reg = internal_reg1
            # if either register is illegal, the operation is illegal
            unknown_reg = internal_unknown_reg1 or internal_unknown_reg2
            reg_read1 = internal_reg1
            reg_read2 = internal_reg2
            alu_A = 0 # send regData1
            alu_B = 1 # send regData2
            alu_op = 1 # A + B
            store_cmp_flags = 1


        #      CMP operations
        case 8: # cmp register, constant
            unknown_reg = internal_unknown_reg1
            constant = operand2
            reg_read1 = internal_reg1
            alu_A = 0 # send regData1
            alu_B = 3 # send constant
            alu_op = 3 # A - B
            store_cmp_flags = 1

        case 9: # cmp register, register
            # if either register is illegal, the operation is illegal
            unknown_reg = internal_unknown_reg1 or internal_unknown_reg2
            reg_read1 = internal_reg1
            reg_read2 = internal_reg2
            alu_A = 0 # send regData1
            alu_B = 1 # send regData2
            alu_op = 3 # A - B
            store_cmp_flags = 1


        #      JMP operations
        case 10: # jmp constant
            is_jmp = True
            constant = operand1
            alu_A = 3 # send constant
            alu_op = 0 # output A

        case 11: # jmp register
            is_jmp = True
            reg_read1 = internal_reg1
            unknown_reg = internal_unknown_reg1
            alu_A = 0 # send regData1
            alu_op = 0 # output A

        #      JE operations
        case 12: # je constant
            requires_eq = 1
            is_jmp = True
            constant = operand1
            alu_A = 3 # send constant
            alu_op = 0 # output A

        case 13: # je register
            requires_eq = 1
            is_jmp = True
            reg_read1 = internal_reg1
            unknown_reg = internal_unknown_reg1
            alu_A = 0 # send regData1
            alu_op = 0 # output A



        #              MY ADDITIONS TO THE ISA
        #      extra MOV operations
        case 14: # mov register, PTR [register] 
            reg_write = True
            write_reg = internal_reg1
            unknown_reg = internal_unknown_reg1 or internal_unknown_reg2
            is_ptr = True
            ptr_reg_output_selector = 0 # regData1 is address
            reg_read1 = internal_reg2
            alu_A = 2 # send mem
            alu_op = 0 # output A

        case 15: # mov PTR [register], register
            reg_read1 = internal_reg1
            is_ptr = True
            ptr_reg_output_selector = 0 # regData1 is address
            mem_write = 1
            unknown_reg = internal_unknown_reg1 or internal_unknown_reg2
            reg_read2 = internal_reg2
            alu_A = 1 # send regData2
            alu_op = 0 # output A


        #      SUB operations
        case 16: # sub register, register
            reg_write = True
            write_reg = internal_reg1
            # if either register is illegal, the operation is illegal
            unknown_reg = internal_unknown_reg1 or internal_unknown_reg2
            reg_read1 = internal_reg1
            reg_read2 = internal_reg2
            alu_A = 0 # send regData1
            alu_B = 1 # send regData2
            alu_op = 3 # A - B
            store_cmp_flags = 1

        case 17: # sub register, constant
            reg_write = True
            write_reg = internal_reg1
            unknown_reg = internal_unknown_reg1
            constant = operand2
            reg_read1 = internal_reg1
            alu_A = 0 # send regData1
            alu_B = 3 # send constant
            alu_op = 3 # A - B
            store_cmp_flags = 1

        case 18: # sub constant, register (still saves to register, just different order)
            reg_write = True
            write_reg = internal_reg2
            unknown_reg = internal_unknown_reg2
            constant = operand1
            reg_read1 = internal_reg2
            alu_A = 3 # send constant
            alu_B = 0 # send regData1
            alu_op = 3 # A - B
            store_cmp_flags = 1


        #      extra CMP operations
        case 19: # cmp constant, register
            unknown_reg = internal_unknown_reg2
            constant = operand1
            reg_read1 = internal_reg2
            alu_A = 3 # send constant
            alu_B = 0 # send regData1
            alu_op = 3 # A - B
            store_cmp_flags = 1


        #      extra JMP operations
        #  JNE
        case 20: # jne constant
            requires_ne = 1
            is_jmp = True
            constant = operand1
            alu_A = 3 # send constant
            alu_op = 0 # output A

        case 21: # jne register
            requires_ne = 1
            is_jmp = True
            reg_read1 = internal_reg1
            unknown_reg = internal_unknown_reg1
            alu_A = 0 # send regData1
            alu_op = 0 # output A

        #  JL
        case 22: # jl constant
            requires_less = 1
            is_jmp = True
            constant = operand1
            alu_A = 3 # send constant
            alu_op = 0 # output A

        case 23: # jl register
            requires_less = 1
            is_jmp = True
            reg_read1 = internal_reg1
            unknown_reg = internal_unknown_reg1
            alu_A = 0 # send regData1
            alu_op = 0 # output A

        #  JG
        case 24: # jg constant
            requires_greater = 1
            is_jmp = True
            constant = operand1
            alu_A = 3 # send constant
            alu_op = 0 # output A

        case 25: # jg register
            requires_greater = 1
            is_jmp = True
            reg_read1 = internal_reg1
            unknown_reg = internal_unknown_reg1
            alu_A = 0 # send regData1
            alu_op = 0 # output A


        case 26: # syscall
            is_syscall = 1
            constant = operand1 # stores the code for the syscall, handled seperately


        case _:
            unknown_op = 1

    return (mem_write, reg_write, reg_read1, reg_read2, write_reg, address, is_ptr,
        ptr_reg_output_selector, is_jmp, requires_less, requires_greater, requires_eq, requires_ne,
        alu_A,alu_B, alu_op, store_cmp_flags, is_syscall, is_ret, constant, unknown_op, unknown_reg)

def seek_until_zero(memory, starting_address, full_words) -> bytes:
    """
    Seeks until a zero value is found in the memory starting from the given starting address.
    
    Args:
        memory (list): The memory to search in. assumes all numbers are ints in range [0-999999]
        starting_address (int): The starting address to begin the search.
        full_words (bool): Indicates whether to consider full words or just last char in each.
    
    Returns:
        bytes: A byte representation of the memory section from the starting address until the first zero value.
    """
    if not full_words:
        memory = [a%100 for a in memory] # only look at right most two digits
    
    length = 0
    while starting_address+length<MEMSIZE:
        if memory[starting_address+length] == 0:
            break
        length += 1
    
    # cut out the section we need
    section = memory[starting_address:starting_address+length]+[0]
    
    # flatten if necessary
    if full_words:
        # seperate into list of two digit numbers in big endian (in base 10) format
        to_send = zip(
            (a//10000 for a in section),        # left two digits
            ((a//100)%100 for a in section),    # middle two digits
            (a%100 for a in section)            # right two digits
        )
    else:
        to_send = section # already in sets of two digits if it's not full_words
    
    # make into a set of bytes, we know numbers are in range 0-99 so can be one byte
    return b"".join(a.to_bytes(1, 'big') for a in to_send)

def write_into_mem(memory, starting_address, full_words, data):
    """
    Writes data into memory at the specified starting address.
    
    Args:
        memory (list): The memory to write into.
        starting_address (int): The starting address to begin writing.
        full_words (bool): Indicates whether to consider full words or just last char in each.
        data (bytes): The data to write into memory.
    """
    numbers = list(data)
    if full_words:
        to_write = []
        for chunk in chunks(numbers, 3):
            temp = 0
            multiplier = 1
            for number in reversed(chunk):
                temp += number * multiplier
                multiplier *= 100
            to_write.append(temp)
    else:
        to_write = numbers
    
    for i, number in enumerate(to_write):
        if starting_address+i >= MEMSIZE:
            break
        memory[starting_address+i] = number


def simulate_numerical(machine_code_str: str, print_callback, input_callback) -> None:
    """Simulates the execution of base 10 machine code for the base 10 processor. expects a bunch of
    lines, each one 6 digits in base 10. each line being one word in the machine code ofc.
    it does not handle converting of the character set, as it doesn't assume that i/o is characters.
    assumes that both callbacks always act correctly, doesn't check their inputs.

    Args:
        machine_code_str (str): the machine code input
        print_callback (function): when the processor prints somthing, it runs print_callback with
                                    a bytes object of the data to be output
        input_callback (function): when the processor wants input, it runs the input_callback with
                                    input_type= 0:input char, 1: input 3 chars=1 word, 2:input line, 
                                    3:input line of words, 4:check waiting input expects the result
                                    to be returned as a bytes object to be saved in memory.
                                    note that waiting input should be capped at 99, if there's more
                                    than that should still just be 99
    """
    # state
    memory = [0]*(MEMSIZE+1)    # +1 so if you load position 100 which is illegal you'll get 0 which
                                # will stop syscalls and also be the same as ret and stop the
                                # program if it gets to the end.

    registers = [0]*2 # ax and bx
    IP = 0 # instruction pointer
    last_cmp_result = 1 # simply the last alu_out where store_cmp_flags was 1. this is faster.
                        # starts at 1 because default before any changes is greater than, arbitrary
                        # but doesn't hurt to make hardware and simulator work the same.

    # load program
    for i, line in enumerate(machine_code_str.split("\n")):
        if not line.strip().isdigit():
            raise ValueError(f"line {i+1} wasn't a number")
        if len(line.strip()) != 6:
            raise ValueError(f"line {i+1} wasn't exactly 6 digits")
        
        memory[i] = int(line)

    # running
    while True:
        instruction = memory[IP] # assumed to be integer in range [0-999999]
        opcode = instruction//10000 # right most two digits
        operand1 = (instruction//100)%100 # middle two digits
        operand2 = instruction%100 # right two digits

        (mem_write, reg_write, reg_read1, reg_read2, write_reg, address, is_ptr,
        ptr_reg_output_selector, is_jmp, requires_less, requires_greater, requires_eq, requires_ne,
        alu_A,alu_B, alu_op, store_cmp_flags, is_syscall, is_ret, constant, unknown_op, 
        unknown_reg) = decode_instruction(opcode, operand1, operand2)
        
        # return
        if is_ret:
            print_callback(b'\xff')
            break
        
        # syscall
        unknown_syscall = False
        if is_syscall:
            match constant:
                case 0: # send char to host (computer that's connected) (AX is address to send)
                    to_send = memory[registers[0]] % 100 # load the right two digits of mem[AX]
                    print_callback(to_send.to_bytes(1, 'big')) # mod 100 so we know it can be in one byte
                    
                case 1: # wait to receive a char from host (computer that's connected) (AX is address to save in)
                    data = input_callback(0)
                    memory[registers[0]] = data[0]
                    
                case 2: # send null terminated string to host (AX is the address to send)
                    to_send = seek_until_zero(memory, registers[0], False)
                    print_callback(to_send)
                
                case 3: # receive null-terminated char string from host (AX is address to write to) 
                    data = input_callback(2)
                    write_into_mem(memory, registers[0], False, data)
                
                case 4: # send word to host (AX is address to send)
                    word = memory[registers[0]] # load mem[AX]
                    to_send = (word//10000, (word//100)%100, word%100)
                    print_callback(b"".join(a.to_bytes(1, 'big') for a in to_send))
                    
                case 5: # wait to receive word from host (AX is address to save in)
                    data = input_callback(1)
                    word = data[0]*10000 + data[1]*100 + data[0]
                    memory[registers[0]] = word
                    
                case 6: # send null terminated string of whole words to host (AX is the address to send)
                    to_send = seek_until_zero(memory, registers[0], True)
                    print_callback(to_send)
                    
                case 7: # receive null-terminated string of whole words from host (AX is address to write to)
                    data = input_callback(2)
                    write_into_mem(memory, registers[0], True, data)
                
                case 8: # check if there's a word waiting to be received (AX is address to write result to)
                    data = input_callback(4)
                    memory[registers[0]] = data[0]
                
                case _:
                    unknown_syscall = True
            
        # exceptions
        if unknown_op:
            print_callback(b'\xf0')
            break
        if unknown_reg:
            print_callback(b'\xf1')
            break
        if unknown_syscall:
            print_callback(b'\xf2')
            break
        
        
        # reg loading
        data1 = 0
        data2 = 0
        if reg_read1 == 2:
            data1 = IP
        else:
            data1 = registers[reg_read1]
        
        if reg_read2 == 2:
            data2 = IP
        else:
            data2 = registers[reg_read2]
        
        # mem loading
        if is_ptr:
            if ptr_reg_output_selector:
                address = data2
            else:
                address = data1

        mem_read_data = memory[address]
        
        # alu
        alu_A_value = 0
        alu_B_value = 0
        
        match alu_A:
            case 0:
                alu_A_value = data1
            case 1:
                alu_A_value = data2
            case 2:
                alu_A_value = mem_read_data
            case 3:
                alu_A_value = constant
        
        match alu_B:
            case 0:
                alu_B_value = data1
            case 1:
                alu_B_value = data2
            case 2:
                alu_B_value = mem_read_data
            case 3:
                alu_B_value = constant
        
        
        alu_out = 0
        match alu_op:
            case 0 | 2:
                alu_out = alu_A_value
            case 1:
                alu_out = alu_A_value + alu_B_value
            case 3:
                alu_out = alu_A_value - alu_B_value
        alu_out = alu_out % 1_000_000 # 6 digits of decimal means math mod 1 million
        
        if store_cmp_flags:
            last_cmp_result = alu_out
        
        # saving
        if mem_write:
            memory[address] = alu_out
        
        if reg_write:
            if write_reg == 2:
                IP = alu_out % 100 # right most two digits
            else:
                registers[write_reg] = alu_out

        # jmp
        if is_jmp:
            satisfied = 1
            if (requires_less):
                if (last_cmp_result >= 0): satisfied = 0
            elif (requires_greater):
                if (last_cmp_result <= 0): satisfied = 0
            elif (requires_eq):
                if (last_cmp_result != 0): satisfied = 0
            elif (requires_ne):
                if (last_cmp_result == 0): satisfied = 0
            
            if satisfied:
                IP = alu_out % 100 # right most two digits
            else:
                IP += 1
        else:
            IP += 1
    
    return memory, registers, IP


if __name__ == "__main__":
    import sys

    if len(sys.argv) != 2:
        print("Usage: python simulator.py <machine code file>")

    else:
        with open(sys.argv[1], 'r') as file:
            machine_code = file.read()
            
            # this testing env doesn't support text that's waiting and such.
            _, regs, _ = simulate_numerical(machine_code, print, lambda _: input(": "))
            print("AX =", str(regs[0]).zfill(6))

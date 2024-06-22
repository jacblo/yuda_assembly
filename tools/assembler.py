"""
This module is used to assemble assembly files into base 10 machine code in the yuda_assembly
format.
If this file is run by itself, it expects to get two command line arguments of source and
destination file paths respectively.

All errors raised for mistakes in the assembly are SyntaxErrors.
Of course their error message is in the msg field.
"""
import sys
import re
from ast import literal_eval # used to interpret strings and chars just like python for simplicity

def char_representation(char, line=None):
    """
    Converts a character into a number using the special character set.

    Args:
        char (str): The character to be converted. expects one char.
        line (int, optional): For error reporting

    Returns:
        int: The numerical representation of the character.
    """
    special_translations = {
        0: 0,
        13: 96, # \r
        10: 97, # \n
        9: 98, # \t
        7: 99, # BEL
    }
    
    ascii = ord(char)
    if ascii > 126: # not in ascii, and 0x7f isn't printable either
        raise SyntaxError(f"Character isn't part of character set. line {line}")
    if ascii in special_translations:
        return special_translations[ascii]
    output = ascii - 31 # removes all unprintable chars.
    if output > 0:
        return output
    raise SyntaxError(f"Character isn't part of character set. line {line}")


class Token:
    """
    Represents a token in the assembly language.

    Attributes:
        string (str): The string of the token.
        kind (str): The type of token.
        value (optional): The value of the token, such as the value of a number.
        line (optional): The line number associated with the token for error reporting.
    """
    
    def __init__(self, string: str, kind: str, value=None, line=None):
        self.string = string    # string of the token
        self.kind = kind        # type of token
        self.value = value      # value of the token, such as value of number
        
        # for error reporting, this is stored with each token
        self.line = line

    def __eq__(self, other):
        if not isinstance(other, Token):
            # don't attempt to compare against unrelated types
            return NotImplemented

        # kind and value must be the same.
        return (self.kind == other.kind and self.value == other.value)

    def __repr__(self):
        return f'Token({self.kind}, {self.string!r}, value {self.value!r}, line {self.line})'


def tokenize_line(code, line_num=None):
    """
    The tokenize_line function takes a line of assembly and returns an iterator over the tokens in
    that line.
    
    Args:
        code: Pass the code to be tokenized
        line_num (optional): Keep track of the line number in case an error occurs
    
    Returns:
        A generator that yields a token object for each token in the line
    """
    token_specification = [
        ('CHAR',        r"'[^']+'"), # char
                    # any format of a number that's not in a label, and isn't badly formed
        ('NUMBER',      r'(?<![A-Z_\d])((0x[0-9a-f_]+)|(0b[01_]+)|([\d]+[\d_]*))(?![bx])'),
        ('COMMA',       r','),
        ('SEMICOLON',   r';'),
        ('COLON',       r':'),
        ('BRACKET',     r'[\[\]]'),    # [ or ]
        ('REGISTER',    r'(?<![A-Z_\d])([AB]X|IP)(?![A-Z_\d])'), # register that's not in a label 
        ('NAME',        r'(?<!\d)[A-Z_]+[\w\d_]*'), # starts with letter or _, then has those or
                                                    # digits. may not start right after digit
        ('SKIP',        r'[ \t]+'), # ignore whitespace
        ('MISMATCH',    r'.+'), # anything else, the + is so it's in chunks not one char at a time
    ]
    tok_regex = '|'.join(f'(?P<{name}>{pattern})' for name, pattern in token_specification)
    
    for mo in re.finditer(tok_regex, code, re.IGNORECASE):
        kind = mo.lastgroup
        string = mo.group()
        value = None
        if kind == 'SEMICOLON':
            break # everything after this is comment and is to be ignored
        elif kind == 'CHAR':
            kind = 'NUMBER'
            value = char_representation(literal_eval(string))
        elif kind == 'NUMBER':
            if 'b' in string:
                value = int(string[2:], 2)
            elif 'x' in string:
                value = int(string[2:], 16)
            else:
                value = int(string)
        elif kind == 'REGISTER':
            match string.upper():
                case "AX":
                    value = 1
                case "BX":
                    value = 2
                case "IP":
                    value = 99
        elif kind == 'SKIP':
            continue
        elif kind == 'MISMATCH':
            raise SyntaxError(f'{string!r} unexpected on line {line_num}')
        yield Token(string, kind, value, line_num)


# list of all names of instructions
INSTRUCTION_TYPES = { # a set for speed of searching, also order doesn't matter
    "RET", "MOV", "ADD", "CMP", "JMP", "JE", "SUB", "JNE", "JL", "JG", "SYSCALL"
}

def is_numberlike(token):
    """if a token is a number, ofc it's numberlike, if it's a name that's not protected, the it may
    be a label that can be interpreted as a number, so it's labellike

    Args:
        token (Token): the token to check
    """
    if token.kind == "NUMBER":
        return True
    if token.kind == "NAME":
        if token.string.upper() not in INSTRUCTION_TYPES and token.string.upper() != "PTR":
            return True
    return False


def assemble(assembly_string: str) -> str:
    """Assembles <assembly_string> into base 10 machine code for yuda's assembly.

    Args:
        assembly_string (str): the program to assemble
    Returns:
        a string representing the base 10 machine code, every line is a new instruction, each line
        is always exactly 6 digits in base 10. There are no blank lines, no extraneous whitespace,
        and no trailing newline.
    """

    # every item here is (<instruction name>, <arg1 type>, <arg2 type>)
    # of course the arguments are optional. the argument types are as follows:
    # CONST: some number, char, or label, REG: register, MEM: constant mem address, PTR: mem pointer
    opcode_table = {
        ("RET",): 0,
        ("MOV", "REG", "CONST"): 1,
        ("MOV", "REG", "REG"): 2,
        ("MOV", "REG", "MEM"): 3,
        ("MOV", "MEM", "CONST"): 4,
        ("MOV", "MEM", "REG"): 5,
        ("ADD", "REG", "CONST"): 6,
        ("ADD", "REG", "REG"): 7,
        ("CMP", "REG", "CONST"): 8,
        ("CMP", "REG", "REG"): 9,
        ("JMP", "CONST"): 10,
        ("JMP", "REG"): 11,
        ("JE", "CONST"): 12,
        ("JE", "REG"): 13,
        ("MOV", "REG", "PTR"): 14,
        ("MOV", "PTR", "REG"): 15,
        ("SUB", "REG", "REG"): 16,
        ("SUB", "REG", "CONST"): 17,
        ("SUB", "CONST", "REG"): 18,
        ("CMP", "CONST", "REG"): 19,
        ("JNE", "CONST"): 20,
        ("JNE", "REG"): 21,
        ("JL", "CONST"): 22,
        ("JL", "REG"): 23,
        ("JG", "CONST"): 24,
        ("JG", "REG"): 25,
        ("SYSCALL", "CONST"): 26,
    }
    
    
    lines = assembly_string.split("\n")
    output_lines = []
    
    labels = {} # list of labels and their addresses in the shape <label name>: <address>
    unhandled_labels = {}   # labels that point forward, are dealt with after finishing parsing.
                            # shape: (<address>, <position in line>): (<label name>, <line number>)
    
    # first pass - parsing and most codegen
    current_address = 0
    for line_idx, line in enumerate(lines):
        if current_address > 99:
            raise SyntaxError(
                "Program too long. only 100 addresses exist, so that's the length limit on programs"
            )
        
        # line traits
        instruction_not_number = None   # True means the line is an instruction, False means it's
                                        # just a number constant.
                                        # None means line was blank, a comment, or a label.
        instruction_type = None
        args = []   # stores the parts of the line, usually arguments, in a number it stores the
                    # parts of the number if there are a few.
                    # each argument is a list or tuple of tokens.
                    # in instructions, first element in every argument is all that's needed to get
                    # the value, be that a number, or a label, or a register.
        
        # loop variables
        start_of_line = True
        current_arg = []    # list of parts to an argument, for example three parts in "[21]":
                            # the brackets and the number
        just_defined_label = False # used to make sure there's a colon after a label definition
        just_had_argument = False # so there are comma seperators
        just_had_comma = False # so we don't allow trailing comma at end of line
        
        in_mem_address = False
        current_arg = [] # for arguments made of a few arguments
        
        #           parsing the line
        for i, token in enumerate(tokenize_line(line, line_idx+1)):
            just_had_comma = False  # so only right after seting this to True in the comma part will
                                    # this be True.
            
            # a line which is just a constant value
            if (start_of_line and is_numberlike(token)
                and Token(':', 'COLON') not in list(tokenize_line(line,0))[i:]):  
                # a bit inefficient but lines tend to be short, and colon only comes up in lines that
                # define a new label
                
                start_of_line = False
                instruction_not_number = False
                args.append((token,)) # we use this to store all parts of the number if relevant
            
            # label or instruction command
            elif start_of_line and token.kind == "NAME":
                # if it's an instruction
                if token.string.upper() in INSTRUCTION_TYPES:
                    start_of_line = False # no longer start of line
                    instruction_not_number = True
                    instruction_type = token.string.upper()
                
                elif token.string.upper() == "PTR": # the only other protected name
                    raise SyntaxError(f"Can't start line with PTR. line {token.line}")
                
                # label definition
                else:
                    # note that we don't modify start_of_line because labels may have other things
                    # in the same line as them, right after them for example:
                    # some_label: mov ax, bx
                    
                    # this points at the next thing added to the output, and current_address is just
                    # that.
                    if token.string in labels:
                        raise SyntaxError(f"Can't redefine label. line {token.line}")
                    labels[token.string] = current_address
                    just_defined_label = True
            
            # make sure all label definitions have a colon after them
            elif just_defined_label:
                if token.kind != "COLON":
                    raise SyntaxError(
                        f"Expected colon (':') after label definition. line {token.line}"
                    )
                just_defined_label = False
            
            
            #       actual arguments
            # make sure all label arguments have commas between them
            # if it's a number then these aren't arguments and don't need commas
            elif just_had_argument and instruction_not_number:
                if token.kind != "COMMA":
                    raise SyntaxError(f"Expected comma (',') between arguments. line {token.line}")
                just_had_argument = False
                just_had_comma = True
            
            # number constant
            elif not in_mem_address and is_numberlike(token):
                args.append((token,))
                just_had_argument = True
            
            # register
            elif not in_mem_address and token.kind == "REGISTER":
                args.append((token,))
                just_had_argument = True
            
            # memory location
            elif not in_mem_address and token.kind == "NAME" and token.string.upper() == "PTR":
                current_arg.append(token)
            
            elif not in_mem_address and token.kind == "BRACKET":
                if token.string != "[":
                    raise SyntaxError(f"Unexpected ']' symbol on line {token.line}")
                in_mem_address = True
                
                # note that we don't add the brackets to current_arg, it's useless after parsing
                # stage. we just need the number, or "PTR" and a register.
            elif in_mem_address and token.kind == "BRACKET":
                if token.string != "]":
                    raise SyntaxError(f"Unexpected second '[' symbol on line {token.line}")
                in_mem_address = False
                
                # check legality of current_arg
                count_ptrs = 0
                for tok in current_arg:
                    if tok.string.upper() == "PTR":
                        count_ptrs += 1
                
                if count_ptrs > 1:
                    raise SyntaxError(
                        "Unexpected second PTR before memory address on line {token.line}")
                
                if count_ptrs == 1:
                    if len(current_arg) != 2:
                        raise SyntaxError(
                            "Wrong number of parts in memory address on line {token.line}")
                    if current_arg[0].string.upper() != "PTR":
                        # i don't think it's possible to get here, but nonthaless this is ofc bad
                        raise SyntaxError(f"PTR must come before mem address. line {token.line}")
                    if current_arg[-1].kind != "REGISTER":
                        raise SyntaxError(
                            f"PTR mem address requires address to be register. line {token.line}")
                    
                    # remove PTR part, as a register mem address always means PTR, so the PTR word is
                    # not useful outside of parsing
                    current_arg.pop(0) # removes first item of the list
                
                else:
                    if len(current_arg) != 1:
                        raise SyntaxError(
                            "Wrong number of parts in memory address on line {token.line}")
                    if not is_numberlike(current_arg[0]):
                        raise SyntaxError(
                            f"memory address requires address to be a number. line {token.line}")
                
                # mark as memory address
                current_arg.append("MEMARG") # not a token, that's detected later so it's fine
                
                # add the argument
                args.append(current_arg)
                just_had_argument = True
                current_arg = []

            elif in_mem_address and token.kind == "REGISTER":
                current_arg.append(token)
            
            elif in_mem_address and is_numberlike(token):
                current_arg.append(token)
            
            elif in_mem_address and token.kind == "NAME" and token.string in labels:
                # label as memory address
                current_arg.append(token)
            
            # unexpected token
            else:
                raise SyntaxError(f"Unexpected token {token.string!r} on line {token.line}")

        
        #       broken trailing syntax
        if just_defined_label:
            # i'm pretty sure this is unreachable, as a label without a colon should be number
            # constant, but just in case i missed something, this is here.
            raise SyntaxError(
                f"Label definitions must be followed by a colon (':'). line {line_idx+1}")
        
        if just_had_comma:
            raise SyntaxError(f"Unexpected trailing comma on line {line_idx+1}")
        
        if in_mem_address:
            raise SyntaxError(f"Memory address wasn't closed with ']' on line {line_idx+1}")
        
        
        #           code generation
        if instruction_not_number is None:
            continue
        
        # an instruction
        if instruction_not_number:
            # build instruction template
            instruction_template = [instruction_type]
            for arg in args:
                # mem args
                if arg[-1] == "MEMARG": # safe to assume arg isn't empty
                    # ptr
                    if arg[0].kind == "REGISTER":
                        instruction_template.append("PTR")
                    else: # label, char, or number
                        instruction_template.append("MEM")
                
                # register arg
                elif arg[0].kind == "REGISTER":
                    instruction_template.append("REG")
                
                # label, char, or number
                else:
                    instruction_template.append("CONST")
            
            instruction_template = tuple(instruction_template)
            if instruction_template not in opcode_table:
                raise SyntaxError(
                    f"No such instruction '{' '.join(instruction_template)}'. line {line_idx+1}")
            opcode = opcode_table[instruction_template]
            
            # build instruction
            instruction = str(opcode).zfill(2)
            for arg in args:
                # first item in every arg item is always enough to get the value
                if arg[0].kind == "REGISTER":
                    instruction += str(arg[0].value).zfill(2)
                
                elif arg[0].kind == "NUMBER":
                    value = arg[0].value
                    if value > 99 or value < 0:
                        raise SyntaxError(
                            f"Const value {arg[0].string!r} not in range 0-99 on line {line_idx+1}")
                    
                    instruction += str(value).zfill(2)
                
                elif arg[0].kind == "NAME":
                    # safe to assume it's in range 0-99, because we stop if that's exceeded.
                    if arg[0].string in labels:
                        instruction += str(labels[arg[0].string]).zfill(2)
                    else:
                        # length of instruction is used because that's first index after instruction,
                        # which is where the value should be added
                        position = (current_address, len(instruction))
                        unhandled_labels[position] = (arg[0].string, line_idx+1)
                
                else:
                    # i'm pretty sure this is unreachable
                    raise SyntaxError(f"Unknown argument type {arg[0].kind} on line {line_idx+1}")
            
            # fill rest of instruction with 00 when there are fewer than 2 arguments
            instruction += "00"*(2 - len(args))
            
            output_lines.append(instruction)
        
        # a constant number
        else:
            if len(args) == 1:
                # simple one number
                if len(args[0]) != 1: # means it's a memory address
                    raise SyntaxError(f"only numbers allowed in constant values. line {line_idx+1}")
                
                num_token = args[0][0]
                
                if num_token.kind == "NUMBER":
                    if num_token.value > 999999 or num_token.value < 0:
                        raise SyntaxError(
                            f"{num_token.string!r} not in range 0-999999 on line {line_idx+1}")
                    number = str(num_token.value).zfill(6)
                elif num_token.kind == "NAME":
                    # labels are always 2 digits, so 4 zeros and then the label number
                    if num_token.string in labels:
                        # safe to assume it's in range 0-99, because we stop if that's exceeded.
                        number = "0000" + str(labels[num_token.string]).zfill(2)
                    else:
                        number = "0000"
                        unhandled_labels[(current_address, 4)] = num_token.string, line_idx+1
                    
                else: # means it's a register
                    raise SyntaxError(f"only numbers allowed in constant values. line {line_idx+1}")
            
            elif len(args) == 3:
                # 3 small numbers combining to make one bigger number.
                number = ""
                for arg in args:
                    if len(arg) != 1: # means it's a memory address
                        raise SyntaxError(
                            f"only numbers allowed in constant values. line {line_idx+1}")
                    
                    if arg[0].kind == "NUMBER":
                        if arg[0].value > 99 or arg[0].value < 0:
                            raise SyntaxError(
                                f"Value {arg[0].string!r} not in range 0-99 on line {line_idx+1}")
                        number += str(arg[0].value).zfill(2)
                    
                    elif num_token.kind == "NAME":
                        # safe to assume it's in range 0-99, because we stop if that's exceeded.
                        if num_token.string in labels:
                            number += str(labels[num_token.string]).zfill(2)
                        else:
                            position = (current_address, len(number))
                            unhandled_labels[position] = num_token.string, line_idx+1
                        
                    else: # means it's a register
                        raise SyntaxError(f"only numbers allowed in constant values. line {line_idx+1}")
                
            
            else:
                raise SyntaxError(f"only 1 or 3 numbers are allowed in one line. line {line_idx+1}")

            output_lines.append(number) # all paths define a number variable

        
        
        #       update and prep for next line
        if not start_of_line: # meaning we did something, found a number or an instruction
            current_address += 1


    # second pass - filling unhandled forward labels
    for (address, position), (label_name, line) in unhandled_labels.items():
        if label_name not in labels:
            raise SyntaxError(f"Undefined reference to '{label_name}' on line {line}")
        label_pos = str(labels[label_name]).zfill(2)
        patched = output_lines[address][:position] + label_pos + output_lines[address][position:]
        output_lines[address] = patched
    
    # combine lines
    output = "\n".join(output_lines)
    
    return output


if __name__ == "__main__":
    import sys

    if len(sys.argv) != 3:
        print("Usage: python assembler.py <input assembly file> <output file>")

    else:
        with open(sys.argv[1], "r") as f:
            file_contents = f.read()

        with open(sys.argv[2], "w") as f:
            f.write(assemble(file_contents))

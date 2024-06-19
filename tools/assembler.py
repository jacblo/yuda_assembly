"""
This module is used to assemble assembly files into base 10 machine code in the yuda_assembly
format.
If this file is run by itself, it expects to get two command line arguments of source and
destination file paths respectively.
"""

def assemble(assembly_string: str) -> str:
    """Assembles <assembly_string> into base 10 machine code for yuda's assembly.

    Args:
        assembly_string (str): the program to assemble
    Returns:
        a string representing the base 10 machine code, every line is a new instruction, each line
        is always exactly 6 digits in base 10. There are no blank lines, no extraneous whitespace,
        and no trailing newline.
    """
    print(assembly_string)

if __name__ == "__main__":
    import sys

    if len(sys.argv != 3):
        print("Usage: python assembler.py <input assembly file> <output file>")

    else:
        with open(sys.argv[1], "r") as f:
            file_contents = f.read()

        with open(sys.argv[2], "w") as f:
            f.write(assemble(file_contents))

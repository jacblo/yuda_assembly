module instruction_decoder(
    input [6:0] instruction[3],
    //      control signals
    output reg mem_write, reg_write,

    //      reg addresses
    output reg[1:0] read1, read2, write_reg,

    //      mem addresses
    output reg[6:0] address,
    // if ptr
    output reg is_ptr,
    output reg ptr_data_selector, // 0 means data1 is address, 1 means data2 is address
    
    //      jumps
    output reg is_jmp, requires_less, requires_greater, requires_eq, requires_ne,
    // is_jmp pipes ALU result to IP based on the conditions

    //      ALU
    output reg[1:0] alu_A, alu_B, // 0: regData1, 1: regData2, 2: memory, 3: constant
    output reg[1:0] alu_op,
    output reg store_cmp_flags, // 1 if cmp_flags should be updated, 0 otherwise

    //      special
    output reg is_syscall, is_ret,
    output reg [6:0] constant,
    
    //      problems
    output reg unknown_op, unkown_reg // 1 means there's a problem
    );

    reg [1:0] internal_reg1;
    reg internal_unknown_reg1;

    reg [1:0] internal_reg2;
    reg internal_unknown_reg2;


    always_comb begin
        // register name decoding
        internal_unknown_reg1 = 0;
        internal_unknown_reg2 = 0;
        
        case (instruction[1])
            1: internal_reg1 = 0;
            2: internal_reg1 = 1;
            99: internal_reg1 = 2;
            default:
                internal_unknown_reg1 = 1;
        endcase

        case (instruction[2])
            1: internal_reg2 = 0;
            2: internal_reg2 = 1;
            99: internal_reg2 = 2;
            default:
                internal_unknown_reg2 = 1;
        endcase


        // instruction decoding
        mem_write = 0;
        reg_write = 0;
        is_ptr = 0;
        is_jmp = 0;
        is_syscall = 0;
        is_ret = 0;
        unknown_op = 0;
        unkown_reg = 0;
        store_cmp_flags = 0;
        requires_eq = 0;
        requires_ne = 0;
        requires_less = 0;
        requires_greater = 0;

        case (instruction[0])
            0: is_ret = 1; // ret
            
            //      MOV operations
            1: begin // mov register, constant
                reg_write = 1;
                write_reg = internal_reg1;
                unkown_reg = internal_unknown_reg1;
                constant = instruction[2];
                alu_A = 3; // send constant
                alu_op = 0; // output A
            end
            2: begin // mov register, register
                reg_write = 1;
                write_reg = internal_reg1;
                // if either register is illegal, the operation is illegal
                unkown_reg = internal_unknown_reg1 || internal_unknown_reg2;
                read1 = internal_reg2; // load from second register operand
                alu_A = 0; // send regData1
                alu_op = 0; // output A
            end
            3: begin // mov register, memory
                reg_write = 1;
                write_reg = internal_reg1;
                unkown_reg = internal_unknown_reg1;
                address = instruction[2];
                alu_A = 2; // send mem
                alu_op = 0; // output A
            end
            4: begin // mov memory, constant
                address = instruction[1];
                constant = instruction[2];
                mem_write = 1;
                alu_A = 3; // send constant
                alu_op = 0; // output A
            end
            5: begin // mov memory, register
                address = instruction[1];
                mem_write = 1;
                unkown_reg = internal_unknown_reg2;
                read1 = internal_reg2;
                alu_A = 0; // send regData1
                alu_op = 0; // output A
            end
            

            //      ADD operations
            6: begin // add register, constant
                reg_write = 1;
                write_reg = internal_reg1;
                unkown_reg = internal_unknown_reg1;
                constant = instruction[2];
                read1 = internal_reg1;
                alu_A = 0; // send regData1
                alu_B = 3; // send constant
                alu_op = 1; // A + B
                store_cmp_flags = 1;
            end
            7: begin // add register, register
                reg_write = 1;
                write_reg = internal_reg1;
                // if either register is illegal, the operation is illegal
                unkown_reg = internal_unknown_reg1 || internal_unknown_reg2;
                read1 = internal_reg1;
                read2 = internal_reg2;
                alu_A = 0; // send regData1
                alu_B = 1; // send regData2
                alu_op = 1; // A + B
                store_cmp_flags = 1;
            end

            //      CMP operations
            8: begin // cmp register, constant
                unkown_reg = internal_unknown_reg1;
                constant = instruction[2];
                read1 = internal_reg1;
                alu_A = 0; // send regData1
                alu_B = 3; // send constant
                alu_op = 3; // A - B
                store_cmp_flags = 1;
            end
            9: begin // cmp register, register
                // if either register is illegal, the operation is illegal
                unkown_reg = internal_unknown_reg1 || internal_unknown_reg2;
                read1 = internal_reg1;
                read2 = internal_reg2;
                alu_A = 0; // send regData1
                alu_B = 1; // send regData2
                alu_op = 3; // A - B
                store_cmp_flags = 1;
            end

            //      JMP operations
            10: begin // jmp constant
                is_jmp = 1;
                constant = instruction[1];
                alu_A = 3; // send constant
                alu_op = 0; // output A
            end
            11: begin // jmp register
                is_jmp = 1;
                read1 = internal_reg1;
                unkown_reg = internal_unknown_reg1;
                alu_A = 0; // send regData1
                alu_op = 0; // output A
            end
            //      JE operations
            12: begin // je constant
                requires_eq = 1;
                is_jmp = 1;
                constant = instruction[1];
                alu_A = 3; // send constant
                alu_op = 0; // output A
            end
            13: begin // je register
                requires_eq = 1;
                is_jmp = 1;
                read1 = internal_reg1;
                unkown_reg = internal_unknown_reg1;
                alu_A = 0; // send regData1
                alu_op = 0; // output A
            end


            //              MY ADDITIONS TO THE ISA
            //      extra MOV operations
            14: begin // mov register, PTR [register] 
                reg_write = 1;
                write_reg = internal_reg1;
                unkown_reg = internal_unknown_reg1 || internal_unknown_reg2;
                is_ptr = 1;
                ptr_data_selector = 0; // regData1 is address
                read1 = internal_reg2;
                alu_A = 2; // send mem
                alu_op = 0; // output A
            end
            15: begin // mov PTR [register], register
                read1 = internal_reg1;
                is_ptr = 1;
                ptr_data_selector = 0; // regData1 is address
                mem_write = 1;
                unkown_reg = internal_unknown_reg1 || internal_unknown_reg2;
                read2 = internal_reg2;
                alu_A = 1; // send regData2
                alu_op = 0; // output A
            end

            //      SUB operations
            16: begin // sub register, register
                reg_write = 1;
                write_reg = internal_reg1;
                // if either register is illegal, the operation is illegal
                unkown_reg = internal_unknown_reg1 || internal_unknown_reg2;
                read1 = internal_reg1;
                read2 = internal_reg2;
                alu_A = 0; // send regData1
                alu_B = 1; // send regData2
                alu_op = 3; // A - B
                store_cmp_flags = 1;
            end
            17: begin // sub register, constant
                reg_write = 1;
                write_reg = internal_reg1;
                unkown_reg = internal_unknown_reg1;
                constant = instruction[2];
                read1 = internal_reg1;
                alu_A = 0; // send regData1
                alu_B = 3; // send constant
                alu_op = 3; // A - B
                store_cmp_flags = 1;
            end
            18: begin // sub constant, register (still saves to register, just different order)
                reg_write = 1;
                write_reg = internal_reg2;
                unkown_reg = internal_unknown_reg2;
                constant = instruction[1];
                read1 = internal_reg2;
                alu_A = 3; // send constant
                alu_B = 0; // send regData1
                alu_op = 3; // A - B
                store_cmp_flags = 1;
            end

            //      extra CMP operations
            19: begin // cmp constant, register
                unkown_reg = internal_unknown_reg2;
                constant = instruction[1];
                read1 = internal_reg2;
                alu_A = 3; // send constant
                alu_B = 0; // send regData1
                alu_op = 3; // A - B
                store_cmp_flags = 1;
            end

            //      extra JMP operations
            //  JNE
            20: begin // jne constant
                requires_ne = 1;
                is_jmp = 1;
                constant = instruction[1];
                alu_A = 3; // send constant
                alu_op = 0; // output A
            end
            21: begin // jne register
                requires_ne = 1;
                is_jmp = 1;
                read1 = internal_reg1;
                unkown_reg = internal_unknown_reg1;
                alu_A = 0; // send regData1
                alu_op = 0; // output A
            end
            //  JL
            22: begin // jl constant
                requires_less = 1;
                is_jmp = 1;
                constant = instruction[1];
                alu_A = 3; // send constant
                alu_op = 0; // output A
            end
            23: begin // jl register
                requires_less = 1;
                is_jmp = 1;
                read1 = internal_reg1;
                unkown_reg = internal_unknown_reg1;
                alu_A = 0; // send regData1
                alu_op = 0; // output A
            end
            //  JG
            24: begin // jg constant
                requires_greater = 1;
                is_jmp = 1;
                constant = instruction[1];
                alu_A = 3; // send constant
                alu_op = 0; // output A
            end
            25: begin // jg register
                requires_greater = 1;
                is_jmp = 1;
                read1 = internal_reg1;
                unkown_reg = internal_unknown_reg1;
                alu_A = 0; // send regData1
                alu_op = 0; // output A
            end

            26: begin // syscall
                is_syscall = 1;
                constant = instruction[1]; // stores the code for the syscall, handled seperately
            end

            default: unknown_op = 1;
        endcase
    end
endmodule

/*
This is the main part of the processor, it communicates with I/O parts such as the program loader
which are external, and itself contains the main single-cycle datapath & control.

Parts:
    Control:
        instruction_decoder
        comparison_checker
    Datapath:
        memory_controller
        register_file
        ALU
        FR (flag register, really is just cmp_flags)
*/
module processor_internals(
    input clk,

    // for reading and writing when execution frozen, 
    input mem_clk, // so execution can be frozen seperately from memory&registers

    input reset, // when set to 1, the processor is reset on mem_clk
    
    input override, // 1 means memory is under external control
    input [6:0] override_mem_address,
    input [6:0] override_mem_write_data[3],
    input override_mem_write,
    output [6:0] override_mem_read_data[3], // used during override, can be anything when override=0

    output [6:0] AX[3], // for syscall's to use as argument
    output [6:0] IP, // so syscall can differentiate consecutive instructions
    
    // to call syscalls, report exceptions, and end execution
    output is_syscall, unknown_reg, unknown_op, is_ret, // all are set to 1 when encountered
    output [6:0] syscall_constant // constant, used in syscall
    );
    
    //          Datapath parts
    // memory_controller
    wire mem_reset;
    wire [6:0] mem_IP;
    wire [6:0] mem_instruction[3];
    reg [6:0] mem_address;
    reg mem_write;
    reg [6:0] mem_write_data[3];
    wire [6:0] mem_read_data[3];
    memory_controller memory(mem_clk, mem_reset, mem_IP, mem_instruction, mem_address, mem_write,
        mem_write_data, mem_read_data);
    
    // register_file
    wire [1:0] reg_read1, reg_read2, reg_writeReg;
    wire [6:0] reg_writeData[3];
    wire reg_RegWrite;
    wire [6:0] reg_Data1[3], reg_Data2[3];
    wire reg_override;
    wire reg_dont_inc;
    wire reg_reset;
    wire [6:0] reg_newIP;
    wire reg_WriteIP;
    wire [6:0] reg_IP;
    wire reg_running;
    wire [6:0] reg_AX[3];
    register_file registers(clk, reg_read1, reg_read2, reg_writeReg, reg_writeData, reg_RegWrite,
        reg_Data1, reg_Data2, reg_AX, reg_override, reg_dont_inc, reg_reset, reg_newIP, reg_WriteIP, reg_IP, reg_running);
    
    // ALU
    wire [1:0] alu_control_operation;
    reg [6:0] alu_A[3], alu_B[3];
    wire [6:0] alu_out[3];
    wire alu_cmp_flags[2];
    ALU alu(alu_control_operation, alu_A, alu_B, alu_out, alu_cmp_flags);

    // FR (cmp_flags register)
    reg cmp_flags[2] = {0,0};

    //          Control parts
    // instruction_decoder
    wire [6:0] id_instruction[3];
    wire id_mem_write, id_reg_write;
    wire [1:0] id_read1, id_read2, id_write_reg;
    wire [6:0] id_address;
    wire id_is_ptr;
    wire id_ptr_data_selector;
    wire id_is_jmp, id_requires_less, id_requires_greater, id_requires_eq, id_requires_ne;
    wire [1:0] id_alu_A, id_alu_B;
    wire [1:0] id_alu_op;
    wire id_store_cmp_flags;
    wire id_is_syscall, id_is_ret;
    wire [6:0] id_constant;
    wire id_unknown_op, id_unknown_reg;
    instruction_decoder id(id_instruction,
        id_mem_write, id_reg_write,
        id_read1, id_read2, id_write_reg,
        id_address,
        id_is_ptr, id_ptr_data_selector,
        id_is_jmp, id_requires_less, id_requires_greater, id_requires_eq, id_requires_ne,
        id_alu_A, id_alu_B, id_alu_op, id_store_cmp_flags,
        id_is_syscall, id_is_ret,
        id_constant,
        id_unknown_op, id_unknown_reg
    );

    // comparison_checker
    wire comp_cmp_flags[2];
    wire comp_requires_less, comp_requires_greater, comp_requires_eq, comp_requires_ne;
    wire comp_satisfied;
    comparison_checker comp(comp_cmp_flags, comp_requires_less, comp_requires_greater,
        comp_requires_eq, comp_requires_ne, comp_satisfied);


    //      Connections
    // control -> ALU
    assign alu_control_operation = id_alu_op;
    always_comb begin
        case (id_alu_A)
            0: alu_A = reg_Data1;
            1: alu_A = reg_Data2;
            2: alu_A = mem_read_data;
            3: alu_A = {0, 0, id_constant};
        endcase
        
        case (id_alu_B)
            0: alu_B = reg_Data1;
            1: alu_B = reg_Data2;
            2: alu_B = mem_read_data;
            3: alu_B = {0, 0, id_constant};
        endcase
    end
    
    // IP <-> memory
    assign mem_IP = reg_IP;
    assign id_instruction = mem_instruction;

    // memory -> external
    assign override_mem_read_data = mem_read_data;

    // override / control -> memory
    assign mem_reset = reset; // for resetting processor, from external control
    always_comb begin
        if (override) begin
            mem_address = override_mem_address;
            mem_write = override_mem_write;
            mem_write_data = override_mem_write_data;
        end
        else begin
            if (id_is_ptr) begin // pointer address
                case (id_ptr_data_selector)
                    0: mem_address = reg_Data1[2];
                    1: mem_address = reg_Data2[2];
                endcase
            end
            else begin // constant address
                mem_address = id_address;
            end
            mem_write = id_mem_write;
            mem_write_data = alu_out;
        end
    end

    // control -> registers
    assign reg_read1 = id_read1;
    assign reg_read2 = id_read2;
    assign reg_writeReg = id_write_reg;
    assign reg_writeData = alu_out;
    assign reg_RegWrite = id_reg_write;
    assign reg_reset = reset; // for resetting processor, from external control
    assign reg_override = override; // for not applying extra instruction while doing syscall
    assign reg_dont_inc = id_is_syscall || id_is_ret; // is_syscall so we rerun next instruction after syscall

    // control -> FR (cmp_flags register)
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            cmp_flags = {0,0};
        end
        else begin
            if (id_store_cmp_flags) begin
                cmp_flags = alu_cmp_flags;
            end
        end
    end

    // FR & instruction decode -> comparison checker
    assign comp_cmp_flags = cmp_flags;
    assign comp_requires_less = id_requires_less;
    assign comp_requires_greater = id_requires_greater;
    assign comp_requires_eq = id_requires_eq;
    assign comp_requires_ne = id_requires_ne;

    // control -> IP reg
    assign reg_newIP = alu_out[2];
    assign reg_WriteIP = (comp_satisfied && id_is_jmp); // if jmp and conditions are satisfied

    // instruction decode -> external
    assign syscall_constant = id_constant;
    assign is_syscall = id_is_syscall;
    assign unknown_reg = id_unknown_reg;
    assign unknown_op = id_unknown_op;
    assign is_ret = id_is_ret || !reg_running; // if we reached a ret instruction or the end of the
                                               // program, execution should be terminated

    // register -> external
    assign AX = reg_AX;
    assign IP = reg_IP;
    
endmodule

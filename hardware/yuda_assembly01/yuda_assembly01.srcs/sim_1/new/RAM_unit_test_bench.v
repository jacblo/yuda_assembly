`timescale 1ns / 1ps

module RAM_unit_test_bench();
    reg [7:0] instruction_address;
    reg instruction_waiting;
    
    reg [7:0] mem_op_address;
    reg mem_op_waiting;
    reg mem_op_R_or_w;
    reg [7:0] mem_op_data;
    
    RAM_unit dut(instruction_address, instruction_waiting, mem_op_address, mem_op_waiting, mem_op_R_or_w, mem_op_data);
    
    initial begin
//        mem_op_data = 0;
        instruction_address = 0;
        instruction_waiting = 0;
        mem_op_address = 0;
        mem_op_waiting = 0;
        mem_op_R_or_w = 1;
        mem_op_data = 0;
        #12
        mem_op_waiting = 1;
        #12
        mem_op_waiting = 0;
        mem_op_address = 1;
        #12
        mem_op_waiting = 1;
        #12
        mem_op_waiting = 0;
        mem_op_address = 2;
        #12
        mem_op_waiting = 1;
        #12
        mem_op_waiting = 0;
        #12
        mem_op_address = 0;
        mem_op_R_or_w = 1;
        mem_op_data = 10;
        #12
        mem_op_waiting = 1;
        #12
        mem_op_waiting = 0;
        #12
        instruction_waiting = 1;
        #12
        instruction_waiting = 0;
        mem_op_waiting = 0;
        #12
        instruction_waiting = 1;
    end
endmodule

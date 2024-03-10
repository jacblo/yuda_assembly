`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2024 01:55:54 AM
// Design Name: 
// Module Name: RAM_unit_test_bench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RAM_unit_test_bench();
    reg [6:0] instruction_address;
    reg instruction_waiting;
    
    reg [6:0] mem_op_address;
    reg mem_op_waiting;
    reg mem_op_R_or_w;
    reg [6:0] mem_op_data;
    
    RAM_unit dut(instruction_address, instruction_waiting, mem_op_address, mem_op_waiting, mem_op_R_or_w, mem_op_data);
    
    initial begin
//        mem_op_data = 0;
        instruction_address = 0;
        instruction_waiting = 0;
        mem_op_address = 0;
        mem_op_waiting = 0;
        mem_op_R_or_w = 1;
        mem_op_data = 0;
        #5
        mem_op_waiting = 1;
        #5
        mem_op_waiting = 0;
        mem_op_address = 1;
        #5
        mem_op_waiting = 1;
        #5
        mem_op_waiting = 0;
        mem_op_address = 2;
        #5
        mem_op_waiting = 1;
        #5
        mem_op_waiting = 0;
        #5
        mem_op_address = 0;
        mem_op_R_or_w = 1;
        mem_op_data = 10;
        #5
        mem_op_waiting = 1;
        #5
        mem_op_waiting = 0;
        #5
        instruction_waiting = 1;
        #5
        instruction_waiting = 0;
        mem_op_waiting = 0;
        #5
        instruction_waiting = 1;
    end
endmodule

`timescale 1ns / 1ps

module processor_internals_tb();

    reg clk;

    // for reading and writing when execution frozen, 
    reg mem_clk; // so execution can be frozen seperately from memory
    reg reset = 0;
    reg override; // 1 means memory is under external control
    reg [6:0] override_mem_address;
    reg [6:0] override_mem_write_data[3];
    reg override_mem_write;
    wire [6:0] override_mem_read_data[3]; // used during override, can be anything when override=0

    wire [6:0] AX[3]; // for syscall's to use as argument
    
    // to call syscalls, report exceptions, and end execution
    wire is_syscall, unknown_reg, unknown_op, is_ret; // all are set to 1 when encountered
    wire [6:0] syscall_constant; // constant, used in syscall

    processor_internals tester(clk, mem_clk, reset, override, override_mem_address, 
        override_mem_write_data, override_mem_write, override_mem_read_data, AX, is_syscall,
        unknown_reg, unknown_op, is_ret, syscall_constant);

    initial begin
        clk = 0;
        // write program
        mem_clk = 0;
        override = 1;
        override_mem_write = 1;
        override_mem_address = 0;
        override_mem_write_data = {10, 3, 0};
        #30
        mem_clk = 1;
        #10
        override_mem_address = 1;
        override_mem_write_data = {0, 0, 1};
        #20
        mem_clk = 0;
        #30
        mem_clk = 1;
        #10
        override_mem_address = 2;
        override_mem_write_data = {0, 0, 2};
        #20
        mem_clk = 0;
        #30
        mem_clk = 1;
        #10
        override_mem_address = 3;
        override_mem_write_data = {3, 1, 1};
        #20
        mem_clk = 0;
        #30
        mem_clk = 1;
        #10
        override_mem_address = 4;
        override_mem_write_data = {3, 2, 2};
        #20
        mem_clk = 0;
        #30
        mem_clk = 1;
        #10
        override_mem_address = 5;
        override_mem_write_data = {17, 1, 1};
        #20
        mem_clk = 0;
        #30
        mem_clk = 1;
        #10
        override_mem_address = 6;
        override_mem_write_data = {24, 4, 0};
        #20
        mem_clk = 0;
        #30
        mem_clk = 1;
        #10
        override_mem_address = 7;
        override_mem_write_data = {3, 1, 1};
        #20
        mem_clk = 0;
        #30
        mem_clk = 1;
        #10
        override_mem_address = 8;
        override_mem_write_data = {17, 2, 1};
        #20
        mem_clk = 0;
        #30
        mem_clk = 1;
        #10
        override_mem_address = 9;
        override_mem_write_data = {24, 04, 0};
        #20
        mem_clk = 0;
        #30
        mem_clk = 1;
        #10
        override_mem_address = 10;
        override_mem_write_data = {0, 0, 0};
        #20
        mem_clk = 0;
        #30
        mem_clk = 1;
        #10
        override = 0;
        #20
        mem_clk = 0;
        // start running
        for (int i = 0; i < 400; i = i + 1) begin
            #30
            mem_clk = 1;
            clk = 1;
            #30
            mem_clk = 0;
            clk = 0;
        end
    end
endmodule

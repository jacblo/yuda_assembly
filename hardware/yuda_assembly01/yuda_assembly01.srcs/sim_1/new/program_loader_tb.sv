`timescale 1ns / 1ps

module program_loader_tb();
    reg clk;
    reg listen;
    reg [7:0] rx_data;
    reg rx_done_recieving;
    wire [6:0] address;
    wire  write;
    wire [6:0] write_data[3];
    wire  done;
    wire [7:0] tx_data;
    wire  tx_dv;
    program_loader tester(clk, listen, rx_data, rx_done_recieving, address, write, write_data,
                            done, tx_data, tx_dv);

    initial begin
        clk = 0;
        rx_done_recieving = 0;
        listen = 0;
        #30
        clk = 1;
        #30
        clk = 0;
        listen = 1;
        rx_data = 13;
        rx_done_recieving = 1;
        #30
        clk = 1;
        #30
        clk = 0;
        rx_done_recieving = 0;
        #30
        clk = 1;
        #30
        clk = 0;
        listen = 1;
        rx_data = 23;
        rx_done_recieving = 1;
        #30
        clk = 1;
        #30
        clk = 0;
        listen = 1;
        rx_data = 15;
        rx_done_recieving = 1;
        #30
        clk = 1;
        #30
        clk = 0;
        rx_done_recieving = 0;
        #30
        clk = 1;
        #30
        clk = 0;
        listen = 1;
        rx_data = 13;
        rx_done_recieving = 1;
        #30
        clk = 1;
        #30
        clk = 0;
        rx_done_recieving = 0;
        #30
        clk = 1;
        #30
        clk = 0;
        listen = 1;
        rx_data = 2;
        rx_done_recieving = 1;
        #30
        clk = 1;
        #30
        clk = 0;
        rx_done_recieving = 0;
        #30
        clk = 1;
        #30
        clk = 0;
        listen = 1;
        rx_data = 99;
        rx_done_recieving = 1;
        #30
        clk = 1;
        #30
        clk = 0;
        rx_done_recieving = 0;
        #30
        clk = 1;
        #30
        clk = 0;
        listen = 1;
        rx_data = 'hfe; // end
        rx_done_recieving = 1;
        #30
        clk = 1;
        #30
        clk = 0;
        rx_done_recieving = 0;
        #30
        clk = 1;
        #30
        clk = 0;
        #30
        clk = 1;
        #30
        clk = 0;
    end

endmodule

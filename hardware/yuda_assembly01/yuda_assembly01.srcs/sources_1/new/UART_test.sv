`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2024 12:21:16 AM
// Design Name: 
// Module Name: UART_test
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


module UART_test(
    input btn[1:0],
    output led[3:0],

    input clk,
    input uart_rx,
    output uart_tx
    );
    reg [7:0] to_send;
    
    UART #(
        .CLK_FREQ(12_000_000),
        .BAUD_RATE(2_000_000)
        ) uart_controller(
        .i_clk(clk),
        .i_rx(uart_rx),
        .o_tx(uart_tx),
        .i_tx_data(to_send),
        .i_tx_dv(btn[0]),
        .o_tx_rdy(led[0]),
        .o_rx_dv(led[1])
    );
    
    initial to_send = "g";
endmodule

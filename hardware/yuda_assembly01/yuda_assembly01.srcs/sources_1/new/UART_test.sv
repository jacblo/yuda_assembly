module UART_test(
    input btn[1:0],
    output led[3:0],

    input clk,
    input uart_rx,
    output uart_tx
    );
    reg [7:0] to_send = "g";
    wire rx_dv;
    wire [7:0] recieved_wire;
    
    UART #(
        .CLK_FREQ(12_000_000),
        .BAUD_RATE(115200)
        ) uart_controller(
        .i_clk(clk),
        .i_rx(uart_rx),
        .o_tx(uart_tx),
        .i_tx_data(to_send),
        .i_tx_dv(btn[0]),
        .o_tx_rdy(led[0]),
        .o_rx_dv(rx_dv),
        .o_rx_data(recieved_wire)
    );
        
    always @(posedge rx_dv) begin
        to_send <= recieved_wire;
    end
endmodule

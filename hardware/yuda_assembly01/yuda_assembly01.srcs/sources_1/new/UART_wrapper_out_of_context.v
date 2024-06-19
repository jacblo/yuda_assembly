// in order to use UART in the top_level_circuit_tb we need a seperate compilation of it without parameters, so this sets those 
// and simply wraps UART module.

module UART_wrapper_out_of_context(
        input               i_clk,
        input               i_rx,
        output  wire [7:0]  o_rx_data,
        output  wire         o_rx_dv,
        output  wire         o_tx,
        input       [7:0]   i_tx_data,
        input               i_tx_dv,
        output  wire         o_tx_rdy
    );

    UART #(
        .CLK_FREQ(12_000_000),
        .BAUD_RATE(2_000_000)
        ) uart_controller(
        i_clk,
        i_rx,
        o_rx_data,
        o_rx_dv,
        o_tx,
        i_tx_data,
        i_tx_dv,
        o_tx_rdy
    );
endmodule

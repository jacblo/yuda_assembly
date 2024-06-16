module input_output(
        input clk,
        
        input is_syscall, // set to 1 to mean syscall should be run
        input [6:0]syscall_number,
        input [6:0]AX[3],
        output unknown_syscall,

        // for reading and writing to ram
        output reg [6:0] address,
        output reg write,
        output reg [6:0] write_data[3],
        input [6:0] read_data[3],

        // for receiving input
        input [7:0] rx_data, // received data, a byte by default.
        input rx_done_receiving, // expected to be pulsed when an element is received

        // for sending output
        input tx_ready,
        output reg[7:0] tx_data,
        output reg tx_dv,

        output reg done // when done doing the syscall it is set to 1, 0 while running
    );
    
    always @(posedge clk) begin
        tx_dv = 0; // so setting it to 1 will pulse

        //!TODO needs implementation
    end
endmodule

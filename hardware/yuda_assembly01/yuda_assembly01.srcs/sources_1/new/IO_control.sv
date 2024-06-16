module IO_control(
        input clk,
        
        // chips done output
        input io_done,
        input exception_done,
        input loader_done,

        // for receiving input
        input [7:0] rx_data, // received data, a byte by default.
        input rx_done_receiving, // expected to be pulsed when an element is received

        // processor control
        output reg freeze, // freeze operation of the processor
        output reg reset, // reset processor to all zeros

        // io control
        // this selects for what chip will have control over the UART output and processor memory writing
        output reg [1:0]chip_select, // 0: program_loader, 1: input_output, 2: exception_handler, 3: undefined
    
        output reg listen // program_loader listen, also means the input_output can't read input
    );

    always @(posedge clk) begin
        reset = 0; // so setting it to 1 will be a pulse
        listen = 0; // so setting it to 1 will be a pulse

        // overrules anything and everything
        if (rx_data == 'hff && rx_done_receiving) begin
            // restart processor
            reset = 1;
            freeze = 1;
            chip_select = 0; // get ready to load program
            listen = 1;
        end
        else if (!exception_done) begin
            // freeze processor, and let the exception_handler send the exception, then we wait with frozen program until 'hff is sent
            freeze = 1;
            chip_select = 1;
        end
        else if (!io_done) begin
            // freeze processor, and let the input_output deal with everyhting
            freeze = 1;
            chip_select = 1;
        end
        else if (io_done) begin
            // if it tells us it's done, we continue running
            freeze = 0;
        end

    end

endmodule
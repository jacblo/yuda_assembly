module IO_control(
        input clk,
        
        // flags from processor
        // these are here so we can freeze processor and cede writing and sending control
        // immediately without waiting for io chips to tell us to
        input is_syscall, unknown_reg, unknown_op, is_ret,

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
        output reg [1:0]chip_select, // 0: program_loader, 1: input_output, 2: exception_handler, 3: no chip
    
        output reg listen // program_loader listen, also means the input_output can't read input
    );

    initial begin
        chip_select = 3;
        freeze = 1;
    end
    
    reg started = 0; // so program doesn't start running before first one is sent, also so exception can kill execution completely
    reg last_listen = 0;

    reg got_kill = 0; // 0xff has been received
    always @(posedge clk) begin
        reset = 0; // so setting it to 1 will be a pulse
        last_listen = listen;
        listen = 0; // so setting it to 1 will be a pulse

        // overrules anything and everything
        if (rx_data == 'hff && rx_done_receiving) begin
            got_kill = 1;
            // restart processor
            reset = 1;
            freeze = 1;
            chip_select = 0; // get ready to load program
        end

        else if (!rx_done_receiving && got_kill) begin // now that the 0xff is no longer being sent, we can start loading
            listen = 1;
            started = 1; // if we loaded a program to run, then we've definitely started
            got_kill = 0;
        end

        // used to make it so when program is loading, the rest of this chain doesn't run
        else if (!loader_done || last_listen); // if we just started loader, or it is running, everything else is overruled

        else if (!io_done) begin
            // freeze processor, and let the input_output deal with everyhting
            freeze = 1;
            chip_select = 1;
        end
        else if (!exception_done) begin
            // freeze processor, and let the exception_handler send the exception, then we wait with frozen program until 'hff is sent
            freeze = 1;
            started = 0; // fully stop
            chip_select = 2;
        end

        // if doing something, but will next cycle, immediately handle freezing and giving control
        else if ((is_syscall || unknown_reg || unknown_op || is_ret) && !freeze) begin
            freeze = 1;
            if (unknown_reg || unknown_op || is_ret)
                chip_select = 2;
            else if (is_syscall)
                chip_select = 1;
        end

        // if we're not doing anything, and we've started, we run
        else if (started) begin
            freeze = 0;
        end

    end

endmodule
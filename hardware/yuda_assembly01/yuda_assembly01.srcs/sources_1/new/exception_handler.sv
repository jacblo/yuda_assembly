module exception_handler(
        input clk,

        input unknown_reg, unknown_op, unknown_syscall, is_ret, running,

        // for reporting the exception
        input tx_ready,
        output reg[7:0] tx_data,
        output reg tx_dv,

        output reg done
    );

    initial begin
        done = 1;
    end

    reg handled = 1; // so we only send first exception and don't repeat one exception over and over
    always @(posedge clk) begin
        tx_dv = 0; // so setting it to 1 will pulse
    
        if (handled) begin
            done = 1; // so it happens only one cycle after the message has been sent
        end
    
        // if there's an unhandled error or termination of program while running
        if ((unknown_reg || unknown_op || unknown_syscall || is_ret) && handled && running) begin
            // we set tx_data immediately, because it could change next instruction,
            // because stopping is delayed by one, so another instruction will run
            if (unknown_op)
                tx_data = 'hf0;
            else if (unknown_reg)
                tx_data = 'hf1;
            else if (unknown_syscall)
                tx_data = 'hf2;
            else if (is_ret)
                tx_data = 'hff;
            handled = 0; // so we know to send tx_data as soon as we can
            done = 0;
        end
        
        // this is repeatedly run until tx_ready is 1, then exception is sent and this stops running
        if (!handled) begin
            if (tx_ready) begin
                tx_dv = 1; // pulse that so we send the tx_data we saved earlier
                handled = 1; // we just handled it
            end
        end

    end
endmodule

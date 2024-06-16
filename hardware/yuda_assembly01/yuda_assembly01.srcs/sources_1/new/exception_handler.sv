module exception_handler(
        input clk,

        input unkown_reg, unknown_op,

        // for reporting the exception
        input tx_ready,
        output reg[7:0] tx_data,
        output reg tx_dv,

        output reg done
    );

    reg handled = 0; // so we don't keep sending exceptions, one is enough

    always @(posedge clk) begin
        tx_dv = 0; // so setting it to 1 will pulse

        if (unkown_reg || unknown_op || !done) begin // if there's an error, or we have yet to deal with a previous error
            done = 0;
            if (!handled && tx_ready) begin
                if (unkown_op)
                    tx_data = 'hf0;
                else if (unkown_reg)
                    tx_data = 'hf1;
                
                tx_dv = 1; // pulse that

                handled = 1; // we just handled it
                done = 1;
            end
        end
        else
            handled = 0; // no exception resets this
    end
endmodule

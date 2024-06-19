`timescale 1ns / 1ps

module top_level_tb();
    reg clk;

    wire uart_rx;
    wire uart_tx;

    reg [7:0] uart_output_data;
    reg uart_output_send;
    wire uart_send_ready;

    wire uart_input_done_receiving;
    wire [7:0] uart_input_data;

    UART_wrapper_out_of_context uart_controller(
        // physical ports
        .i_clk(clk),
        .i_rx(uart_tx),
        .o_tx(uart_rx),

        // processor output
        .i_tx_data(uart_output_data),
        .i_tx_dv(uart_output_send),
        .o_tx_rdy(uart_send_ready),
        
        // processor input
        .o_rx_dv(uart_input_done_receiving),
        .o_rx_data(uart_input_data)
    );

    top_level_circuit tester(clk, uart_rx, uart_tx);

    // as u may see in the commit history, many changes have happened to this file, usually changing numbers, i didn't save all the
    // tests i did using this, it is for simulating input and running the whole processor "in a box" connected to a simulated external
    // computer using the uart_controller. so the specific values passed to the uart_controller varied as i tested differing programs.
    initial begin
        for (int i = 0; i < 3; i = i + 1) begin // run a few times in a row
            // time before first program
            for (int j = 0; j < 3; j = j + 1) begin
                #10
                clk = 1;
                #10
                clk = 0;
            end
            
            // send 0xff to start loading program
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            while (1) begin
                #10
                clk = 0;
                #10
                clk = 1;
                if (uart_send_ready)
                    break;
            end
            #10
            clk = 0;
            uart_output_data = 'hff; // start loading program
            uart_output_send = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            uart_output_send = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            while (1) begin
                #10
                clk = 0;
                #10
                clk = 1;
                if (uart_send_ready)
                    break;
            end
            #10
            clk = 0;
            uart_output_data = 01; // 01 is opcode for mov reg, const
            uart_output_send = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            uart_output_send = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            while (1) begin
                #10
                clk = 0;
                #10
                clk = 1;
                if (uart_send_ready)
                    break;
            end
            #10
            clk = 0;
            uart_output_data = 01; // mov into AX
            uart_output_send = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            uart_output_send = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            while (1) begin
                #10
                clk = 0;
                #10
                clk = 1;
                if (uart_send_ready)
                    break;
            end
            #10
            clk = 0;
            uart_output_data = 5;
            uart_output_send = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            uart_output_send = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            while (1) begin
                #10
                clk = 0;
                #10
                clk = 1;
                if (uart_send_ready)
                    break;
            end
            #10
            clk = 0;
            uart_output_data = 26; // syscall
            uart_output_send = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            uart_output_send = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            while (1) begin
                #10
                clk = 0;
                #10
                clk = 1;
                if (uart_send_ready)
                    break;
            end
            #10
            clk = 0;
            uart_output_data = 3;
            uart_output_send = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            uart_output_send = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            while (1) begin
                #10
                clk = 0;
                #10
                clk = 1;
                if (uart_send_ready)
                    break;
            end
            #10
            clk = 0;
            uart_output_data = 0;
            uart_output_send = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            uart_output_send = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            while (1) begin
                #10
                clk = 0;
                #10
                clk = 1;
                if (uart_send_ready)
                    break;
            end
            // #10
            // clk = 0;
            // uart_output_data = 1;
            // uart_output_send = 1;
            // #10
            // clk = 1;
            // #10
            // clk = 0;
            // uart_output_send = 0;
            // #10
            // clk = 1;
            // #10
            // clk = 0;
            // #10
            // clk = 1;
            // while (1) begin
            //     #10
            //     clk = 0;
            //     #10
            //     clk = 1;
            //     if (uart_send_ready)
            //         break;
            // end
            // #10
            // clk = 0;
            // uart_output_data = 1;
            // uart_output_send = 1;
            // #10
            // clk = 1;
            // #10
            // clk = 0;
            // uart_output_send = 0;
            // #10
            // clk = 1;
            // #10
            // clk = 0;
            // #10
            // clk = 1;
            // while (1) begin
            //     #10
            //     clk = 0;
            //     #10
            //     clk = 1;
            //     if (uart_send_ready)
            //         break;
            // end
            // #10
            // clk = 0;
            // uart_output_data = 5;
            // uart_output_send = 1;
            // #10
            // clk = 1;
            // #10
            // clk = 0;
            // uart_output_send = 0;
            // #10
            // clk = 1;
            // #10
            // clk = 0;
            // #10
            // clk = 1;
            // while (1) begin
            //     #10
            //     clk = 0;
            //     #10
            //     clk = 1;
            //     if (uart_send_ready)
            //         break;
            // end
            #10
            clk = 0;
            uart_output_data = 26;
            uart_output_send = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            uart_output_send = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            while (1) begin
                #10
                clk = 0;
                #10
                clk = 1;
                if (uart_send_ready)
                    break;
            end
            #10
            clk = 0;
            uart_output_data = 2;
            uart_output_send = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            uart_output_send = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            while (1) begin
                #10
                clk = 0;
                #10
                clk = 1;
                if (uart_send_ready)
                    break;
            end
            #10
            clk = 0;
            uart_output_data = 0;
            uart_output_send = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            uart_output_send = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            while (1) begin
                #10
                clk = 0;
                #10
                clk = 1;
                if (uart_send_ready)
                    break;
            end
            #10
            clk = 0;
            uart_output_data = 10;
            uart_output_send = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            uart_output_send = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            while (1) begin
                #10
                clk = 0;
                #10
                clk = 1;
                if (uart_send_ready)
                    break;
            end
            #10
            clk = 0;
            uart_output_data = 1;
            uart_output_send = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            uart_output_send = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            while (1) begin
                #10
                clk = 0;
                #10
                clk = 1;
                if (uart_send_ready)
                    break;
            end
            #10
            clk = 0;
            uart_output_data = 0;
            uart_output_send = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            uart_output_send = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            while (1) begin
                #10
                clk = 0;
                #10
                clk = 1;
                if (uart_send_ready)
                    break;
            end
            #10
            clk = 0;
            uart_output_data = 0;
            uart_output_send = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            uart_output_send = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            while (1) begin
                #10
                clk = 0;
                #10
                clk = 1;
                if (uart_send_ready)
                    break;
            end
            #10
            clk = 0;
            uart_output_data = 0;
            uart_output_send = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            uart_output_send = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            while (1) begin
                #10
                clk = 0;
                #10
                clk = 1;
                if (uart_send_ready)
                    break;
            end
            #10
            clk = 0;
            uart_output_data = 0;
            uart_output_send = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            uart_output_send = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            while (1) begin
                #10
                clk = 0;
                #10
                clk = 1;
                if (uart_send_ready)
                    break;
            end
            #10
            clk = 0;
            uart_output_data = 'hfe; // done sending
            uart_output_send = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            uart_output_send = 0;
            #10
            clk = 1;
            
            for (int j = 0; j < 1200; j = j + 1) begin // run for a little while
                $display(j);
                
                #10
                clk = 0;
                
                // // input from user for the test_user_input.py echo program
                // if (j == 168 || j == 500) begin
                //     uart_output_data = 32;
                //     uart_output_send = 1;
                //     #10
                //     clk = 1;
                //     #10
                //     clk = 0;
                //     uart_output_send = 0;
                //     while (1) begin
                //         #10
                //         clk = 0;
                //         #10
                //         clk = 1;
                //         if (uart_send_ready)
                //             break;
                //     end
                //     uart_output_data = 0;
                //     uart_output_send = 1;
                //     #10
                //     clk = 1;
                //     #10
                //     clk = 0;
                //     uart_output_send = 0;
                // end
                
                #10
                clk = 1;
            end 
        end
    end
endmodule

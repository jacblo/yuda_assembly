module input_output(
        input clk,
        
        input [6:0] current_IP, // for differentiating consecutive instructions
        input is_syscall, // set to 1 to mean syscall should be run
        input [6:0]syscall_number,
        input [6:0]AX[3],
        output reg unknown_syscall,

        // for reading and writing to ram
        output reg [6:0] address,
        output reg write,
        output [6:0] write_data[3],
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
    
    initial begin
        done = 1;
    end

    reg [2:0] position_min; // at what point do we start reading from, end at 2. 0 if reading whole words, 2 if one char per word.
    reg sending; // 1 means sending stuff, 0 means receiving stuff
    reg one_word; // 1 means sending or receiving one unit (char or word), 0 means null-terminated


    reg [2:0] position; // position 0-2 within word

    reg [6:0] temp[3]; // for storing parts before writing it to memory
    assign write_data = temp; // we always send what is in temp when we're done with it

    reg [1:0] done_count = 0; // used to delay checking for syscall by a bit so processor continues and we don't run over and over

    reg just_started_operation = 0; // some operations like reading need u to wait a cycle for first word
    
    reg [6:0] last_IP;

    reg sent_request = 0; // so we only start receiving after sending request to host
    reg handled = 0; // so we don't rerun syscall over and over
    always @(posedge clk) begin
        tx_dv = 0; // so setting it to 1 will pulse
        write = 0; // so setting it to 1 will pulse
        just_started_operation = 0;
        
        if (last_IP != current_IP)
            handled = 0; // new instruction so can't possibly be handled


        // initial setup when syscall is called
        if (is_syscall && !handled) begin // unhandled syscall to deal with
            just_started_operation = 1;
            sent_request = 0;
            done = 0;
            handled = 1; // we're handling it right now
            temp = {0,0,0};

            case (syscall_number)
                0: begin // send char to host (computer that's connected) (AX is address to send)
                    position_min = 2; // so we send only a char
                    one_word = 1;
                    sending = 1;
                end
                
                1: begin // wait to receive a char from host (computer that's connected) (AX is address to save in)
                    position_min = 2; // so we get only a char
                    one_word = 1;
                    sending = 0;
                    tx_data = 'h80; // waiting for one char
                end
                
                2: begin // send null terminated string to host (AX is the address to send)
                    position_min = 2; // so we send only chars
                    one_word = 0;
                    sending = 1;
                end
                
                3: begin // receive null-terminated char string from host (AX is address to write to) 
                    position_min = 2; // so we get only chars, not words
                    one_word = 0;
                    sending = 0;
                    tx_data = 'h81; // waiting for char string
                end

                4: begin // send word to host (AX is address to send)
                    position_min = 0; // so we send full word
                    one_word = 1;
                    sending = 1;
                    tx_data = 'h90; // sending a number
                end

                5: begin // wait to receive word from host (AX is address to save in)
                    position_min = 0; // so we get full word
                    one_word = 1;
                    sending = 0;
                    tx_data = 'h82; // waiting for word
                end
                
                6: begin // send null terminated string of whole words to host (AX is the address to send)
                    position_min = 0; // so we send full words
                    one_word = 0;
                    sending = 1;
                    tx_data = 'h91; // sending numbers
                end
                
                7: begin // receive null-terminated string of whole words from host (AX is address to write to)
                    position_min = 0; // so we get full words
                    one_word = 0;
                    sending = 0;
                    tx_data = 'h83; // waiting for string of words
                end
                
                8: begin // check if there's a word waiting to be received (AX is address to write result to)
                    // handled like receiving a char, we just ask the computer for something else
                    position_min = 2; // so we get only a char
                    one_word = 1;
                    sending = 0;
                    tx_data = 'h84; // waiting for amount of waiting input
                end
                
                default: begin // anything else
                    unknown_syscall = 1;
                    done = 1; // not actually gonna do anything so we shouldn't say we're doing something
                    handled = 0;
                end
            endcase

            position = position_min;

            if (sending)
                address = AX[2];
            else
                address = AX[2] - 1; // we always increment before writing to ram, so to start at AX[2] we start address 1 before that
            
        end

        // actually running syscall
        if (!done) begin
            if (!sending) begin // receiving
                if (!sent_request) begin // didn't send request yet, and is receiving data so we need to send a request
                    if (tx_ready) begin // wait to send it until we can
                        tx_dv = 1; // send
                        sent_request = 1;
                    end
                end
                else begin // we should receive
                    if (rx_done_receiving) begin
                        temp[position] = rx_data;
                        
                        if (position == 2) begin
                            position = position_min;
                            address++;
                            write = 1;

                            if ((temp[0] == 0 && temp[1] == 0 && temp[2] == 0) || one_word) begin // found null teminator or receiving one item thing anyway, so we stop
                                done = 1;
                            end
                        end
                        else
                            position++;
                    end
                end
            end

            else begin // sending
                // we don't run if just_started_operation because we need a cycle to have memory informed of first address
                if (tx_ready && !just_started_operation) begin // wait to send until we can
                    // if (0);
                    if (!sent_request && position_min == 0) begin // if it's whole words first we send the special code
                        tx_dv = 1; // send
                        sent_request = 1; // only send this once
                    end
                    else begin
                        tx_data = read_data[position];
                        tx_dv = 1; // send
                        
                        if (position == 2) begin
                            // if we're at null-terminator
                            if (((read_data[0] == 0 && read_data[1] == 0 && read_data[2] == 0) && position_min == 0)  || 
                                (read_data[2] == 0 && position_min == 2) || one_word) begin
                                
                                done = 1;
                            end

                            // prep for next word
                            position = position_min;
                            address++;
                        end
                        else
                            position++;
                    end

                end
            end
        end

        last_IP = current_IP;
    end
endmodule

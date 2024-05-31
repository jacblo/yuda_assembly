// assumes running by itself, and has full control over mem until done is 0.
// also assumes valid sent data, because it's directly connected to server

module program_loader #(
        parameter WORD_SUBWIDTH = 7,
        parameter WORD_PARTS = 3,
        parameter WORD_PART_BITS = 2 // 2**WORD_PART_BITS >= WORD_PARTS
        )
        (
        input clk,
        
        input listen, // expected to rise when loading should start
                      // shouldn't have another midway through loading program
        
        input [WORD_SUBWIDTH:0] rx_data, // recieved data, a byte by default.
        input rx_done_recieving, // expected to be pulsed when an element is received
        
        output reg[WORD_SUBWIDTH-1:0] address, // address to write to, 
                                               // 7 bits for address by default
        output reg write, // 1 means data should be written
        output reg[WORD_SUBWIDTH-1:0] write_data[WORD_PARTS], // data to write to address
        
        output reg done, // 1 when done recieving
        
        // for sending checksum
        output reg[WORD_SUBWIDTH:0] tx_data,
        output reg tx_dv
        
        , output reg[7:0] test_led
    );
    reg[WORD_PART_BITS-1:0] position = 0; // position in filling temp
    reg[WORD_SUBWIDTH-1:0] temp[WORD_PARTS]; // repeatedly filled, then dumped into memory
    reg[WORD_SUBWIDTH:0] checksum = 0; // all data is added to it (with carry), then sent in the end
    
    initial begin
        done <= 1; // unsure if to make this start at 0 to make it start immediately
        address <= -1; // we repeatedly add to it
    
        test_led <= 0;
    end
    
    always @(posedge clk) begin
        tx_dv <= 0; // so setting it to 1 makes a pulse
        write <= 0; // so setting it to 1 makes a pulse
        
        if (listen) begin
            done = 0;
        end
        
        if (rx_done_recieving && !done) begin
            if (rx_data[WORD_SUBWIDTH] == 1) begin // if leftmost bit is 1, done
                done = 1;
                write = 0;
                tx_data = checksum;
                tx_dv <= 1; // pulsed
            end
            else begin
                temp[position] = rx_data;
                
                checksum += rx_data; // update checksum
//                checksum = checksum + 1;
//                test_led = position;
                    
                position ++;
                if (position == WORD_PARTS) begin
                    position = 0;
                    address++;
                    write_data = temp;
                    write = 1; // pulsed
                end
            end
        end
    end
endmodule

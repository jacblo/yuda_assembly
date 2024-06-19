module memory_controller(
    input clk,
    
    input reset, // when set to 1, all memory is cleared on next clock cycle.

    input [6:0] IP, // instruction pointer
    output reg [6:0] instruction[3], // instruction at that position
    
    input [6:0] address, // for instructions that use memory
    input write, // 0 is only read, 1 is write
    input [6:0] write_data[3], // data to write if applicable
    output reg [6:0] read_data[3] // data read for instructions
    );
    reg [6:0] memory[100][3]; // 100 items, each 3 numbers from 0 to 99 so 7 bits each
    
    initial begin
        memory <= '{default: 0};
    end

    // returns 0 for out of bounds even though programs can't access that, because syscalls that
    // print until null terminator don't need extra checks for our of bounds, rather the first out
    // of bounds request will return null, so they'll stop anyway.
    always_comb begin
        if (IP < 100)
            instruction = memory[IP];
        else
            instruction = {0,0,0};
        
        if (address < 100)
            read_data = memory[address];
        else
            read_data = {0,0,0};
    end
    
    always @(posedge clk) begin
        if (reset) begin
            memory = '{default: '0}; // clear array
        end
        else if (write) begin
            memory[address] = write_data;
        end
    end
endmodule

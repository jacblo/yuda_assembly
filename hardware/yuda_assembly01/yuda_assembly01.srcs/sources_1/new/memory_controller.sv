module memory_controller(
    input clk,
    input [6:0] IP, // instruction pointer
    output wire [6:0] instruction[3], // instruction at that position
    
    input [6:0] address, // for instructions that use memory
    input write, // 0 is only read, 1 is write
    input [6:0] write_data[3], // data to write if applicable
    output wire [6:0] read_data[3] // data read for instructions
    );
    reg [6:0] memory[100][3]; // 100 items, each 3 numbers from 0 to 99 so 7 bits each
    
    initial begin
        memory <= '{default: 0};
    end
    
    assign instruction = memory[IP];
    assign read_data = memory[address];
    
    always @(posedge clk) begin
        if (write) begin
            memory[address] = write_data;
        end
    end
endmodule

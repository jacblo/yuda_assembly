module memory_controller_tb();
    reg clk = 0;
    reg [6:0] IP; // instruction pointer
    wire [6:0] instruction[3]; // instruction at that position
    
    reg [6:0] address; // for instructions that use memory
    reg write = 0; // 0 is only read, 1 is write
    reg [6:0] write_data[3]; // data to write if applicable
    wire [6:0] read_data[3]; // data read for instructions
    
    memory_controller dut(
        .clk(clk),
        .IP(IP),
        .instruction(instruction),
        .address(address),
        .write(write),
        .write_data(write_data),
        .read_data(read_data)
    );
    
    initial begin
        IP = 12;
        address = 14;
        #12
        address = 16;
        write = 1;
        write_data = {3,2,1};
        #3
        clk = 1;
        IP = 16;
        #10
        clk = 0;
    end
endmodule

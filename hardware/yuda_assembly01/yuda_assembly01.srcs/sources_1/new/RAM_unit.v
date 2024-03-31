`timescale 1ns / 1ps

module RAM_unit(
    input [7:0] instruction_address,    // address from which to load 3 words representing an instruction
    input instruction_waiting,          // true if the instruction load unit is waiting for a memory read
    
    input [7:0] mem_op_address,         // address which a memory operation is related to
    input mem_op_waiting,               // true if an operation relating to memory is waiting to be executed
    input mem_op_R_or_w,                // false to mean the operation waiting wants to read, true: want's to write
    input [7:0] mem_op_data,            // if writing, this is the data to write
    
    output reg instruction_ready,       // telling the instruction load unit that its requested words are ready
    output reg [23:0] instruction_out,  // 3 * 7 bit words. each instruction is 3 words.
    output reg mem_op_ready,            // telling the executing operation that its requested words are ready
                                        //      or that the write operation has been completed
    output reg [7:0] mem_op_out         // one word of output for read operations
    );
    
    // RAM
    reg [7:0] memoryArray [0: 2**8 - 1];

    // instruction requests
    always @(instruction_waiting) begin
        if (instruction_waiting) begin
            instruction_out = {memoryArray[mem_op_address], memoryArray[mem_op_address+1], memoryArray[mem_op_address+2]};
            instruction_ready = 1;
        end else
            instruction_ready = 0;
    end
    
    // mem operation requests
    always @(mem_op_waiting) begin
        if (mem_op_waiting) begin
            if (mem_op_R_or_w) // if write
                memoryArray[mem_op_address] = mem_op_data;
            else // if read
                mem_op_out = memoryArray[mem_op_address];
            
            mem_op_ready = 1;
        end else
            mem_op_ready = 0;
    end
    
    
endmodule

`timescale 1ns / 1ps

module ALU_tb();
    reg [1:0] control_operation;
    reg [6:0] A[3];
    reg [6:0] B[3];
    wire [6:0] out[3];
    wire cmp_flags[2]; // {less, eq}
    
    ALU tester(
        control_operation,
        A[0], A[1], A[2],
        B[0], B[1], B[2],
        out[0], out[1], out[2],
        cmp_flags[0], cmp_flags[1]
    );
    
    // check all these with calculator, calculations are mod 1 million
    initial begin
        A = {0,0,0};
        B = {12,34,56};
        control_operation = 'b11; // A-B
        #30
        A = {99,99,97};
        B = {0,0,10};
        control_operation = 'b01; // A+B
        #30
        A = {2,15,0};
        control_operation = 'b10; // A
        #30
        control_operation = 'b00; // A
        #30
        A = {0,0,0};
        B = {87,56,44};
        control_operation = 'b01; // A + B
        #30
        A = {99,99,99};
        B = {99,99,99}; // checking correct double overflow, when greater than a million and also 2^20, result should be 999998
        control_operation = 'b01; // A + B
        
        // testing comparing
        #30
        A = {12,5,2}; // eq
        B = {12,5,2};
        control_operation = 'b11; // A-B
        #30
        A = {12,5,1}; // A=B
        B = {12,5,2};
        control_operation = 'b11; // A-B
        #30
        A = {11,5,2}; // A<B
        B = {12,5,2};
        control_operation = 'b11; // A-B
        #30
        A = {12,4,2}; // A<B
        B = {12,5,2};
        control_operation = 'b11; // A-B
        #30
        A = {12,5,3}; // A>B
        B = {12,5,2};
        control_operation = 'b11; // A-B
        #30
        A = {13,5,2}; // A>B
        B = {12,5,2};
        control_operation = 'b11; // A-B
        
    end
endmodule

module adder(
    input [6:0] A[3],
    input [6:0] B[3],
    output [6:0] C[3],
    output overflow // 1 if overflowed 0 else
    );
    wire [6:0] temp2;
    
    assign C[2] = (A[2] + B[2]) % 100;
    assign temp2 = A[1] + B[1] + ( (A[2] + B[2]) / 100 );
    assign C[1] = temp2 % 100;
    assign C[0] = (temp2/100 + A[0] + B[0]) % 100;
    assign overflow = ( (temp2/100 + A[0] + B[0]) >= 100 ); // if before modulo it was bigger
endmodule


/*
control_operation:
    0bX0 = 0: out = A          for mov
    0b01 = 1: out = A+B        for add
    0b11 = 3: out = A-B        for sub

alternatively but equivilantly:
    bit 1 is for negating B meaning B=-B
    bit 0 selects either return A or A+B respectively
    
cmp_flags:
    overflow, eq
    if overflowed when doing A-B then A>=B if negative then that's A<B
    which is needed 
*/
localparam [6:0] ZERO[3] = {0,0,0};
module ALU(
    input [1:0] control_operation,
    input [6:0] A[3],
    input [6:0] B[3],
    output reg [6:0] out[3],
    output reg cmp_flags[2] // {oveflow, eq}, if overflowed when doing A-B then A>B
    );
    
    assign cmp_flags[1] = (out == ZERO);
    
    reg [6:0] adder_B[3];
    
    // 99's complement of B
    wire [6:0]negative_B_99[3];
    assign negative_B_99[2] = 99-B[2];
    assign negative_B_99[1] = 99-B[1];
    assign negative_B_99[0] = 99-B[0];
    
    // 100's complement of B
    wire [6:0]negative_B[3];
    adder add_1(negative_B_99, {0,0,1}, negative_B); // add one to 99's complement
    
    wire [6:0] adder_out[3];
    adder add(A,adder_B,adder_out, cmp_flags[0]); // its overflow is sent to cmp_flags output
    
    always_comb begin
        case (control_operation[1])
            0: adder_B = B;
            1: adder_B = negative_B;
        endcase
        
        case (control_operation[0])
            0: out <= A;
            1: out <= adder_out;
        endcase
    end
endmodule

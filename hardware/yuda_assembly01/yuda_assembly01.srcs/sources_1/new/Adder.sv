module Adder(
    input [6:0] A[3],
    input [6:0] B[3],
    output [6:0] C[3]
    );
    wire [6:0] temp2;
    
    assign C[2] = (A[2] + B[2]) % 100;
    assign temp2 = A[1] + B[1] + ( (A[2] + B[2]) / 100 );
    assign C[1] = temp2 % 100;
    assign C[0] = (temp2/100 + A[0] + B[0]) % 100;
endmodule

module adder(
    input [6:0] A[3],
    input [6:0] B[3],
    output reg [6:0] C[3],
    output overflow // 1 if overflowed 0 else
    );
    // this is all equivilant to this - 
    //    assign C[2] = (A[2] + B[2]) % 100;
    //    assign temp = A[1] + B[1] + ( (A[2] + B[2]) / 100 );
    //    assign C[1] = temp % 100;
    //    assign C[0] = (temp/100 + A[0] + B[0]) % 100;
    //    assign overflow = ( (temp/100 + A[0] + B[0]) >= 100 ); // if before modulo it was bigger
    // but in this implementation, we assume legal inputs (numbers from 0 to 99), and don't need modulo here
    // really we are doing modulo but assuming result of division is 0 or 1, so just one subtraction necessary.
    // it could be argued that it's more robust without legality assumption but that's wrong, because the
    // previous implementation wouldn't return anything meaningful to illegal input, so it was just wasteful
    // to calculate an expensive modulo. details on how this algorithm works appear in the writeup.
    
    
    reg [7:0] temp; // extra bit for overflow
    reg [7:0] temp2; // extra bit for overflow
    reg carry;
    assign overflow = carry; // if last one has carry then overflowed
    
    always_comb begin
        // right most number
        temp = A[2] + B[2];
        temp2 = temp - 100;
        if (!temp2[7]) begin // not negative means A[2]+B[2] > 99, and due to legal input: A[2]+B[2] < 198 = 99+99
            C[2] = temp2;
            carry = 1;
        end
        else begin
            C[2] = temp;
            carry = 0;
        end
        
        // middle number
        temp = A[1] + B[1] + carry;
        temp2 = temp - 100;
        if (!temp2[7]) begin // not negative means A[1]+B[1]+carry > 99, and due to legal input: A[1]+B[1]+carry < 199 = 99+99+1
            C[1] = temp2;
            carry = 1;
        end
        else begin
            C[1] = temp;
            carry = 0;
        end
        
        // left most number
        temp = A[0] + B[0] + carry;
        temp2 = temp - 100;
        if (!temp2[7]) begin // not negative means A[0]+B[0]+carry > 99, and due to legal input: A[0]+B[0]+carry < 199 = 99+99+1
            C[0] = temp2;
            carry = 1;
        end
        else begin
            C[0] = temp;
            carry = 0;
        end
    end
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
    if overflowed when doing A-B then A>=B if negated then that's A<B
    which is needed
*/
localparam [6:0] ZERO[3] = {0,0,0};
module ALU(
    input [1:0] control_operation,
    input [6:0] A[3],
    input [6:0] B[3],
    output reg [6:0] out[3],
    output reg cmp_flags[2] // {less, equal}, negative defined using 10's complement
    );
    
    assign cmp_flags[0] = (out[0] >= 50); // in 10's complement this means a negative number
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
    adder add(A,adder_B,adder_out); // its overflow is thrown out, couldv'e been useful but this
                                    // implementation no longer uses it, hasn't been removed as it
                                    // will be optimized out anyway so why not keep a feature.
    
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

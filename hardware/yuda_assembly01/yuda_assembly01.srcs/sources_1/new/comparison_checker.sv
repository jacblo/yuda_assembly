module comparison_checker(
    input cmp_flags[2],
    input requires_less, requires_greater, requires_eq, requires_ne, // assumed that only 1 is 1
    output reg satisfied
    );
    wire less = cmp_flags[0]; // means greater than or equal
    wire equal = cmp_flags[1];
    
    always_comb begin
        satisfied = 1;
        if (requires_less) begin
            if (!less) satisfied = 0;
        end
        else if (requires_greater) begin
            if (less || equal) satisfied = 0;
        end
        else if (requires_eq) begin
            if (!equal) satisfied = 0;
        end
        else if (requires_ne) begin
            if (equal) satisfied = 0;
        end
    end
endmodule

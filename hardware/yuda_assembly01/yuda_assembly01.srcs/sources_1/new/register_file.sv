module register_file(
    input clk,

    // program register use
    input [1:0] read1, read2, writeReg,
    input [6:0] writeData[3], // when written to IP assumed that it's under 100
                              // exception for that should handled seperately
    input RegWrite,

    output reg [6:0] Data1[3], Data2[3],

    // syscall direct read from AX
    output [6:0] AX[3],

    // instruction pointer
    input override, // when it is 1, nothing changes apart from reset.
    input dont_inc, // when it is 1, IP isn't incremented
    input reset, // all registers are reset on rising edge
    
    input [6:0] newIP,
    input WriteIP, // 1 means IP should be overwritten with newIP, otherwise it's simply incremented

    output [6:0] IP,
    output reg running // always 1 until IP becomes >= 100
    );
    
    reg [6:0] registers[2][3], IP_reg; // registers is two items each a 3 element array, ip_reg is
                                       // as the name implies, a register to store instruction ptr
    /* legal ranges:
        registers:
            00 00 00 - 99 99 99
        IP_reg:
            00 - 99
    */


    assign IP = IP_reg;
    assign AX = registers[0]; // seperate because it's used in syscalls

    initial begin
        running = 1;
        IP_reg = 0;
        registers[0] = {0,0,0};
        registers[1] = {0,0,0};
    end

    // register loading
    always_comb begin
        case (read1)
            0: Data1 = registers[0];
            1: Data1 = registers[1];
            2: Data1 = {0,0,IP_reg};
        endcase

        case (read2)
            0: Data2 = registers[0];
            1: Data2 = registers[1];
            2: Data2 = {0,0,IP_reg};
        endcase
    end

    // register setting
    reg last_dont_inc = 0;
    always @(posedge clk, posedge reset) begin
        if (reset) begin // if was just reset
            IP_reg = 0;
            registers[0] = {0,0,0};
            registers[1] = {0,0,0};
        end

        else if (override); // so we don't save stuff while overrided, we're gonna rerun the instruction anyway
        
        else begin
            if (WriteIP) begin
                IP_reg = newIP;
            end
            else if (running && !(dont_inc && !last_dont_inc)) begin // if new dont_inc
                IP_reg ++;
            end
            last_dont_inc = dont_inc; // update it
        
            if (RegWrite) begin
                case (writeReg)
                    0: registers[0] = writeData;
                    1: registers[1] = writeData;
                    2: IP_reg = writeData[2];
                endcase
            end
            
            running = IP_reg < 100;
        end
    end
endmodule

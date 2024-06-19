`timescale 1ns / 1ps

module register_file_tb();
    reg clk;
    
    // IP
    reg WriteIP; // if set to 1, IP is set to newIP,
                    // otherwise incremented once per cycle
    reg [6:0] newIP;
    wire [6:0] IP; // output IP
    wire running; // starts as 1, becomes 0 when IP >= 100
    
    // register loading
    reg [1:0] read1; // first register to output
    reg [1:0] read2; // second register to output
    wire [6:0] Data1[3]; // first reg output
    wire [6:0] Data2[3]; // second reg output
    wire [6:0] AX[3]; // seperate read access to ax for syscalls

    // register setting
    reg override;
    reg dont_inc;
    reg reset;
    reg RegWrite; // 1 if register should be written
    reg [1:0] writeReg; // register to set
    reg [6:0] WriteData[3];
    
    // for synth or impl simulation
    register_file tester(
        clk,
        read1, read2, writeReg,        
        WriteData,//[0], WriteData[1], WriteData[2],
        RegWrite,
        Data1,//[0], Data1[1], Data1[2],
        Data2,//[0], Data2[1], Data2[2],
        AX,//[0], AX[1], AX[2],
        override,
        dont_inc,
        reset,
        newIP,
        WriteIP,
        IP,
        running
    );
    
    // for behav sim
    /*register_file tester(
        clk,
        read1, read2, writeReg,        
        WriteData,
        RegWrite,
        Data1,
        Data2,
        newIP,
        WriteIP,
        IP,
        running
    );*/


    initial begin
        reset = 0;
        clk = 0;
        WriteIP = 0;
        RegWrite = 0;
        #300
        clk = 1;
        #100
        newIP = 0;
        
        read1 = 0;
        read2 = 1;
        RegWrite = 1;
        writeReg = 0;
        WriteData = {12,4,2};
        
        #200
        clk = 0;
        
        #300
        clk = 1;
        #100
        WriteIP = 1;
        newIP = 12;
        RegWrite = 0;
        
        #200
        clk = 0;
        
        #300
        clk = 1;
        #100
        WriteIP = 0;
        #200
        clk = 0;
        #300
        clk = 1;
        read1 = 2;
        #300
        clk = 0;
        #300
        clk = 1;
        read2 = 2;
        #300
        clk = 0;
        #300
        clk = 1;
        #100
        WriteIP = 1;
        newIP = 98;
        #200
        clk = 0;
        #300
        clk = 1;
        #100
        WriteIP = 0;
        #200
        clk = 0;
        #300
        clk = 1;
        #300
        clk = 0;
        #300
        clk = 1;
        #300
        clk = 0;
        #300
        clk = 1;
        #100
        WriteIP = 1;
        newIP = 12;
        #200
        clk = 0;
        #300
        clk = 1;
        #100
        WriteIP = 0;
        RegWrite = 0;
        #200
        clk = 0;
        #300
        clk = 1;
        #100
        RegWrite = 1;
        writeReg = 2; // write to IP
        WriteData = {0,0,5};
        #200
        clk = 0;
        #300
        clk = 1;
        #100
        RegWrite = 0;
        #200
        clk = 0;
        #300
        clk = 1;
        #300
        clk = 0;
        reset = 1;
        #300
        reset = 0;
        #300
        clk = 1;
        #300
        clk = 0;
        #300
        clk = 1;
        #100
        WriteIP = 1;
        newIP = 98;
        #200
        clk = 0;
        #300
        clk = 1;
        #100
        WriteIP = 0;
        #200
        clk = 0;
        #300
        clk = 1;
        #300
        clk = 0;
        #300
        clk = 1;
    end

endmodule

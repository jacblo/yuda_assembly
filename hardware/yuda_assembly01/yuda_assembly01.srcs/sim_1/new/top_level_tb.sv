`timescale 1ns / 1ps

module top_level_tb();
    reg clk;
    top_level_circuit tester(clk);
    
    initial begin
        for (int i = 0; i < 3; i = i + 1) begin // run a few times in a row
            // send 0xff to start loading program
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.rx_data = 'hff; // start loading program
            top_level_circuit.uart_controller.o_rx_dv = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.o_rx_dv = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.rx_data = 01; // 01 is opcode for mov reg, const
            top_level_circuit.uart_controller.o_rx_dv = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.o_rx_dv = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.rx_data = 01; // mov into AX
            top_level_circuit.uart_controller.o_rx_dv = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.o_rx_dv = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.rx_data = 0; // load 0 into AX
            top_level_circuit.uart_controller.o_rx_dv = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.o_rx_dv = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.rx_data = 26; // syscall 6 (send words starting at address AX until null-terminator)
            top_level_circuit.uart_controller.o_rx_dv = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.o_rx_dv = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.rx_data = 6;
            top_level_circuit.uart_controller.o_rx_dv = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.o_rx_dv = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.rx_data = 0;
            top_level_circuit.uart_controller.o_rx_dv = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.o_rx_dv = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.rx_data = 00; // 00 is opcode for ret
            top_level_circuit.uart_controller.o_rx_dv = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.o_rx_dv = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.rx_data = 0;
            top_level_circuit.uart_controller.o_rx_dv = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.o_rx_dv = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.rx_data = 0;
            top_level_circuit.uart_controller.o_rx_dv = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.o_rx_dv = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.rx_data = 10; // jmp 0
            top_level_circuit.uart_controller.o_rx_dv = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.o_rx_dv = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.rx_data = 0;
            top_level_circuit.uart_controller.o_rx_dv = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.o_rx_dv = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.rx_data = 0;
            top_level_circuit.uart_controller.o_rx_dv = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.o_rx_dv = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.rx_data = 'hfe; // done sending
            top_level_circuit.uart_controller.o_rx_dv = 1;
            #10
            clk = 1;
            #10
            clk = 0;
            top_level_circuit.uart_controller.o_rx_dv = 1;
            #10
            clk = 1;
            
            for (int j = 0; j < 40; j = j + 1) begin // run for a little while
                for (int k = 0; k < 3; k = k + 1) begin
                    #10
                    clk = 0;
                    top_level_circuit.uart_controller.o_tx_rdy = 0;
                    #10
                    clk = 1;
                end
                #10
                clk = 0;
                top_level_circuit.uart_controller.o_tx_rdy = 1; // so every few cycles it is ready, patch because not actually connected to uart
                #10
                clk = 1;
            end 
        end
    end
endmodule

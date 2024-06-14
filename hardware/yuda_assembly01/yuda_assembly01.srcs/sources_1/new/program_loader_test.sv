module program_loader_test(
    input clk,
    input uart_rx,
    output uart_tx,
    
    output led[3:0],
    output[7:0] ja,
    input btn[1:0]
    );
    wire uart_ready;
    
    //
    reg listen = 0;
    
    // outputs of program_loader
    wire[7:0] rx_data;
    wire rx_dv;
    wire[6:0] address;
    wire write;
    wire[6:0] write_data[3];
    wire done;
    wire [7:0] tx_data;
    wire tx_dv;
    
    // wire[7:0] test_led;
    
    reg started = 0;
    
    assign led[0] = done;
    assign led[1] = started;
//    assign led[2] = test_led;
//    assign led[3] = instruction[0][0]; // so memory isn't fully optimized out...
    // assign ja = test_led;
    
    program_loader pl(
        clk,
        listen,
        rx_data,
        rx_dv,
        address,
        write,
        write_data,
        done,
        tx_data,
        tx_dv
        // ,test_led
    );
    
    UART #(
        .CLK_FREQ(12_000_000),
        .BAUD_RATE(115200)//2_000_000)
        ) uart_controller(
        .i_clk(clk),
        .i_rx(uart_rx),
        .o_tx(uart_tx),
        .i_tx_data(tx_data),
        .i_tx_dv(tx_dv),
        .o_tx_rdy(uart_ready),
        .o_rx_dv(rx_dv),
        .o_rx_data(rx_data)
    );
    
    wire [6:0] read_data[3];
    memory_controller mem(
        .clk(clk),
        .address(address),
        .write(write),
        .write_data(write_data),
        .read_data(read_data)
    );
    
    
    assign ja = read_data[1];
    always @(btn[0]) begin
        if (btn[0] && uart_ready && !started) begin
            listen = 1; // meaning it will only read data once even if ready, unless set back to 0
            started = 1;
        end
    end
endmodule

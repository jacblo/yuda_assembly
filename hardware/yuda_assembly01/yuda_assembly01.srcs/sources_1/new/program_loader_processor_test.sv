module program_loader_processor_test(
    input clk,
    input uart_rx,
    output uart_tx,
    
    output led[3:0],
    output[7:0] ja,
    input btn[1:0]
    );
    
    wire uart_ready;
    
    //
    reg listen;
    
    // outputs of program_loader
    wire[7:0] rx_data;
    wire rx_dv;
    wire[6:0] address;
    wire write;
    wire[6:0] write_data[3];
    wire done;
    wire [7:0] tx_data;
    wire tx_dv;
    
    
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
    );
    
    UART #(
        .CLK_FREQ(12_000_000),
        .BAUD_RATE(2_000_000)
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
    
    //          Processor
    wire processor_clk;

    // for reading and writing when execution frozen
    wire mem_clk; // so execution can be frozen seperately from memory

    reg reset = 0;

    wire override; // 1 means memory is under external control
    wire [6:0] override_mem_address;
    wire [6:0] override_mem_write_data[3];
    wire override_mem_write;
    
    wire [6:0] override_mem_read_data[3]; // used during override, can be anything when override=0

    wire [6:0] AX[3]; // for syscall's to use as argument
    
    // to call syscalls, report exceptions, and end execution
    wire is_syscall, unknown_reg, unknown_op, is_ret; // all are set to 1 when encountered
    wire [6:0] syscall_constant; // constant, used in syscall

    processor_internals processor(processor_clk, mem_clk, reset, override, override_mem_address,
        override_mem_write_data, override_mem_write, override_mem_read_data, AX, is_syscall,
        unknown_reg, unknown_op, is_ret, syscall_constant);

    reg running;
    assign processor_clk = clk & running; // so when running it's enabled
    assign mem_clk = clk; // it's always running
    assign override = !running;
    
    reg started = 0;
    initial begin
//        listen = 0;
        listen = 1;
        running = 0;
    end

    assign override_mem_address = address;
    assign override_mem_write_data = write_data;
    assign override_mem_write = write;

    // leds
    assign led[0] = done;
    assign led[1] = running;
    assign led[2] = is_ret;
    assign led[3] = listen;
    assign ja = AX[2];

    reg [2:0]done_count = 1; // counts how long been done
    always @(posedge clk) begin
        reset = 0; // so making it 1 is a pulse
        listen = 0; // so making it 1 is a pulse

//        if (started) begin
            if (done) begin
                if (done_count != 0)
                    done_count ++;
                if (done_count == -1) // done 6 times
                    reset = 1; // reset processor before running
                if (done_count == 0) // done 7 times
                    running = 1; // start running
            end

            if (is_ret & running) begin
                listen = 1;
                running = 0;
            end
            
//        end

//        else if (btn[0]) begin
//            listen = 1;
//            started = 1;
//        end
    end
endmodule

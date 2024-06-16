module top_level_circuit(
    input clk, // clock

    // for communication (I/O)
    input uart_rx,
    output uart_tx,
    
    // for testing
    output led[3:0], // 4 output leds for testing
    output[7:0] ja, // 8 output leds for testing
    input btn[1:0] // two input buttons for testing
    );

    //          UART Controller
    wire [7:0] uart_output_data;
    wire uart_output_send;
    wire uart_ready;

    wire uart_input_done_receiving;
    wire [7:0] uart_input_data;

    UART #(
        .CLK_FREQ(12_000_000),
        .BAUD_RATE(2_000_000)
        ) uart_controller(
        // physical ports
        .i_clk(clk),
        .i_rx(uart_rx),
        .o_tx(uart_tx),

        // output
        .i_tx_data(uart_output_data),
        .i_tx_dv(uart_output_send),
        .o_tx_rdy(uart_ready),
        
        // input
        .o_rx_dv(uart_input_done_receiving),
        .o_rx_data(uart_input_data)
    );
    

    
    //          Processor
    wire processor_clk;

    // for reading and writing when execution frozen
    wire mem_clk; // so execution can be frozen seperately from memory

    wire reset = 0;

    wire override; // 1 means memory is under external control
    wire [6:0] override_mem_address;
    wire [6:0] override_mem_write_data[3];
    wire override_mem_write;
    
    wire [6:0] override_mem_read_data[3]; // used during override, can be anything when override=0

    wire [6:0] proc_AX[3]; // for syscall's to use as argument
    
    // to call syscalls, report exceptions, and end execution
    wire is_syscall, unkown_reg, unknown_op, is_ret; // all are set to 1 when encountered
    wire [6:0] syscall_constant; // constant, used in syscall

    processor_internals processor(processor_clk, mem_clk, reset, override, override_mem_address,
        override_mem_write_data, override_mem_write, override_mem_read_data, proc_AX, is_syscall,
        unkown_reg, unknown_op, is_ret, syscall_constant);



    //          Program loader
    wire pl_clk;
    wire pl_listen;
    wire pl_rx_data;
    wire pl_rx_done_receiving;
    wire pl_address;
    wire pl_write;
    wire pl_write_data;
    wire pl_done;
    wire pl_tx_data;
    wire pl_tx_dv;

    program_loader pl(
        pl_clk,
        pl_listen,
        pl_rx_data,
        pl_rx_done_receiving,
        pl_address,
        pl_write,
        pl_write_data,
        pl_done,
        pl_tx_data,
        pl_tx_dv
    );


    //          IO from Syscalls handler
    input_output syscall_handler(
        clk,
        is_syscall,
        syscal_number,
        AX,
        rx_data,
        rx_done_receiving,

        input clk,
        input is_syscall, // set to 1 to mean syscall should be run
        input [6:0]syscall_number,
        input [6:0]AX[3],

        // for receiving input
        input [7:0] rx_data, // received data, a byte by default.
        input rx_done_receiving, // expected to be pulsed when an element is received

        // for sending output
        input tx_ready,
        output reg[7:0] tx_data,
        output reg tx_dv,

        output reg done
    );


    //          Exception handler
    

    //          IO controller



    // control -> processor
    reg running;
    assign processor_clk = clk & running; // so when running it's enabled
    assign mem_clk = clk; // it's always running
    assign override = !running;



endmodule
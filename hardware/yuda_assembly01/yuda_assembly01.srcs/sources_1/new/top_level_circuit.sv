module top_level_circuit(
    input clk_in, // clock

    // for communication (I/O)
    input uart_rx,
    output uart_tx,
    
    // for testing
    output led[3:0], // 4 output leds for testing
    output[7:0] ja, // 8 output leds for testing
    input btn[1:0] // two input buttons for testing
    );
    
    wire clk;
    clk_wiz_0 instance_name(
        // Clock out ports
        .clk_70Mhz(clk),     // output clk_300Mhz
        // Clock in ports
        .clk_in1(clk_in)      // input clk_in1
    );

    //          UART Controller
    reg [7:0] uart_output_data;
    reg uart_output_send;
    wire uart_send_ready;

    wire uart_input_done_receiving;
    wire [7:0] uart_input_data;

    // UART_wrapper_out_of_context uart_controller(
    UART #(
        .CLK_FREQ(70_000_000),
        .BAUD_RATE(2_000_000)
        ) uart_controller(
        // physical ports
        .i_clk(clk),
        .i_rx(uart_rx),
        .o_tx(uart_tx),

        // processor output
        .i_tx_data(uart_output_data),
        .i_tx_dv(uart_output_send),
        .o_tx_rdy(uart_send_ready),
            
        // processor input
        .o_rx_dv(uart_input_done_receiving),
        .o_rx_data(uart_input_data)
    );

    
    //          Processor
    wire proc_clk;
    wire proc_mem_clk;
    
    wire proc_reset;
    wire proc_override;
    reg [6:0] proc_override_mem_address;
    reg [6:0] proc_override_mem_write_data[3];
    reg proc_override_mem_write;
    wire [6:0] proc_override_mem_read_data[3];
    
    wire [6:0] proc_AX[3];
    wire [6:0] proc_IP;
    wire proc_is_syscall, proc_unknown_reg, proc_unknown_op, proc_is_ret;
    wire [6:0] proc_syscall_constant;

    processor_internals processor(
        proc_clk,
        proc_mem_clk,
        proc_reset,
        proc_override,
        proc_override_mem_address,
        proc_override_mem_write_data,
        proc_override_mem_write,
        proc_override_mem_read_data,
        proc_AX,
        proc_IP,
        proc_is_syscall,
        proc_unknown_reg,
        proc_unknown_op,
        proc_is_ret,
        proc_syscall_constant
    );


    //          Program loader
    wire pl_listen;
    wire [7:0] pl_rx_data;
    wire pl_rx_done_receiving;
    
    wire [6:0] pl_address;
    wire pl_write;
    wire [6:0] pl_write_data[3];
    
    wire pl_done;
    
    wire [7:0] pl_tx_data;
    wire pl_tx_dv;
    wire pl_tx_ready;

    program_loader pl(
        clk,
        pl_listen,
        pl_rx_data,
        pl_rx_done_receiving,
        pl_address,
        pl_write,
        pl_write_data,
        pl_done,
        pl_tx_data,
        pl_tx_dv,
        pl_tx_ready
    );


    //          IO from Syscalls handler
    wire [6:0] syscall_current_IP;

    wire syscall_is_syscall;
    wire [6:0] syscall_syscall_number;
    wire [6:0] syscall_AX[3];
    wire syscall_unknown_sys_number;

    wire [6:0] syscall_address;
    wire syscall_write;
    wire [6:0] syscall_write_data[3]; 
    wire [6:0] syscall_read_data[3];

    wire [7:0] syscall_rx_data;
    wire syscall_rx_done_receiving;
    
    wire syscall_tx_ready;
    wire [7:0] syscall_tx_data;
    wire syscall_tx_dv;
    
    wire syscall_done;

    input_output syscall_handler(
        clk,
        syscall_current_IP,
        syscall_is_syscall,
        syscall_syscall_number,
        syscall_AX,
        syscall_unknown_sys_number,
        syscall_address,
        syscall_write,
        syscall_write_data,
        syscall_read_data,
        syscall_rx_data,
        syscall_rx_done_receiving,
        syscall_tx_ready,
        syscall_tx_data,
        syscall_tx_dv,
        syscall_done
    );


    //          Exception handler
    wire ex_unknown_reg; 
    wire ex_unknown_op;
    wire ex_unknown_syscall;
    wire ex_is_ret, ex_running; // if is_ret and running, then stop program

    wire ex_tx_ready;
    wire [7:0] ex_tx_data;
    wire ex_tx_dv;
    
    wire ex_done;
    
    exception_handler ex_handler(
        clk,
        ex_unknown_reg, 
        ex_unknown_op,
        ex_unknown_syscall,
        ex_is_ret,
        ex_running,
        ex_tx_ready,
        ex_tx_data,
        ex_tx_dv,
        ex_done
    );


    //          IO controller
    wire io_cont_is_syscall;
    wire io_cont_unknown_reg;
    wire io_cont_unknown_op;
    wire io_cont_is_ret;

    wire io_cont_io_done;
    wire io_cont_exception_done;
    wire io_cont_loader_done;
    
    wire [7:0] io_cont_rx_data;
    wire io_cont_rx_done_receiving;
    
    wire io_cont_freeze;
    wire io_cont_reset;
    wire [1:0] io_cont_chip_select;
    wire io_cont_listen;

    IO_control io_cont(
        clk,
        io_cont_is_syscall,
        io_cont_unknown_reg,
        io_cont_unknown_op,
        io_cont_is_ret,
        io_cont_io_done,
        io_cont_exception_done,
        io_cont_loader_done,
        io_cont_rx_data,
        io_cont_rx_done_receiving,
        io_cont_freeze,
        io_cont_reset,
        io_cont_chip_select,
        io_cont_listen
    );



    //                  Connections
    // control -> processor
    assign proc_clk = clk & !io_cont_freeze; // so when running it's enabled
    assign proc_mem_clk = clk; // it's always running

    assign proc_override = io_cont_freeze;
    assign proc_reset = io_cont_reset;

    // processor -> control
    assign io_cont_is_syscall = proc_is_syscall;
    assign io_cont_unknown_reg = proc_unknown_reg;
    assign io_cont_unknown_op = proc_unknown_op;
    assign io_cont_is_ret = proc_is_ret;

    // processor -> syscall
    assign syscall_current_IP = proc_IP;

    assign syscall_is_syscall = proc_is_syscall;
    assign syscall_AX = proc_AX;
    assign syscall_syscall_number = proc_syscall_constant;
    assign syscall_read_data = proc_override_mem_read_data;


    // processor & syscall -> exception
    assign ex_unknown_op = proc_unknown_op;
    assign ex_unknown_reg = proc_unknown_reg;
    assign ex_is_ret = proc_is_ret;

    assign ex_unknown_syscall = syscall_unknown_sys_number;

    // control -> exception
    assign ex_running = !io_cont_freeze || !syscall_done; // if the program is really running, in syscall or not

    
    // io chips -> control
    assign io_cont_io_done = syscall_done;
    assign io_cont_exception_done = ex_done;
    assign io_cont_loader_done = pl_done;

    // control -> program loader
    assign pl_listen = io_cont_listen;


    // uart -> io chips
    assign syscall_rx_done_receiving = uart_input_done_receiving;
    assign pl_rx_done_receiving = uart_input_done_receiving;
    assign io_cont_rx_done_receiving = uart_input_done_receiving;

    assign syscall_rx_data = uart_input_data;
    assign pl_rx_data = uart_input_data;
    assign io_cont_rx_data = uart_input_data;

    // writing ready not ignore what was just sent
    wire uart_send_real_ready;
    assign uart_send_real_ready = uart_send_ready && !uart_output_send;

    // override logic
    assign pl_tx_ready = uart_send_real_ready && (io_cont_chip_select==0);
    assign syscall_tx_ready = uart_send_real_ready && (io_cont_chip_select==1);
    assign ex_tx_ready = uart_send_real_ready && (io_cont_chip_select==2);

    always_comb begin
        // memory override
        case (io_cont_chip_select)
            0: begin
                proc_override_mem_address = pl_address;
                proc_override_mem_write_data = pl_write_data;
                proc_override_mem_write = pl_write;
            end

            1: begin
                proc_override_mem_address = syscall_address;
                proc_override_mem_write_data = syscall_write_data;
                proc_override_mem_write = syscall_write;
            end
        endcase
    
        // uart output
        case (io_cont_chip_select)
            0: begin
                uart_output_data = pl_tx_data;
                uart_output_send = pl_tx_dv;
            end

            1: begin
                uart_output_data = syscall_tx_data;
                uart_output_send = syscall_tx_dv;
            end

            2: begin
                uart_output_data = ex_tx_data;
                uart_output_send = ex_tx_dv;
            end

            3: begin
                uart_output_send = 0; // no one can send anything if no one is in control
            end
        endcase
    end


    // testing leds
    // reg [7:0] count = 0;
    // always @(posedge proc_is_syscall) begin
    //     count++;
    // end
    // assign ja = count;
    assign ja = {!proc_is_ret, proc_AX[2]};
    // assign ja = proc_AX[2];
    
    assign led = {io_cont_freeze, pl_done, ex_done, syscall_done};

endmodule
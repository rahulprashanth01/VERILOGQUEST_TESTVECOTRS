`timescale 1ns/1ps

module tb_T07_genome_window_generator;

    reg         clk;
    reg         rst;
    reg  [15:0] fragment;
    reg         fragment_valid;

    wire [15:0] window;
    wire        window_valid;

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    // Instantiate the DUT
    T07_genome_window_generator dut (
        .clk(clk),
        .rst(rst),
        .fragment(fragment),
        .fragment_valid(fragment_valid),
        .window(window),
        .window_valid(window_valid)
    );

    initial begin
        // Initialize inputs
        rst            = 1'b1;
        fragment       = 16'b0;
        fragment_valid = 1'b0;

        // Apply reset

        //  Send genome fragments

        // Check generated windows and window_valid

        // Display test results

        $finish;
    end

endmodule

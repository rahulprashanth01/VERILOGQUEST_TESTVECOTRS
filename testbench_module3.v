`timescale 1ns/1ps

module tb_T07_target_locator;

    reg         clk;
    reg         rst;
    reg         start;
    reg  [63:0] genome;
    reg  [15:0] guide;
    reg  [1:0]  threshold;

    wire        target_found;
    wire [4:0]  target_position;
    wire [3:0]  mismatch_count;
    wire        done;

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    // Instantiate the DUT
    T07_target_locator dut (
        .clk(clk),
        .rst(rst),
        .start(start),
        .genome(genome),
        .guide(guide),
        .threshold(threshold),
        .target_found(target_found),
        .target_position(target_position),
        .mismatch_count(mismatch_count),
        .done(done)
    );

    initial begin
        // Initialize inputs
        rst       = 1'b1;
        start     = 1'b0;
        genome    = 64'b0;
        guide     = 16'b0;
        threshold = 2'b0;

        //  Apply reset

        // Provide genome, guide, and threshold

        // Trigger the search using start

        //  Check target_found, target_position, mismatch_count, and done

        // Display test results

        $finish;
    end

endmodule

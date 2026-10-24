`timescale 1ns/1ps

module tb_T07_guide_matcher;

    reg  [15:0] guide;
    reg  [15:0] window;
    reg  [1:0]  threshold;

    wire [3:0] mismatch_count;
    wire       match;

    T07_guide_matcher dut (
        .guide(guide),
        .window(window),
        .threshold(threshold),
        .mismatch_count(mismatch_count),
        .match(match)
    );

    initial begin
        guide     = 16'b0;
        window    = 16'b0;
        threshold = 2'b0;

        // TODO: Apply test inputs
        // TODO: Check outputs

        $finish;
    end

endmodule

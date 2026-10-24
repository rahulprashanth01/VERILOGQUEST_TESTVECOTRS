`timescale 1ns/1ps

module tb_T07_genome_editor;

    reg         clk;
    reg         rst;
    reg         edit_request;
    reg  [63:0] genome_in;
    reg  [4:0]  edit_position;
    reg  [7:0]  replacement;

    wire [63:0] genome_out;
    wire        edit_success;
    wire        done;

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    // Instantiate the DUT
    T07_genome_editor dut (
        .clk(clk),
        .rst(rst),
        .edit_request(edit_request),
        .genome_in(genome_in),
        .edit_position(edit_position),
        .replacement(replacement),
        .genome_out(genome_out),
        .edit_success(edit_success),
        .done(done)
    );

    initial begin
        // Initialize inputs
        rst          = 1'b1;
        edit_request = 1'b0;
        genome_in    = 64'b0;
        edit_position = 5'b0;
        replacement  = 8'b0;

        // Apply reset

        //  Provide genome and replacement data

        //  Trigger an edit request

        //  Check genome_out, edit_success, and done

        //  Test invalid edit positions

        // Display test results

        $finish;
    end

endmodule

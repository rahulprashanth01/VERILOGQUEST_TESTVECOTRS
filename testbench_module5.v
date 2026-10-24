`timescale 1ns/1ps

module tb_T07_edit_verifier;

    reg         clk;
    reg         rst;
    reg         verify_request;
    reg  [63:0] genome_original;
    reg  [63:0] genome_edited;
    reg  [4:0]  edit_position;
    reg  [7:0]  replacement;

    wire        verify_pass;
    wire [5:0]  mismatch_count;
    wire        done;

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    // Instantiate the DUT
    T07_edit_verifier dut (
        .clk(clk),
        .rst(rst),
        .verify_request(verify_request),
        .genome_original(genome_original),
        .genome_edited(genome_edited),
        .edit_position(edit_position),
        .replacement(replacement),
        .verify_pass(verify_pass),
        .mismatch_count(mismatch_count),
        .done(done)
    );

    initial begin
        // Initialize inputs
        rst             = 1'b1;
        verify_request  = 1'b0;
        genome_original = 64'b0;
        genome_edited   = 64'b0;
        edit_position   = 5'b0;
        replacement     = 8'b0;

        //  Apply reset

        //  Provide original and edited genomes

        // Trigger a verification request

        //  Check verify_pass, mismatch_count, and done

        // Test both valid and invalid edits

        //  Display test results

        $finish;
    end

endmodule

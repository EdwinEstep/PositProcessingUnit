///////////////////////////////////////////////////////////////////////////////
// File Downloaded from Nandland.com
///////////////////////////////////////////////////////////////////////////////

module tb_addRecFN ();

    parameter WIDTH = 32;
    reg subOp;
    reg [2:0] roundingMode;

    reg [WIDTH-1:0] r_ADD_1 = 0;
    reg [WIDTH-1:0] r_ADD_2 = 0;
    wire [WIDTH-1:0]  w_RESULT;
    wire [4:0]      e;

    addRecFN #(.expWidth(8), .sigWidth(23)) DUT (
        .control(1'b0),
        .subOp(subOp),
        .a(r_ADD_1),
        .b(r_ADD_2),
        .roundingMode(roundingMode),
        .out(w_RESULT),
        .exceptionFlags(e)
    );

    initial
        begin
        subOp = 1'b0;
        roundingMode = 3'b000;
        #10ns;

        r_ADD_1 = 32'b00111111100000000000000000000000;
        r_ADD_2 = 32'b00111111100000000000000000000000;
        #10ns;

        subOp = 1'b1;
        #10ns;
        
        r_ADD_1 = 32'b01000011111110100000000000000000;
        r_ADD_2 = 32'b01000011011110100000000000000000;
        #10ns;

        subOp = 1'b0;
        #10ns;
    end

endmodule // tb_addRecFN
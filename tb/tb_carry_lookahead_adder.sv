///////////////////////////////////////////////////////////////////////////////
// File Downloaded from Nandland.com
///////////////////////////////////////////////////////////////////////////////

module tb_carry_lookahead_adder ();

  parameter WIDTH = 3;

  reg [WIDTH-1:0] r_ADD_1 = 0;
  reg [WIDTH-1:0] r_ADD_2 = 0;
  wire [WIDTH:0]  w_RESULT;
  
  carry_lookahead_adder #(.WIDTH(WIDTH)) carry_lookahead_inst
    (
     .i_add1(r_ADD_1),
     .i_add2(r_ADD_2),
     .o_result(w_RESULT)
     );

  initial
    begin
      #10ns;
      r_ADD_1 = 3'b000;
      r_ADD_2 = 3'b001;
      #10ns;
      r_ADD_1 = 3'b010;
      r_ADD_2 = 3'b010;
      #10ns;
      r_ADD_1 = 3'b101;
      r_ADD_2 = 3'b110;
      #10ns;
      r_ADD_1 = 3'b111;
      r_ADD_2 = 3'b111;
      #10ns;
    end

endmodule // tb_carry_lookahead_adder
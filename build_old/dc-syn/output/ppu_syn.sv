/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP3
// Date      : Wed Dec  7 20:52:08 2022
/////////////////////////////////////////////////////////////


module LOD_N2_32 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_31 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_16 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_32 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_31 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N2_30 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_29 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_15 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_30 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_29 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N8_8 ( in, out, vld );
  input [7:0] in;
  output [2:0] out;
  output vld;
  wire   genblk1_out_vl, genblk1_out_vh, n1;
  wire   [1:0] genblk1_out_l;
  wire   [1:0] genblk1_out_h;

  LOD_N4_16 genblk1_l ( .in(in[3:0]), .out(genblk1_out_l), .vld(genblk1_out_vl) );
  LOD_N4_15 genblk1_h ( .in(in[7:4]), .out(genblk1_out_h), .vld(genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[2]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l[1]), .IN2(genblk1_out_h[1]), .S(
        genblk1_out_vh), .Q(out[1]) );
  MUX21X1 U6 ( .IN1(genblk1_out_l[0]), .IN2(genblk1_out_h[0]), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N2_28 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_27 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_14 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_28 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_27 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N2_26 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_25 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_13 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_26 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_25 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N8_7 ( in, out, vld );
  input [7:0] in;
  output [2:0] out;
  output vld;
  wire   genblk1_out_vl, genblk1_out_vh, n1;
  wire   [1:0] genblk1_out_l;
  wire   [1:0] genblk1_out_h;

  LOD_N4_14 genblk1_l ( .in(in[3:0]), .out(genblk1_out_l), .vld(genblk1_out_vl) );
  LOD_N4_13 genblk1_h ( .in(in[7:4]), .out(genblk1_out_h), .vld(genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[2]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l[1]), .IN2(genblk1_out_h[1]), .S(
        genblk1_out_vh), .Q(out[1]) );
  MUX21X1 U6 ( .IN1(genblk1_out_l[0]), .IN2(genblk1_out_h[0]), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N16_4 ( in, out, vld );
  input [15:0] in;
  output [3:0] out;
  output vld;
  wire   genblk1_out_vl, genblk1_out_vh, n1;
  wire   [2:0] genblk1_out_l;
  wire   [2:0] genblk1_out_h;

  LOD_N8_8 genblk1_l ( .in(in[7:0]), .out(genblk1_out_l), .vld(genblk1_out_vl)
         );
  LOD_N8_7 genblk1_h ( .in(in[15:8]), .out(genblk1_out_h), .vld(genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[3]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l[2]), .IN2(genblk1_out_h[2]), .S(
        genblk1_out_vh), .Q(out[2]) );
  MUX21X1 U6 ( .IN1(genblk1_out_l[1]), .IN2(genblk1_out_h[1]), .S(
        genblk1_out_vh), .Q(out[1]) );
  MUX21X1 U7 ( .IN1(genblk1_out_l[0]), .IN2(genblk1_out_h[0]), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N2_24 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_23 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_12 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_24 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_23 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N2_22 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_21 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_11 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_22 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_21 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N8_6 ( in, out, vld );
  input [7:0] in;
  output [2:0] out;
  output vld;
  wire   genblk1_out_vl, genblk1_out_vh, n1;
  wire   [1:0] genblk1_out_l;
  wire   [1:0] genblk1_out_h;

  LOD_N4_12 genblk1_l ( .in(in[3:0]), .out(genblk1_out_l), .vld(genblk1_out_vl) );
  LOD_N4_11 genblk1_h ( .in(in[7:4]), .out(genblk1_out_h), .vld(genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[2]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l[1]), .IN2(genblk1_out_h[1]), .S(
        genblk1_out_vh), .Q(out[1]) );
  MUX21X1 U6 ( .IN1(genblk1_out_l[0]), .IN2(genblk1_out_h[0]), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N2_20 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_19 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_10 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_20 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_19 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N2_18 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_17 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_9 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_18 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_17 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N8_5 ( in, out, vld );
  input [7:0] in;
  output [2:0] out;
  output vld;
  wire   genblk1_out_vl, genblk1_out_vh, n1;
  wire   [1:0] genblk1_out_l;
  wire   [1:0] genblk1_out_h;

  LOD_N4_10 genblk1_l ( .in(in[3:0]), .out(genblk1_out_l), .vld(genblk1_out_vl) );
  LOD_N4_9 genblk1_h ( .in(in[7:4]), .out(genblk1_out_h), .vld(genblk1_out_vh)
         );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[2]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l[1]), .IN2(genblk1_out_h[1]), .S(
        genblk1_out_vh), .Q(out[1]) );
  MUX21X1 U6 ( .IN1(genblk1_out_l[0]), .IN2(genblk1_out_h[0]), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N16_3 ( in, out, vld );
  input [15:0] in;
  output [3:0] out;
  output vld;
  wire   genblk1_out_vl, genblk1_out_vh, n1;
  wire   [2:0] genblk1_out_l;
  wire   [2:0] genblk1_out_h;

  LOD_N8_6 genblk1_l ( .in(in[7:0]), .out(genblk1_out_l), .vld(genblk1_out_vl)
         );
  LOD_N8_5 genblk1_h ( .in(in[15:8]), .out(genblk1_out_h), .vld(genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[3]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l[2]), .IN2(genblk1_out_h[2]), .S(
        genblk1_out_vh), .Q(out[2]) );
  MUX21X1 U6 ( .IN1(genblk1_out_l[1]), .IN2(genblk1_out_h[1]), .S(
        genblk1_out_vh), .Q(out[1]) );
  MUX21X1 U7 ( .IN1(genblk1_out_l[0]), .IN2(genblk1_out_h[0]), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N32_2 ( in, out, vld );
  input [31:0] in;
  output [4:0] out;
  output vld;
  wire   genblk1_out_vl, genblk1_out_vh, n1;
  wire   [3:0] genblk1_out_l;
  wire   [3:0] genblk1_out_h;

  LOD_N16_4 genblk1_l ( .in(in[15:0]), .out(genblk1_out_l), .vld(
        genblk1_out_vl) );
  LOD_N16_3 genblk1_h ( .in(in[31:16]), .out(genblk1_out_h), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[4]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l[3]), .IN2(genblk1_out_h[3]), .S(
        genblk1_out_vh), .Q(out[3]) );
  MUX21X1 U6 ( .IN1(genblk1_out_l[2]), .IN2(genblk1_out_h[2]), .S(
        genblk1_out_vh), .Q(out[2]) );
  MUX21X1 U7 ( .IN1(genblk1_out_l[1]), .IN2(genblk1_out_h[1]), .S(
        genblk1_out_vh), .Q(out[1]) );
  MUX21X1 U8 ( .IN1(genblk1_out_l[0]), .IN2(genblk1_out_h[0]), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N_N32_2 ( in, out );
  input [31:0] in;
  output [4:0] out;


  LOD_N32_2 l1 ( .in(in), .out(out) );
endmodule


module DSR_left_N_S_N32_S5_2 ( a, b, c );
  input [31:0] a;
  input [4:0] b;
  output [31:0] c;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114;

  NOR2X2 U2 ( .IN1(n113), .IN2(n114), .QN(n26) );
  NOR2X2 U3 ( .IN1(b[0]), .IN2(b[1]), .QN(n25) );
  NOR2X2 U4 ( .IN1(n114), .IN2(b[1]), .QN(n22) );
  NOR2X2 U5 ( .IN1(n113), .IN2(b[0]), .QN(n23) );
  AND2X1 U6 ( .IN1(n1), .IN2(n2), .Q(c[9]) );
  AND2X1 U7 ( .IN1(n1), .IN2(n3), .Q(c[8]) );
  AO22X1 U8 ( .IN1(n4), .IN2(n5), .IN3(n6), .IN4(n7), .Q(c[7]) );
  AO22X1 U9 ( .IN1(n4), .IN2(n8), .IN3(n6), .IN4(n9), .Q(c[6]) );
  AO22X1 U10 ( .IN1(n4), .IN2(n10), .IN3(n6), .IN4(n11), .Q(c[5]) );
  AND3X1 U11 ( .IN1(n12), .IN2(n1), .IN3(n13), .Q(c[4]) );
  AND2X1 U12 ( .IN1(n7), .IN2(n4), .Q(c[3]) );
  AO221X1 U13 ( .IN1(n14), .IN2(n15), .IN3(b[4]), .IN4(n16), .IN5(n17), .Q(
        c[31]) );
  AO222X1 U14 ( .IN1(n6), .IN2(n18), .IN3(n4), .IN4(n19), .IN5(n20), .IN6(n21), 
        .Q(n17) );
  AO221X1 U15 ( .IN1(a[30]), .IN2(n22), .IN3(a[29]), .IN4(n23), .IN5(n24), .Q(
        n19) );
  AO22X1 U16 ( .IN1(a[31]), .IN2(n25), .IN3(a[28]), .IN4(n26), .Q(n24) );
  AO221X1 U17 ( .IN1(n14), .IN2(n27), .IN3(b[4]), .IN4(n28), .IN5(n29), .Q(
        c[30]) );
  AO222X1 U18 ( .IN1(n6), .IN2(n30), .IN3(n4), .IN4(n31), .IN5(n20), .IN6(n32), 
        .Q(n29) );
  AO221X1 U19 ( .IN1(a[29]), .IN2(n22), .IN3(a[28]), .IN4(n23), .IN5(n33), .Q(
        n31) );
  AO22X1 U20 ( .IN1(a[30]), .IN2(n25), .IN3(a[27]), .IN4(n26), .Q(n33) );
  AND2X1 U21 ( .IN1(n9), .IN2(n4), .Q(c[2]) );
  AO221X1 U22 ( .IN1(n14), .IN2(n34), .IN3(b[4]), .IN4(n35), .IN5(n36), .Q(
        c[29]) );
  AO222X1 U23 ( .IN1(n6), .IN2(n37), .IN3(n4), .IN4(n38), .IN5(n20), .IN6(n39), 
        .Q(n36) );
  AO221X1 U24 ( .IN1(a[28]), .IN2(n22), .IN3(a[27]), .IN4(n23), .IN5(n40), .Q(
        n38) );
  AO22X1 U25 ( .IN1(a[29]), .IN2(n25), .IN3(a[26]), .IN4(n26), .Q(n40) );
  AO221X1 U26 ( .IN1(n14), .IN2(n41), .IN3(b[4]), .IN4(n42), .IN5(n43), .Q(
        c[28]) );
  AO222X1 U27 ( .IN1(n6), .IN2(n44), .IN3(n4), .IN4(n45), .IN5(n20), .IN6(n46), 
        .Q(n43) );
  AO221X1 U28 ( .IN1(a[27]), .IN2(n22), .IN3(a[26]), .IN4(n23), .IN5(n47), .Q(
        n45) );
  AO22X1 U29 ( .IN1(a[28]), .IN2(n25), .IN3(a[25]), .IN4(n26), .Q(n47) );
  AO221X1 U30 ( .IN1(n14), .IN2(n48), .IN3(b[4]), .IN4(n49), .IN5(n50), .Q(
        c[27]) );
  AO222X1 U31 ( .IN1(n6), .IN2(n21), .IN3(n4), .IN4(n18), .IN5(n20), .IN6(n15), 
        .Q(n50) );
  AO221X1 U32 ( .IN1(a[26]), .IN2(n22), .IN3(a[25]), .IN4(n23), .IN5(n51), .Q(
        n18) );
  AO22X1 U33 ( .IN1(a[27]), .IN2(n25), .IN3(a[24]), .IN4(n26), .Q(n51) );
  AO221X1 U34 ( .IN1(n14), .IN2(n52), .IN3(b[4]), .IN4(n53), .IN5(n54), .Q(
        c[26]) );
  AO222X1 U35 ( .IN1(n6), .IN2(n32), .IN3(n4), .IN4(n30), .IN5(n20), .IN6(n27), 
        .Q(n54) );
  AO221X1 U36 ( .IN1(a[25]), .IN2(n22), .IN3(a[24]), .IN4(n23), .IN5(n55), .Q(
        n30) );
  AO22X1 U37 ( .IN1(a[26]), .IN2(n25), .IN3(a[23]), .IN4(n26), .Q(n55) );
  AO221X1 U38 ( .IN1(n20), .IN2(n34), .IN3(n14), .IN4(n56), .IN5(n57), .Q(
        c[25]) );
  AO222X1 U39 ( .IN1(n4), .IN2(n37), .IN3(b[4]), .IN4(n2), .IN5(n6), .IN6(n39), 
        .Q(n57) );
  AO222X1 U40 ( .IN1(n58), .IN2(n10), .IN3(n59), .IN4(n11), .IN5(n60), .IN6(
        n61), .Q(n2) );
  AO221X1 U41 ( .IN1(a[24]), .IN2(n22), .IN3(a[23]), .IN4(n23), .IN5(n62), .Q(
        n37) );
  AO22X1 U42 ( .IN1(a[25]), .IN2(n25), .IN3(a[22]), .IN4(n26), .Q(n62) );
  AO221X1 U43 ( .IN1(n14), .IN2(n63), .IN3(n20), .IN4(n41), .IN5(n64), .Q(
        c[24]) );
  AO222X1 U44 ( .IN1(n4), .IN2(n44), .IN3(b[4]), .IN4(n3), .IN5(n6), .IN6(n46), 
        .Q(n64) );
  AO222X1 U45 ( .IN1(n58), .IN2(n65), .IN3(n66), .IN4(n59), .IN5(n60), .IN6(
        n67), .Q(n3) );
  AO221X1 U46 ( .IN1(a[23]), .IN2(n22), .IN3(a[22]), .IN4(n23), .IN5(n68), .Q(
        n44) );
  AO22X1 U47 ( .IN1(a[24]), .IN2(n25), .IN3(a[21]), .IN4(n26), .Q(n68) );
  NAND2X0 U48 ( .IN1(n69), .IN2(n70), .QN(c[23]) );
  AOI222X1 U49 ( .IN1(n21), .IN2(n4), .IN3(n7), .IN4(n71), .IN5(n5), .IN6(n72), 
        .QN(n70) );
  AO221X1 U50 ( .IN1(a[22]), .IN2(n22), .IN3(a[21]), .IN4(n23), .IN5(n73), .Q(
        n21) );
  AO22X1 U51 ( .IN1(a[23]), .IN2(n25), .IN3(a[20]), .IN4(n26), .Q(n73) );
  AOI222X1 U52 ( .IN1(n48), .IN2(n20), .IN3(n15), .IN4(n6), .IN5(n74), .IN6(
        n14), .QN(n69) );
  NAND2X0 U53 ( .IN1(n75), .IN2(n76), .QN(c[22]) );
  AOI222X1 U54 ( .IN1(n32), .IN2(n4), .IN3(n9), .IN4(n71), .IN5(n8), .IN6(n72), 
        .QN(n76) );
  AO221X1 U55 ( .IN1(a[21]), .IN2(n22), .IN3(a[20]), .IN4(n23), .IN5(n77), .Q(
        n32) );
  AO22X1 U56 ( .IN1(a[22]), .IN2(n25), .IN3(a[19]), .IN4(n26), .Q(n77) );
  AOI222X1 U57 ( .IN1(n52), .IN2(n20), .IN3(n27), .IN4(n6), .IN5(n78), .IN6(
        n14), .QN(n75) );
  NAND2X0 U58 ( .IN1(n79), .IN2(n80), .QN(c[21]) );
  AOI222X1 U59 ( .IN1(n39), .IN2(n4), .IN3(n11), .IN4(n71), .IN5(n10), .IN6(
        n72), .QN(n80) );
  AND2X1 U60 ( .IN1(b[4]), .IN2(n58), .Q(n71) );
  AO221X1 U61 ( .IN1(a[20]), .IN2(n22), .IN3(a[19]), .IN4(n23), .IN5(n81), .Q(
        n39) );
  AO22X1 U62 ( .IN1(a[21]), .IN2(n25), .IN3(a[18]), .IN4(n26), .Q(n81) );
  AOI222X1 U63 ( .IN1(n56), .IN2(n20), .IN3(n34), .IN4(n6), .IN5(n61), .IN6(
        n14), .QN(n79) );
  AO221X1 U64 ( .IN1(n20), .IN2(n63), .IN3(n6), .IN4(n41), .IN5(n82), .Q(c[20]) );
  AO222X1 U65 ( .IN1(n4), .IN2(n46), .IN3(n83), .IN4(b[4]), .IN5(n14), .IN6(
        n67), .Q(n82) );
  AND2X1 U66 ( .IN1(n13), .IN2(n12), .Q(n83) );
  AO221X1 U67 ( .IN1(a[19]), .IN2(n22), .IN3(a[18]), .IN4(n23), .IN5(n84), .Q(
        n46) );
  AO22X1 U68 ( .IN1(a[20]), .IN2(n25), .IN3(a[17]), .IN4(n26), .Q(n84) );
  AND2X1 U69 ( .IN1(n11), .IN2(n4), .Q(c[1]) );
  AO221X1 U70 ( .IN1(n20), .IN2(n74), .IN3(n6), .IN4(n48), .IN5(n85), .Q(c[19]) );
  AO222X1 U71 ( .IN1(n4), .IN2(n15), .IN3(n72), .IN4(n7), .IN5(n14), .IN6(n5), 
        .Q(n85) );
  AO221X1 U72 ( .IN1(a[18]), .IN2(n22), .IN3(a[17]), .IN4(n23), .IN5(n86), .Q(
        n15) );
  AO22X1 U73 ( .IN1(a[19]), .IN2(n25), .IN3(a[16]), .IN4(n26), .Q(n86) );
  AO221X1 U74 ( .IN1(n20), .IN2(n78), .IN3(n6), .IN4(n52), .IN5(n87), .Q(c[18]) );
  AO222X1 U75 ( .IN1(n4), .IN2(n27), .IN3(n72), .IN4(n9), .IN5(n14), .IN6(n8), 
        .Q(n87) );
  AO221X1 U76 ( .IN1(a[17]), .IN2(n22), .IN3(a[16]), .IN4(n23), .IN5(n88), .Q(
        n27) );
  AO22X1 U77 ( .IN1(a[18]), .IN2(n25), .IN3(a[15]), .IN4(n26), .Q(n88) );
  AO221X1 U78 ( .IN1(n20), .IN2(n61), .IN3(n6), .IN4(n56), .IN5(n89), .Q(c[17]) );
  AO222X1 U79 ( .IN1(n4), .IN2(n34), .IN3(n72), .IN4(n11), .IN5(n14), .IN6(n10), .Q(n89) );
  AO221X1 U80 ( .IN1(a[16]), .IN2(n22), .IN3(a[15]), .IN4(n23), .IN5(n90), .Q(
        n34) );
  AO22X1 U81 ( .IN1(a[17]), .IN2(n25), .IN3(a[14]), .IN4(n26), .Q(n90) );
  AO221X1 U82 ( .IN1(n4), .IN2(n41), .IN3(n6), .IN4(n63), .IN5(n91), .Q(c[16])
         );
  AO222X1 U83 ( .IN1(n14), .IN2(n65), .IN3(n72), .IN4(n66), .IN5(n20), .IN6(
        n67), .Q(n91) );
  AND2X1 U84 ( .IN1(n59), .IN2(n1), .Q(n20) );
  AND2X1 U85 ( .IN1(b[4]), .IN2(n60), .Q(n72) );
  AND2X1 U86 ( .IN1(n92), .IN2(n1), .Q(n14) );
  AND2X1 U87 ( .IN1(n58), .IN2(n1), .Q(n6) );
  AO221X1 U88 ( .IN1(a[15]), .IN2(n22), .IN3(a[14]), .IN4(n23), .IN5(n93), .Q(
        n41) );
  AO22X1 U89 ( .IN1(a[16]), .IN2(n25), .IN3(a[13]), .IN4(n26), .Q(n93) );
  INVX0 U90 ( .INP(n94), .ZN(n4) );
  AND2X1 U91 ( .IN1(n1), .IN2(n16), .Q(c[15]) );
  AO221X1 U92 ( .IN1(n58), .IN2(n74), .IN3(n59), .IN4(n5), .IN5(n95), .Q(n16)
         );
  AO22X1 U93 ( .IN1(n60), .IN2(n48), .IN3(n92), .IN4(n7), .Q(n95) );
  AO221X1 U94 ( .IN1(a[14]), .IN2(n22), .IN3(a[13]), .IN4(n23), .IN5(n96), .Q(
        n48) );
  AO22X1 U95 ( .IN1(a[15]), .IN2(n25), .IN3(a[12]), .IN4(n26), .Q(n96) );
  AND2X1 U96 ( .IN1(n1), .IN2(n28), .Q(c[14]) );
  AO221X1 U97 ( .IN1(n58), .IN2(n78), .IN3(n59), .IN4(n8), .IN5(n97), .Q(n28)
         );
  AO22X1 U98 ( .IN1(n60), .IN2(n52), .IN3(n92), .IN4(n9), .Q(n97) );
  AO221X1 U99 ( .IN1(a[13]), .IN2(n22), .IN3(a[12]), .IN4(n23), .IN5(n98), .Q(
        n52) );
  AO22X1 U100 ( .IN1(a[14]), .IN2(n25), .IN3(a[11]), .IN4(n26), .Q(n98) );
  AND2X1 U101 ( .IN1(n1), .IN2(n35), .Q(c[13]) );
  AO221X1 U102 ( .IN1(n60), .IN2(n56), .IN3(n58), .IN4(n61), .IN5(n99), .Q(n35) );
  AO22X1 U103 ( .IN1(n59), .IN2(n10), .IN3(n92), .IN4(n11), .Q(n99) );
  AO22X1 U104 ( .IN1(a[1]), .IN2(n25), .IN3(a[0]), .IN4(n22), .Q(n11) );
  NOR2X0 U105 ( .IN1(n100), .IN2(n13), .QN(n92) );
  AO221X1 U106 ( .IN1(a[4]), .IN2(n22), .IN3(a[3]), .IN4(n23), .IN5(n101), .Q(
        n10) );
  AO22X1 U107 ( .IN1(a[5]), .IN2(n25), .IN3(a[2]), .IN4(n26), .Q(n101) );
  AO221X1 U108 ( .IN1(a[8]), .IN2(n22), .IN3(a[7]), .IN4(n23), .IN5(n102), .Q(
        n61) );
  AO22X1 U109 ( .IN1(a[9]), .IN2(n25), .IN3(a[6]), .IN4(n26), .Q(n102) );
  AO221X1 U110 ( .IN1(a[12]), .IN2(n22), .IN3(a[11]), .IN4(n23), .IN5(n103), 
        .Q(n56) );
  AO22X1 U111 ( .IN1(a[13]), .IN2(n25), .IN3(a[10]), .IN4(n26), .Q(n103) );
  AND2X1 U112 ( .IN1(n1), .IN2(n42), .Q(c[12]) );
  AO222X1 U113 ( .IN1(n58), .IN2(n67), .IN3(b[3]), .IN4(n12), .IN5(n60), .IN6(
        n63), .Q(n42) );
  AO221X1 U114 ( .IN1(a[11]), .IN2(n22), .IN3(a[10]), .IN4(n23), .IN5(n104), 
        .Q(n63) );
  AO22X1 U115 ( .IN1(a[12]), .IN2(n25), .IN3(a[9]), .IN4(n26), .Q(n104) );
  MUX21X1 U116 ( .IN1(n65), .IN2(n66), .S(b[2]), .Q(n12) );
  INVX0 U117 ( .INP(n105), .ZN(n66) );
  AO221X1 U118 ( .IN1(a[3]), .IN2(n22), .IN3(a[2]), .IN4(n23), .IN5(n106), .Q(
        n65) );
  AO22X1 U119 ( .IN1(a[4]), .IN2(n25), .IN3(n26), .IN4(a[1]), .Q(n106) );
  AO221X1 U120 ( .IN1(a[7]), .IN2(n22), .IN3(a[6]), .IN4(n23), .IN5(n107), .Q(
        n67) );
  AO22X1 U121 ( .IN1(a[8]), .IN2(n25), .IN3(a[5]), .IN4(n26), .Q(n107) );
  AND2X1 U122 ( .IN1(n1), .IN2(n49), .Q(c[11]) );
  AO222X1 U123 ( .IN1(n59), .IN2(n7), .IN3(n60), .IN4(n74), .IN5(n58), .IN6(n5), .Q(n49) );
  AO221X1 U124 ( .IN1(a[6]), .IN2(n22), .IN3(a[5]), .IN4(n23), .IN5(n108), .Q(
        n5) );
  AO22X1 U125 ( .IN1(a[7]), .IN2(n25), .IN3(n26), .IN4(a[4]), .Q(n108) );
  AO221X1 U126 ( .IN1(a[10]), .IN2(n22), .IN3(a[9]), .IN4(n23), .IN5(n109), 
        .Q(n74) );
  AO22X1 U127 ( .IN1(a[11]), .IN2(n25), .IN3(a[8]), .IN4(n26), .Q(n109) );
  AO221X1 U128 ( .IN1(a[2]), .IN2(n22), .IN3(n23), .IN4(a[1]), .IN5(n110), .Q(
        n7) );
  AO22X1 U129 ( .IN1(a[3]), .IN2(n25), .IN3(n26), .IN4(a[0]), .Q(n110) );
  AND2X1 U130 ( .IN1(n1), .IN2(n53), .Q(c[10]) );
  AO222X1 U131 ( .IN1(n59), .IN2(n9), .IN3(n60), .IN4(n78), .IN5(n58), .IN6(n8), .Q(n53) );
  AO221X1 U132 ( .IN1(a[5]), .IN2(n22), .IN3(n23), .IN4(a[4]), .IN5(n111), .Q(
        n8) );
  AO22X1 U133 ( .IN1(a[6]), .IN2(n25), .IN3(n26), .IN4(a[3]), .Q(n111) );
  NOR2X0 U134 ( .IN1(n100), .IN2(b[3]), .QN(n58) );
  INVX0 U135 ( .INP(b[2]), .ZN(n100) );
  AO221X1 U136 ( .IN1(a[9]), .IN2(n22), .IN3(a[8]), .IN4(n23), .IN5(n112), .Q(
        n78) );
  AO22X1 U137 ( .IN1(a[10]), .IN2(n25), .IN3(a[7]), .IN4(n26), .Q(n112) );
  AO222X1 U138 ( .IN1(n23), .IN2(a[0]), .IN3(a[1]), .IN4(n22), .IN5(a[2]), 
        .IN6(n25), .Q(n9) );
  INVX0 U139 ( .INP(b[0]), .ZN(n114) );
  INVX0 U140 ( .INP(b[1]), .ZN(n113) );
  NOR2X0 U141 ( .IN1(n13), .IN2(b[2]), .QN(n59) );
  INVX0 U142 ( .INP(b[3]), .ZN(n13) );
  NOR2X0 U143 ( .IN1(n105), .IN2(n94), .QN(c[0]) );
  NAND2X0 U144 ( .IN1(n60), .IN2(n1), .QN(n94) );
  INVX0 U145 ( .INP(b[4]), .ZN(n1) );
  NOR2X0 U146 ( .IN1(b[2]), .IN2(b[3]), .QN(n60) );
  NAND2X0 U147 ( .IN1(n25), .IN2(a[0]), .QN(n105) );
endmodule


module data_extract_v1_N32_es2_0 ( in, rc, regime, exp, mant );
  input [31:0] in;
  output [4:0] regime;
  output [1:0] exp;
  output [29:0] mant;
  output rc;
  wire   n1, n2, n3, n5, n6, n7, n8, n9;
  wire   [29:0] xin_r;
  wire   [4:0] k;
  assign rc = in[30];

  LOD_N_N32_2 xinst_k ( .in({1'b0, xin_r, in[30]}), .out(k) );
  DSR_left_N_S_N32_S5_2 ls ( .a({in[29:0], 1'b0, 1'b0}), .b(k), .c({exp, mant}) );
  INVX2 U2 ( .INP(in[30]), .ZN(n1) );
  XNOR2X1 U3 ( .IN1(in[9]), .IN2(n1), .Q(xin_r[9]) );
  XNOR2X1 U4 ( .IN1(in[8]), .IN2(n1), .Q(xin_r[8]) );
  XNOR2X1 U5 ( .IN1(in[7]), .IN2(n1), .Q(xin_r[7]) );
  XNOR2X1 U6 ( .IN1(in[6]), .IN2(n1), .Q(xin_r[6]) );
  XNOR2X1 U7 ( .IN1(in[5]), .IN2(n1), .Q(xin_r[5]) );
  XNOR2X1 U8 ( .IN1(in[4]), .IN2(n1), .Q(xin_r[4]) );
  XNOR2X1 U9 ( .IN1(in[3]), .IN2(n1), .Q(xin_r[3]) );
  XNOR2X1 U10 ( .IN1(n1), .IN2(in[2]), .Q(xin_r[2]) );
  XNOR2X1 U12 ( .IN1(n1), .IN2(in[29]), .Q(xin_r[29]) );
  XNOR2X1 U13 ( .IN1(n1), .IN2(in[28]), .Q(xin_r[28]) );
  XNOR2X1 U14 ( .IN1(n1), .IN2(in[27]), .Q(xin_r[27]) );
  XNOR2X1 U15 ( .IN1(n1), .IN2(in[26]), .Q(xin_r[26]) );
  XNOR2X1 U16 ( .IN1(n1), .IN2(in[25]), .Q(xin_r[25]) );
  XNOR2X1 U17 ( .IN1(n1), .IN2(in[24]), .Q(xin_r[24]) );
  XNOR2X1 U18 ( .IN1(n1), .IN2(in[23]), .Q(xin_r[23]) );
  XNOR2X1 U19 ( .IN1(n1), .IN2(in[22]), .Q(xin_r[22]) );
  XNOR2X1 U20 ( .IN1(n1), .IN2(in[21]), .Q(xin_r[21]) );
  XNOR2X1 U21 ( .IN1(n1), .IN2(in[20]), .Q(xin_r[20]) );
  XNOR2X1 U22 ( .IN1(n1), .IN2(in[1]), .Q(xin_r[1]) );
  XNOR2X1 U23 ( .IN1(n1), .IN2(in[19]), .Q(xin_r[19]) );
  XNOR2X1 U24 ( .IN1(n1), .IN2(in[18]), .Q(xin_r[18]) );
  XNOR2X1 U25 ( .IN1(n1), .IN2(in[17]), .Q(xin_r[17]) );
  XNOR2X1 U26 ( .IN1(n1), .IN2(in[16]), .Q(xin_r[16]) );
  XNOR2X1 U27 ( .IN1(n1), .IN2(in[15]), .Q(xin_r[15]) );
  XNOR2X1 U28 ( .IN1(n1), .IN2(in[14]), .Q(xin_r[14]) );
  XNOR2X1 U29 ( .IN1(n1), .IN2(in[13]), .Q(xin_r[13]) );
  XNOR2X1 U30 ( .IN1(n1), .IN2(in[12]), .Q(xin_r[12]) );
  XNOR2X1 U31 ( .IN1(n1), .IN2(in[11]), .Q(xin_r[11]) );
  XNOR2X1 U32 ( .IN1(n1), .IN2(in[10]), .Q(xin_r[10]) );
  XNOR2X1 U33 ( .IN1(n1), .IN2(in[0]), .Q(xin_r[0]) );
  XOR2X1 U34 ( .IN1(k[4]), .IN2(n2), .Q(regime[4]) );
  NOR2X0 U35 ( .IN1(k[3]), .IN2(n3), .QN(n2) );
  XNOR2X1 U36 ( .IN1(k[3]), .IN2(n3), .Q(regime[3]) );
  INVX0 U37 ( .INP(n5), .ZN(n3) );
  AO21X1 U38 ( .IN1(k[2]), .IN2(n6), .IN3(n5), .Q(regime[2]) );
  NOR2X0 U39 ( .IN1(n6), .IN2(k[2]), .QN(n5) );
  INVX0 U40 ( .INP(n7), .ZN(n6) );
  AO21X1 U41 ( .IN1(k[1]), .IN2(n8), .IN3(n7), .Q(regime[1]) );
  NOR2X0 U42 ( .IN1(n8), .IN2(k[1]), .QN(n7) );
  INVX0 U43 ( .INP(n9), .ZN(n8) );
  AO21X1 U44 ( .IN1(k[0]), .IN2(n1), .IN3(n9), .Q(regime[0]) );
  NOR2X0 U45 ( .IN1(n1), .IN2(k[0]), .QN(n9) );
endmodule


module LOD_N2_16 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_15 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_8 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_16 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_15 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N2_14 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_13 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_7 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_14 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_13 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N8_4 ( in, out, vld );
  input [7:0] in;
  output [2:0] out;
  output vld;
  wire   genblk1_out_vl, genblk1_out_vh, n1;
  wire   [1:0] genblk1_out_l;
  wire   [1:0] genblk1_out_h;

  LOD_N4_8 genblk1_l ( .in(in[3:0]), .out(genblk1_out_l), .vld(genblk1_out_vl)
         );
  LOD_N4_7 genblk1_h ( .in(in[7:4]), .out(genblk1_out_h), .vld(genblk1_out_vh)
         );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[2]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l[1]), .IN2(genblk1_out_h[1]), .S(
        genblk1_out_vh), .Q(out[1]) );
  MUX21X1 U6 ( .IN1(genblk1_out_l[0]), .IN2(genblk1_out_h[0]), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N2_12 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_11 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_6 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_12 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_11 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N2_10 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_9 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_5 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_10 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_9 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N8_3 ( in, out, vld );
  input [7:0] in;
  output [2:0] out;
  output vld;
  wire   genblk1_out_vl, genblk1_out_vh, n1;
  wire   [1:0] genblk1_out_l;
  wire   [1:0] genblk1_out_h;

  LOD_N4_6 genblk1_l ( .in(in[3:0]), .out(genblk1_out_l), .vld(genblk1_out_vl)
         );
  LOD_N4_5 genblk1_h ( .in(in[7:4]), .out(genblk1_out_h), .vld(genblk1_out_vh)
         );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[2]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l[1]), .IN2(genblk1_out_h[1]), .S(
        genblk1_out_vh), .Q(out[1]) );
  MUX21X1 U6 ( .IN1(genblk1_out_l[0]), .IN2(genblk1_out_h[0]), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N16_2 ( in, out, vld );
  input [15:0] in;
  output [3:0] out;
  output vld;
  wire   genblk1_out_vl, genblk1_out_vh, n1;
  wire   [2:0] genblk1_out_l;
  wire   [2:0] genblk1_out_h;

  LOD_N8_4 genblk1_l ( .in(in[7:0]), .out(genblk1_out_l), .vld(genblk1_out_vl)
         );
  LOD_N8_3 genblk1_h ( .in(in[15:8]), .out(genblk1_out_h), .vld(genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[3]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l[2]), .IN2(genblk1_out_h[2]), .S(
        genblk1_out_vh), .Q(out[2]) );
  MUX21X1 U6 ( .IN1(genblk1_out_l[1]), .IN2(genblk1_out_h[1]), .S(
        genblk1_out_vh), .Q(out[1]) );
  MUX21X1 U7 ( .IN1(genblk1_out_l[0]), .IN2(genblk1_out_h[0]), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N2_8 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_7 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_4 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_8 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_7 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N2_6 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_5 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_3 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_6 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_5 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N8_2 ( in, out, vld );
  input [7:0] in;
  output [2:0] out;
  output vld;
  wire   genblk1_out_vl, genblk1_out_vh, n1;
  wire   [1:0] genblk1_out_l;
  wire   [1:0] genblk1_out_h;

  LOD_N4_4 genblk1_l ( .in(in[3:0]), .out(genblk1_out_l), .vld(genblk1_out_vl)
         );
  LOD_N4_3 genblk1_h ( .in(in[7:4]), .out(genblk1_out_h), .vld(genblk1_out_vh)
         );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[2]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l[1]), .IN2(genblk1_out_h[1]), .S(
        genblk1_out_vh), .Q(out[1]) );
  MUX21X1 U6 ( .IN1(genblk1_out_l[0]), .IN2(genblk1_out_h[0]), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N2_4 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_3 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_2 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_4 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_3 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N2_2 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_1 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_1 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_2 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_1 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N8_1 ( in, out, vld );
  input [7:0] in;
  output [2:0] out;
  output vld;
  wire   genblk1_out_vl, genblk1_out_vh, n1;
  wire   [1:0] genblk1_out_l;
  wire   [1:0] genblk1_out_h;

  LOD_N4_2 genblk1_l ( .in(in[3:0]), .out(genblk1_out_l), .vld(genblk1_out_vl)
         );
  LOD_N4_1 genblk1_h ( .in(in[7:4]), .out(genblk1_out_h), .vld(genblk1_out_vh)
         );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[2]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l[1]), .IN2(genblk1_out_h[1]), .S(
        genblk1_out_vh), .Q(out[1]) );
  MUX21X1 U6 ( .IN1(genblk1_out_l[0]), .IN2(genblk1_out_h[0]), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N16_1 ( in, out, vld );
  input [15:0] in;
  output [3:0] out;
  output vld;
  wire   genblk1_out_vl, genblk1_out_vh, n1;
  wire   [2:0] genblk1_out_l;
  wire   [2:0] genblk1_out_h;

  LOD_N8_2 genblk1_l ( .in(in[7:0]), .out(genblk1_out_l), .vld(genblk1_out_vl)
         );
  LOD_N8_1 genblk1_h ( .in(in[15:8]), .out(genblk1_out_h), .vld(genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[3]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l[2]), .IN2(genblk1_out_h[2]), .S(
        genblk1_out_vh), .Q(out[2]) );
  MUX21X1 U6 ( .IN1(genblk1_out_l[1]), .IN2(genblk1_out_h[1]), .S(
        genblk1_out_vh), .Q(out[1]) );
  MUX21X1 U7 ( .IN1(genblk1_out_l[0]), .IN2(genblk1_out_h[0]), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N32_1 ( in, out, vld );
  input [31:0] in;
  output [4:0] out;
  output vld;
  wire   genblk1_out_vl, genblk1_out_vh, n1;
  wire   [3:0] genblk1_out_l;
  wire   [3:0] genblk1_out_h;

  LOD_N16_2 genblk1_l ( .in(in[15:0]), .out(genblk1_out_l), .vld(
        genblk1_out_vl) );
  LOD_N16_1 genblk1_h ( .in(in[31:16]), .out(genblk1_out_h), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[4]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l[3]), .IN2(genblk1_out_h[3]), .S(
        genblk1_out_vh), .Q(out[3]) );
  MUX21X1 U6 ( .IN1(genblk1_out_l[2]), .IN2(genblk1_out_h[2]), .S(
        genblk1_out_vh), .Q(out[2]) );
  MUX21X1 U7 ( .IN1(genblk1_out_l[1]), .IN2(genblk1_out_h[1]), .S(
        genblk1_out_vh), .Q(out[1]) );
  MUX21X1 U8 ( .IN1(genblk1_out_l[0]), .IN2(genblk1_out_h[0]), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N_N32_1 ( in, out );
  input [31:0] in;
  output [4:0] out;


  LOD_N32_1 l1 ( .in(in), .out(out) );
endmodule


module DSR_left_N_S_N32_S5_1 ( a, b, c );
  input [31:0] a;
  input [4:0] b;
  output [31:0] c;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114;

  NOR2X2 U2 ( .IN1(n113), .IN2(n114), .QN(n26) );
  NOR2X2 U3 ( .IN1(b[0]), .IN2(b[1]), .QN(n25) );
  NOR2X2 U4 ( .IN1(n114), .IN2(b[1]), .QN(n22) );
  NOR2X2 U5 ( .IN1(n113), .IN2(b[0]), .QN(n23) );
  AND2X1 U6 ( .IN1(n1), .IN2(n2), .Q(c[9]) );
  AND2X1 U7 ( .IN1(n1), .IN2(n3), .Q(c[8]) );
  AO22X1 U8 ( .IN1(n4), .IN2(n5), .IN3(n6), .IN4(n7), .Q(c[7]) );
  AO22X1 U9 ( .IN1(n4), .IN2(n8), .IN3(n6), .IN4(n9), .Q(c[6]) );
  AO22X1 U10 ( .IN1(n4), .IN2(n10), .IN3(n6), .IN4(n11), .Q(c[5]) );
  AND3X1 U11 ( .IN1(n12), .IN2(n1), .IN3(n13), .Q(c[4]) );
  AND2X1 U12 ( .IN1(n7), .IN2(n4), .Q(c[3]) );
  AO221X1 U13 ( .IN1(n14), .IN2(n15), .IN3(b[4]), .IN4(n16), .IN5(n17), .Q(
        c[31]) );
  AO222X1 U14 ( .IN1(n6), .IN2(n18), .IN3(n4), .IN4(n19), .IN5(n20), .IN6(n21), 
        .Q(n17) );
  AO221X1 U15 ( .IN1(a[30]), .IN2(n22), .IN3(a[29]), .IN4(n23), .IN5(n24), .Q(
        n19) );
  AO22X1 U16 ( .IN1(a[31]), .IN2(n25), .IN3(a[28]), .IN4(n26), .Q(n24) );
  AO221X1 U17 ( .IN1(n14), .IN2(n27), .IN3(b[4]), .IN4(n28), .IN5(n29), .Q(
        c[30]) );
  AO222X1 U18 ( .IN1(n6), .IN2(n30), .IN3(n4), .IN4(n31), .IN5(n20), .IN6(n32), 
        .Q(n29) );
  AO221X1 U19 ( .IN1(a[29]), .IN2(n22), .IN3(a[28]), .IN4(n23), .IN5(n33), .Q(
        n31) );
  AO22X1 U20 ( .IN1(a[30]), .IN2(n25), .IN3(a[27]), .IN4(n26), .Q(n33) );
  AND2X1 U21 ( .IN1(n9), .IN2(n4), .Q(c[2]) );
  AO221X1 U22 ( .IN1(n14), .IN2(n34), .IN3(b[4]), .IN4(n35), .IN5(n36), .Q(
        c[29]) );
  AO222X1 U23 ( .IN1(n6), .IN2(n37), .IN3(n4), .IN4(n38), .IN5(n20), .IN6(n39), 
        .Q(n36) );
  AO221X1 U24 ( .IN1(a[28]), .IN2(n22), .IN3(a[27]), .IN4(n23), .IN5(n40), .Q(
        n38) );
  AO22X1 U25 ( .IN1(a[29]), .IN2(n25), .IN3(a[26]), .IN4(n26), .Q(n40) );
  AO221X1 U26 ( .IN1(n14), .IN2(n41), .IN3(b[4]), .IN4(n42), .IN5(n43), .Q(
        c[28]) );
  AO222X1 U27 ( .IN1(n6), .IN2(n44), .IN3(n4), .IN4(n45), .IN5(n20), .IN6(n46), 
        .Q(n43) );
  AO221X1 U28 ( .IN1(a[27]), .IN2(n22), .IN3(a[26]), .IN4(n23), .IN5(n47), .Q(
        n45) );
  AO22X1 U29 ( .IN1(a[28]), .IN2(n25), .IN3(a[25]), .IN4(n26), .Q(n47) );
  AO221X1 U30 ( .IN1(n14), .IN2(n48), .IN3(b[4]), .IN4(n49), .IN5(n50), .Q(
        c[27]) );
  AO222X1 U31 ( .IN1(n6), .IN2(n21), .IN3(n4), .IN4(n18), .IN5(n20), .IN6(n15), 
        .Q(n50) );
  AO221X1 U32 ( .IN1(a[26]), .IN2(n22), .IN3(a[25]), .IN4(n23), .IN5(n51), .Q(
        n18) );
  AO22X1 U33 ( .IN1(a[27]), .IN2(n25), .IN3(a[24]), .IN4(n26), .Q(n51) );
  AO221X1 U34 ( .IN1(n14), .IN2(n52), .IN3(b[4]), .IN4(n53), .IN5(n54), .Q(
        c[26]) );
  AO222X1 U35 ( .IN1(n6), .IN2(n32), .IN3(n4), .IN4(n30), .IN5(n20), .IN6(n27), 
        .Q(n54) );
  AO221X1 U36 ( .IN1(a[25]), .IN2(n22), .IN3(a[24]), .IN4(n23), .IN5(n55), .Q(
        n30) );
  AO22X1 U37 ( .IN1(a[26]), .IN2(n25), .IN3(a[23]), .IN4(n26), .Q(n55) );
  AO221X1 U38 ( .IN1(n20), .IN2(n34), .IN3(n14), .IN4(n56), .IN5(n57), .Q(
        c[25]) );
  AO222X1 U39 ( .IN1(n4), .IN2(n37), .IN3(b[4]), .IN4(n2), .IN5(n6), .IN6(n39), 
        .Q(n57) );
  AO222X1 U40 ( .IN1(n58), .IN2(n10), .IN3(n59), .IN4(n11), .IN5(n60), .IN6(
        n61), .Q(n2) );
  AO221X1 U41 ( .IN1(a[24]), .IN2(n22), .IN3(a[23]), .IN4(n23), .IN5(n62), .Q(
        n37) );
  AO22X1 U42 ( .IN1(a[25]), .IN2(n25), .IN3(a[22]), .IN4(n26), .Q(n62) );
  AO221X1 U43 ( .IN1(n14), .IN2(n63), .IN3(n20), .IN4(n41), .IN5(n64), .Q(
        c[24]) );
  AO222X1 U44 ( .IN1(n4), .IN2(n44), .IN3(b[4]), .IN4(n3), .IN5(n6), .IN6(n46), 
        .Q(n64) );
  AO222X1 U45 ( .IN1(n58), .IN2(n65), .IN3(n66), .IN4(n59), .IN5(n60), .IN6(
        n67), .Q(n3) );
  AO221X1 U46 ( .IN1(a[23]), .IN2(n22), .IN3(a[22]), .IN4(n23), .IN5(n68), .Q(
        n44) );
  AO22X1 U47 ( .IN1(a[24]), .IN2(n25), .IN3(a[21]), .IN4(n26), .Q(n68) );
  NAND2X0 U48 ( .IN1(n69), .IN2(n70), .QN(c[23]) );
  AOI222X1 U49 ( .IN1(n21), .IN2(n4), .IN3(n7), .IN4(n71), .IN5(n5), .IN6(n72), 
        .QN(n70) );
  AO221X1 U50 ( .IN1(a[22]), .IN2(n22), .IN3(a[21]), .IN4(n23), .IN5(n73), .Q(
        n21) );
  AO22X1 U51 ( .IN1(a[23]), .IN2(n25), .IN3(a[20]), .IN4(n26), .Q(n73) );
  AOI222X1 U52 ( .IN1(n48), .IN2(n20), .IN3(n15), .IN4(n6), .IN5(n74), .IN6(
        n14), .QN(n69) );
  NAND2X0 U53 ( .IN1(n75), .IN2(n76), .QN(c[22]) );
  AOI222X1 U54 ( .IN1(n32), .IN2(n4), .IN3(n9), .IN4(n71), .IN5(n8), .IN6(n72), 
        .QN(n76) );
  AO221X1 U55 ( .IN1(a[21]), .IN2(n22), .IN3(a[20]), .IN4(n23), .IN5(n77), .Q(
        n32) );
  AO22X1 U56 ( .IN1(a[22]), .IN2(n25), .IN3(a[19]), .IN4(n26), .Q(n77) );
  AOI222X1 U57 ( .IN1(n52), .IN2(n20), .IN3(n27), .IN4(n6), .IN5(n78), .IN6(
        n14), .QN(n75) );
  NAND2X0 U58 ( .IN1(n79), .IN2(n80), .QN(c[21]) );
  AOI222X1 U59 ( .IN1(n39), .IN2(n4), .IN3(n11), .IN4(n71), .IN5(n10), .IN6(
        n72), .QN(n80) );
  AND2X1 U60 ( .IN1(b[4]), .IN2(n58), .Q(n71) );
  AO221X1 U61 ( .IN1(a[20]), .IN2(n22), .IN3(a[19]), .IN4(n23), .IN5(n81), .Q(
        n39) );
  AO22X1 U62 ( .IN1(a[21]), .IN2(n25), .IN3(a[18]), .IN4(n26), .Q(n81) );
  AOI222X1 U63 ( .IN1(n56), .IN2(n20), .IN3(n34), .IN4(n6), .IN5(n61), .IN6(
        n14), .QN(n79) );
  AO221X1 U64 ( .IN1(n20), .IN2(n63), .IN3(n6), .IN4(n41), .IN5(n82), .Q(c[20]) );
  AO222X1 U65 ( .IN1(n4), .IN2(n46), .IN3(n83), .IN4(b[4]), .IN5(n14), .IN6(
        n67), .Q(n82) );
  AND2X1 U66 ( .IN1(n13), .IN2(n12), .Q(n83) );
  AO221X1 U67 ( .IN1(a[19]), .IN2(n22), .IN3(a[18]), .IN4(n23), .IN5(n84), .Q(
        n46) );
  AO22X1 U68 ( .IN1(a[20]), .IN2(n25), .IN3(a[17]), .IN4(n26), .Q(n84) );
  AND2X1 U69 ( .IN1(n11), .IN2(n4), .Q(c[1]) );
  AO221X1 U70 ( .IN1(n20), .IN2(n74), .IN3(n6), .IN4(n48), .IN5(n85), .Q(c[19]) );
  AO222X1 U71 ( .IN1(n4), .IN2(n15), .IN3(n72), .IN4(n7), .IN5(n14), .IN6(n5), 
        .Q(n85) );
  AO221X1 U72 ( .IN1(a[18]), .IN2(n22), .IN3(a[17]), .IN4(n23), .IN5(n86), .Q(
        n15) );
  AO22X1 U73 ( .IN1(a[19]), .IN2(n25), .IN3(a[16]), .IN4(n26), .Q(n86) );
  AO221X1 U74 ( .IN1(n20), .IN2(n78), .IN3(n6), .IN4(n52), .IN5(n87), .Q(c[18]) );
  AO222X1 U75 ( .IN1(n4), .IN2(n27), .IN3(n72), .IN4(n9), .IN5(n14), .IN6(n8), 
        .Q(n87) );
  AO221X1 U76 ( .IN1(a[17]), .IN2(n22), .IN3(a[16]), .IN4(n23), .IN5(n88), .Q(
        n27) );
  AO22X1 U77 ( .IN1(a[18]), .IN2(n25), .IN3(a[15]), .IN4(n26), .Q(n88) );
  AO221X1 U78 ( .IN1(n20), .IN2(n61), .IN3(n6), .IN4(n56), .IN5(n89), .Q(c[17]) );
  AO222X1 U79 ( .IN1(n4), .IN2(n34), .IN3(n72), .IN4(n11), .IN5(n14), .IN6(n10), .Q(n89) );
  AO221X1 U80 ( .IN1(a[16]), .IN2(n22), .IN3(a[15]), .IN4(n23), .IN5(n90), .Q(
        n34) );
  AO22X1 U81 ( .IN1(a[17]), .IN2(n25), .IN3(a[14]), .IN4(n26), .Q(n90) );
  AO221X1 U82 ( .IN1(n4), .IN2(n41), .IN3(n6), .IN4(n63), .IN5(n91), .Q(c[16])
         );
  AO222X1 U83 ( .IN1(n14), .IN2(n65), .IN3(n72), .IN4(n66), .IN5(n20), .IN6(
        n67), .Q(n91) );
  AND2X1 U84 ( .IN1(n59), .IN2(n1), .Q(n20) );
  AND2X1 U85 ( .IN1(b[4]), .IN2(n60), .Q(n72) );
  AND2X1 U86 ( .IN1(n92), .IN2(n1), .Q(n14) );
  AND2X1 U87 ( .IN1(n58), .IN2(n1), .Q(n6) );
  AO221X1 U88 ( .IN1(a[15]), .IN2(n22), .IN3(a[14]), .IN4(n23), .IN5(n93), .Q(
        n41) );
  AO22X1 U89 ( .IN1(a[16]), .IN2(n25), .IN3(a[13]), .IN4(n26), .Q(n93) );
  INVX0 U90 ( .INP(n94), .ZN(n4) );
  AND2X1 U91 ( .IN1(n1), .IN2(n16), .Q(c[15]) );
  AO221X1 U92 ( .IN1(n58), .IN2(n74), .IN3(n59), .IN4(n5), .IN5(n95), .Q(n16)
         );
  AO22X1 U93 ( .IN1(n60), .IN2(n48), .IN3(n92), .IN4(n7), .Q(n95) );
  AO221X1 U94 ( .IN1(a[14]), .IN2(n22), .IN3(a[13]), .IN4(n23), .IN5(n96), .Q(
        n48) );
  AO22X1 U95 ( .IN1(a[15]), .IN2(n25), .IN3(a[12]), .IN4(n26), .Q(n96) );
  AND2X1 U96 ( .IN1(n1), .IN2(n28), .Q(c[14]) );
  AO221X1 U97 ( .IN1(n58), .IN2(n78), .IN3(n59), .IN4(n8), .IN5(n97), .Q(n28)
         );
  AO22X1 U98 ( .IN1(n60), .IN2(n52), .IN3(n92), .IN4(n9), .Q(n97) );
  AO221X1 U99 ( .IN1(a[13]), .IN2(n22), .IN3(a[12]), .IN4(n23), .IN5(n98), .Q(
        n52) );
  AO22X1 U100 ( .IN1(a[14]), .IN2(n25), .IN3(a[11]), .IN4(n26), .Q(n98) );
  AND2X1 U101 ( .IN1(n1), .IN2(n35), .Q(c[13]) );
  AO221X1 U102 ( .IN1(n60), .IN2(n56), .IN3(n58), .IN4(n61), .IN5(n99), .Q(n35) );
  AO22X1 U103 ( .IN1(n59), .IN2(n10), .IN3(n92), .IN4(n11), .Q(n99) );
  AO22X1 U104 ( .IN1(a[1]), .IN2(n25), .IN3(a[0]), .IN4(n22), .Q(n11) );
  NOR2X0 U105 ( .IN1(n100), .IN2(n13), .QN(n92) );
  AO221X1 U106 ( .IN1(a[4]), .IN2(n22), .IN3(a[3]), .IN4(n23), .IN5(n101), .Q(
        n10) );
  AO22X1 U107 ( .IN1(a[5]), .IN2(n25), .IN3(a[2]), .IN4(n26), .Q(n101) );
  AO221X1 U108 ( .IN1(a[8]), .IN2(n22), .IN3(a[7]), .IN4(n23), .IN5(n102), .Q(
        n61) );
  AO22X1 U109 ( .IN1(a[9]), .IN2(n25), .IN3(a[6]), .IN4(n26), .Q(n102) );
  AO221X1 U110 ( .IN1(a[12]), .IN2(n22), .IN3(a[11]), .IN4(n23), .IN5(n103), 
        .Q(n56) );
  AO22X1 U111 ( .IN1(a[13]), .IN2(n25), .IN3(a[10]), .IN4(n26), .Q(n103) );
  AND2X1 U112 ( .IN1(n1), .IN2(n42), .Q(c[12]) );
  AO222X1 U113 ( .IN1(n58), .IN2(n67), .IN3(b[3]), .IN4(n12), .IN5(n60), .IN6(
        n63), .Q(n42) );
  AO221X1 U114 ( .IN1(a[11]), .IN2(n22), .IN3(a[10]), .IN4(n23), .IN5(n104), 
        .Q(n63) );
  AO22X1 U115 ( .IN1(a[12]), .IN2(n25), .IN3(a[9]), .IN4(n26), .Q(n104) );
  MUX21X1 U116 ( .IN1(n65), .IN2(n66), .S(b[2]), .Q(n12) );
  INVX0 U117 ( .INP(n105), .ZN(n66) );
  AO221X1 U118 ( .IN1(a[3]), .IN2(n22), .IN3(a[2]), .IN4(n23), .IN5(n106), .Q(
        n65) );
  AO22X1 U119 ( .IN1(a[4]), .IN2(n25), .IN3(n26), .IN4(a[1]), .Q(n106) );
  AO221X1 U120 ( .IN1(a[7]), .IN2(n22), .IN3(a[6]), .IN4(n23), .IN5(n107), .Q(
        n67) );
  AO22X1 U121 ( .IN1(a[8]), .IN2(n25), .IN3(a[5]), .IN4(n26), .Q(n107) );
  AND2X1 U122 ( .IN1(n1), .IN2(n49), .Q(c[11]) );
  AO222X1 U123 ( .IN1(n59), .IN2(n7), .IN3(n60), .IN4(n74), .IN5(n58), .IN6(n5), .Q(n49) );
  AO221X1 U124 ( .IN1(a[6]), .IN2(n22), .IN3(a[5]), .IN4(n23), .IN5(n108), .Q(
        n5) );
  AO22X1 U125 ( .IN1(a[7]), .IN2(n25), .IN3(n26), .IN4(a[4]), .Q(n108) );
  AO221X1 U126 ( .IN1(a[10]), .IN2(n22), .IN3(a[9]), .IN4(n23), .IN5(n109), 
        .Q(n74) );
  AO22X1 U127 ( .IN1(a[11]), .IN2(n25), .IN3(a[8]), .IN4(n26), .Q(n109) );
  AO221X1 U128 ( .IN1(a[2]), .IN2(n22), .IN3(n23), .IN4(a[1]), .IN5(n110), .Q(
        n7) );
  AO22X1 U129 ( .IN1(a[3]), .IN2(n25), .IN3(n26), .IN4(a[0]), .Q(n110) );
  AND2X1 U130 ( .IN1(n1), .IN2(n53), .Q(c[10]) );
  AO222X1 U131 ( .IN1(n59), .IN2(n9), .IN3(n60), .IN4(n78), .IN5(n58), .IN6(n8), .Q(n53) );
  AO221X1 U132 ( .IN1(a[5]), .IN2(n22), .IN3(n23), .IN4(a[4]), .IN5(n111), .Q(
        n8) );
  AO22X1 U133 ( .IN1(a[6]), .IN2(n25), .IN3(n26), .IN4(a[3]), .Q(n111) );
  NOR2X0 U134 ( .IN1(n100), .IN2(b[3]), .QN(n58) );
  INVX0 U135 ( .INP(b[2]), .ZN(n100) );
  AO221X1 U136 ( .IN1(a[9]), .IN2(n22), .IN3(a[8]), .IN4(n23), .IN5(n112), .Q(
        n78) );
  AO22X1 U137 ( .IN1(a[10]), .IN2(n25), .IN3(a[7]), .IN4(n26), .Q(n112) );
  AO222X1 U138 ( .IN1(n23), .IN2(a[0]), .IN3(a[1]), .IN4(n22), .IN5(a[2]), 
        .IN6(n25), .Q(n9) );
  INVX0 U139 ( .INP(b[0]), .ZN(n114) );
  INVX0 U140 ( .INP(b[1]), .ZN(n113) );
  NOR2X0 U141 ( .IN1(n13), .IN2(b[2]), .QN(n59) );
  INVX0 U142 ( .INP(b[3]), .ZN(n13) );
  NOR2X0 U143 ( .IN1(n105), .IN2(n94), .QN(c[0]) );
  NAND2X0 U144 ( .IN1(n60), .IN2(n1), .QN(n94) );
  INVX0 U145 ( .INP(b[4]), .ZN(n1) );
  NOR2X0 U146 ( .IN1(b[2]), .IN2(b[3]), .QN(n60) );
  NAND2X0 U147 ( .IN1(n25), .IN2(a[0]), .QN(n105) );
endmodule


module data_extract_v1_N32_es2_1 ( in, rc, regime, exp, mant );
  input [31:0] in;
  output [4:0] regime;
  output [1:0] exp;
  output [29:0] mant;
  output rc;
  wire   n1, n2, n3, n5, n6, n7, n8, n9;
  wire   [29:0] xin_r;
  wire   [4:0] k;
  assign rc = in[30];

  LOD_N_N32_1 xinst_k ( .in({1'b0, xin_r, in[30]}), .out(k) );
  DSR_left_N_S_N32_S5_1 ls ( .a({in[29:0], 1'b0, 1'b0}), .b(k), .c({exp, mant}) );
  INVX2 U2 ( .INP(in[30]), .ZN(n1) );
  XNOR2X1 U3 ( .IN1(in[9]), .IN2(n1), .Q(xin_r[9]) );
  XNOR2X1 U4 ( .IN1(in[8]), .IN2(n1), .Q(xin_r[8]) );
  XNOR2X1 U5 ( .IN1(in[7]), .IN2(n1), .Q(xin_r[7]) );
  XNOR2X1 U6 ( .IN1(in[6]), .IN2(n1), .Q(xin_r[6]) );
  XNOR2X1 U7 ( .IN1(in[5]), .IN2(n1), .Q(xin_r[5]) );
  XNOR2X1 U8 ( .IN1(in[4]), .IN2(n1), .Q(xin_r[4]) );
  XNOR2X1 U9 ( .IN1(in[3]), .IN2(n1), .Q(xin_r[3]) );
  XNOR2X1 U10 ( .IN1(n1), .IN2(in[2]), .Q(xin_r[2]) );
  XNOR2X1 U12 ( .IN1(n1), .IN2(in[29]), .Q(xin_r[29]) );
  XNOR2X1 U13 ( .IN1(n1), .IN2(in[28]), .Q(xin_r[28]) );
  XNOR2X1 U14 ( .IN1(n1), .IN2(in[27]), .Q(xin_r[27]) );
  XNOR2X1 U15 ( .IN1(n1), .IN2(in[26]), .Q(xin_r[26]) );
  XNOR2X1 U16 ( .IN1(n1), .IN2(in[25]), .Q(xin_r[25]) );
  XNOR2X1 U17 ( .IN1(n1), .IN2(in[24]), .Q(xin_r[24]) );
  XNOR2X1 U18 ( .IN1(n1), .IN2(in[23]), .Q(xin_r[23]) );
  XNOR2X1 U19 ( .IN1(n1), .IN2(in[22]), .Q(xin_r[22]) );
  XNOR2X1 U20 ( .IN1(n1), .IN2(in[21]), .Q(xin_r[21]) );
  XNOR2X1 U21 ( .IN1(n1), .IN2(in[20]), .Q(xin_r[20]) );
  XNOR2X1 U22 ( .IN1(n1), .IN2(in[1]), .Q(xin_r[1]) );
  XNOR2X1 U23 ( .IN1(n1), .IN2(in[19]), .Q(xin_r[19]) );
  XNOR2X1 U24 ( .IN1(n1), .IN2(in[18]), .Q(xin_r[18]) );
  XNOR2X1 U25 ( .IN1(n1), .IN2(in[17]), .Q(xin_r[17]) );
  XNOR2X1 U26 ( .IN1(n1), .IN2(in[16]), .Q(xin_r[16]) );
  XNOR2X1 U27 ( .IN1(n1), .IN2(in[15]), .Q(xin_r[15]) );
  XNOR2X1 U28 ( .IN1(n1), .IN2(in[14]), .Q(xin_r[14]) );
  XNOR2X1 U29 ( .IN1(n1), .IN2(in[13]), .Q(xin_r[13]) );
  XNOR2X1 U30 ( .IN1(n1), .IN2(in[12]), .Q(xin_r[12]) );
  XNOR2X1 U31 ( .IN1(n1), .IN2(in[11]), .Q(xin_r[11]) );
  XNOR2X1 U32 ( .IN1(n1), .IN2(in[10]), .Q(xin_r[10]) );
  XNOR2X1 U33 ( .IN1(n1), .IN2(in[0]), .Q(xin_r[0]) );
  XOR2X1 U34 ( .IN1(k[4]), .IN2(n2), .Q(regime[4]) );
  NOR2X0 U35 ( .IN1(k[3]), .IN2(n3), .QN(n2) );
  XNOR2X1 U36 ( .IN1(k[3]), .IN2(n3), .Q(regime[3]) );
  INVX0 U37 ( .INP(n5), .ZN(n3) );
  AO21X1 U38 ( .IN1(k[2]), .IN2(n6), .IN3(n5), .Q(regime[2]) );
  NOR2X0 U39 ( .IN1(n6), .IN2(k[2]), .QN(n5) );
  INVX0 U40 ( .INP(n7), .ZN(n6) );
  AO21X1 U41 ( .IN1(k[1]), .IN2(n8), .IN3(n7), .Q(regime[1]) );
  NOR2X0 U42 ( .IN1(n8), .IN2(k[1]), .QN(n7) );
  INVX0 U43 ( .INP(n9), .ZN(n8) );
  AO21X1 U44 ( .IN1(k[0]), .IN2(n1), .IN3(n9), .Q(regime[0]) );
  NOR2X0 U45 ( .IN1(n1), .IN2(k[0]), .QN(n9) );
endmodule


module abs_regime_N5_0 ( rc, regime, regime_N );
  input [4:0] regime;
  output [5:0] regime_N;
  input rc;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  assign regime_N[0] = regime[0];

  OA21X1 U2 ( .IN1(regime[4]), .IN2(n1), .IN3(n2), .Q(regime_N[5]) );
  INVX0 U3 ( .INP(n3), .ZN(n1) );
  XOR2X1 U4 ( .IN1(regime[4]), .IN2(n4), .Q(regime_N[4]) );
  NOR2X0 U5 ( .IN1(n3), .IN2(rc), .QN(n4) );
  NOR2X0 U6 ( .IN1(n5), .IN2(regime[3]), .QN(n3) );
  XNOR2X1 U7 ( .IN1(regime[3]), .IN2(n6), .Q(regime_N[3]) );
  NAND2X0 U8 ( .IN1(n2), .IN2(n5), .QN(n6) );
  NAND2X0 U9 ( .IN1(n7), .IN2(n8), .QN(n5) );
  XNOR2X1 U10 ( .IN1(n8), .IN2(n9), .Q(regime_N[2]) );
  NOR2X0 U11 ( .IN1(n7), .IN2(rc), .QN(n9) );
  NOR2X0 U12 ( .IN1(regime[1]), .IN2(regime[0]), .QN(n7) );
  INVX0 U13 ( .INP(regime[2]), .ZN(n8) );
  XOR2X1 U14 ( .IN1(regime[1]), .IN2(n10), .Q(regime_N[1]) );
  AND2X1 U15 ( .IN1(n2), .IN2(regime[0]), .Q(n10) );
  INVX0 U16 ( .INP(rc), .ZN(n2) );
endmodule


module abs_regime_N5_1 ( rc, regime, regime_N );
  input [4:0] regime;
  output [5:0] regime_N;
  input rc;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  assign regime_N[0] = regime[0];

  XNOR2X1 U2 ( .IN1(regime[1]), .IN2(n1), .Q(regime_N[1]) );
  NAND2X1 U3 ( .IN1(n3), .IN2(regime[0]), .QN(n1) );
  OA21X1 U4 ( .IN1(regime[4]), .IN2(n2), .IN3(n3), .Q(regime_N[5]) );
  INVX0 U5 ( .INP(n4), .ZN(n2) );
  XOR2X1 U6 ( .IN1(regime[4]), .IN2(n5), .Q(regime_N[4]) );
  NOR2X0 U7 ( .IN1(n4), .IN2(rc), .QN(n5) );
  NOR2X0 U8 ( .IN1(n6), .IN2(regime[3]), .QN(n4) );
  XNOR2X1 U9 ( .IN1(regime[3]), .IN2(n7), .Q(regime_N[3]) );
  NAND2X0 U10 ( .IN1(n3), .IN2(n6), .QN(n7) );
  NAND2X0 U11 ( .IN1(n8), .IN2(n9), .QN(n6) );
  XNOR2X1 U12 ( .IN1(n9), .IN2(n10), .Q(regime_N[2]) );
  NOR2X0 U13 ( .IN1(n8), .IN2(rc), .QN(n10) );
  NOR2X0 U14 ( .IN1(regime[1]), .IN2(regime[0]), .QN(n8) );
  INVX0 U15 ( .INP(regime[2]), .ZN(n9) );
  INVX0 U16 ( .INP(rc), .ZN(n3) );
endmodule


module sub_N_in_N8_0_DW01_sub_0_DW01_sub_5 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [7:1] carry;

  FADDX1 U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .S(DIFF[7]) );
  FADDX1 U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1 U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1 U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1 U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FADDX1 U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FADDX1 U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  INVX0 U1 ( .INP(B[3]), .ZN(n6) );
  INVX0 U2 ( .INP(B[2]), .ZN(n7) );
  NAND2X1 U3 ( .IN1(n1), .IN2(B[0]), .QN(carry[1]) );
  INVX0 U4 ( .INP(B[1]), .ZN(n8) );
  INVX0 U5 ( .INP(A[0]), .ZN(n1) );
  INVX0 U6 ( .INP(B[5]), .ZN(n4) );
  INVX0 U7 ( .INP(B[7]), .ZN(n2) );
  INVX0 U8 ( .INP(B[4]), .ZN(n5) );
  INVX0 U9 ( .INP(B[6]), .ZN(n3) );
  XOR2X1 U10 ( .IN1(B[0]), .IN2(A[0]), .Q(DIFF[0]) );
endmodule


module sub_N_in_N8_0 ( a, b, c );
  input [8:0] a;
  input [8:0] b;
  output [8:0] c;


  sub_N_in_N8_0_DW01_sub_0_DW01_sub_5 sub_221 ( .A(a), .B(b), .CI(1'b0), 
        .DIFF(c) );
endmodule


module sub_N_N8_0 ( a, b, c );
  input [7:0] a;
  input [7:0] b;
  output [8:0] c;


  sub_N_in_N8_0 s1 ( .a({1'b0, a}), .b({1'b0, b}), .c(c) );
endmodule


module DSR_right_N_S_N32_S5 ( a, b, c );
  input [31:0] a;
  input [4:0] b;
  output [31:0] c;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114;

  AO221X1 U2 ( .IN1(n44), .IN2(a[30]), .IN3(n45), .IN4(a[31]), .IN5(n108), .Q(
        n18) );
  AO221X1 U3 ( .IN1(a[26]), .IN2(n44), .IN3(n45), .IN4(a[27]), .IN5(n110), .Q(
        n19) );
  AO221X1 U4 ( .IN1(a[22]), .IN2(n44), .IN3(a[23]), .IN4(n45), .IN5(n111), .Q(
        n21) );
  AO221X1 U5 ( .IN1(a[18]), .IN2(n44), .IN3(a[19]), .IN4(n45), .IN5(n112), .Q(
        n20) );
  AO221X1 U6 ( .IN1(n44), .IN2(a[29]), .IN3(n45), .IN4(a[30]), .IN5(n90), .Q(
        n67) );
  NOR2X2 U7 ( .IN1(b[0]), .IN2(b[1]), .QN(n47) );
  NOR2X2 U8 ( .IN1(n114), .IN2(n113), .QN(n45) );
  NOR2X2 U9 ( .IN1(n114), .IN2(b[0]), .QN(n44) );
  NOR2X2 U10 ( .IN1(n113), .IN2(b[1]), .QN(n48) );
  NAND2X0 U11 ( .IN1(n1), .IN2(n2), .QN(c[9]) );
  AOI222X1 U12 ( .IN1(n3), .IN2(n4), .IN3(n5), .IN4(n6), .IN5(n7), .IN6(n8), 
        .QN(n2) );
  AOI222X1 U13 ( .IN1(n9), .IN2(n10), .IN3(n11), .IN4(n12), .IN5(n13), .IN6(
        n14), .QN(n1) );
  NAND2X0 U14 ( .IN1(n15), .IN2(n16), .QN(c[8]) );
  AOI222X1 U15 ( .IN1(n17), .IN2(n14), .IN3(n18), .IN4(n6), .IN5(n19), .IN6(n8), .QN(n16) );
  AOI222X1 U16 ( .IN1(n20), .IN2(n10), .IN3(n21), .IN4(n12), .IN5(n22), .IN6(
        n4), .QN(n15) );
  AO221X1 U17 ( .IN1(n14), .IN2(n23), .IN3(n10), .IN4(n24), .IN5(n25), .Q(c[7]) );
  AO222X1 U18 ( .IN1(b[4]), .IN2(n26), .IN3(n4), .IN4(n27), .IN5(n12), .IN6(
        n28), .Q(n25) );
  AO221X1 U19 ( .IN1(n12), .IN2(n29), .IN3(n14), .IN4(n30), .IN5(n31), .Q(c[6]) );
  AO222X1 U20 ( .IN1(b[4]), .IN2(n32), .IN3(n4), .IN4(n33), .IN5(n10), .IN6(
        n34), .Q(n31) );
  AO221X1 U21 ( .IN1(n10), .IN2(n13), .IN3(n12), .IN4(n9), .IN5(n35), .Q(c[5])
         );
  AO222X1 U22 ( .IN1(n14), .IN2(n3), .IN3(b[4]), .IN4(n36), .IN5(n4), .IN6(n37), .Q(n35) );
  AO221X1 U23 ( .IN1(n4), .IN2(n38), .IN3(n14), .IN4(n22), .IN5(n39), .Q(c[4])
         );
  AO222X1 U24 ( .IN1(n10), .IN2(n17), .IN3(b[4]), .IN4(n40), .IN5(n12), .IN6(
        n20), .Q(n39) );
  AO221X1 U25 ( .IN1(n10), .IN2(n23), .IN3(n12), .IN4(n24), .IN5(n41), .Q(c[3]) );
  AO222X1 U26 ( .IN1(n14), .IN2(n27), .IN3(n4), .IN4(n42), .IN5(b[4]), .IN6(
        n43), .Q(n41) );
  AO221X1 U27 ( .IN1(a[5]), .IN2(n44), .IN3(a[6]), .IN4(n45), .IN5(n46), .Q(
        n42) );
  AO22X1 U28 ( .IN1(a[3]), .IN2(n47), .IN3(a[4]), .IN4(n48), .Q(n46) );
  AO221X1 U29 ( .IN1(a[9]), .IN2(n44), .IN3(a[10]), .IN4(n45), .IN5(n49), .Q(
        n27) );
  AO22X1 U30 ( .IN1(a[7]), .IN2(n47), .IN3(a[8]), .IN4(n48), .Q(n49) );
  NOR2X0 U31 ( .IN1(n50), .IN2(n51), .QN(c[31]) );
  AND2X1 U32 ( .IN1(n52), .IN2(n4), .Q(c[30]) );
  AO221X1 U33 ( .IN1(n12), .IN2(n34), .IN3(n10), .IN4(n30), .IN5(n53), .Q(c[2]) );
  AO222X1 U34 ( .IN1(n14), .IN2(n33), .IN3(n4), .IN4(n54), .IN5(b[4]), .IN6(
        n55), .Q(n53) );
  AO221X1 U35 ( .IN1(a[4]), .IN2(n44), .IN3(a[5]), .IN4(n45), .IN5(n56), .Q(
        n54) );
  AO22X1 U36 ( .IN1(a[2]), .IN2(n47), .IN3(a[3]), .IN4(n48), .Q(n56) );
  AO221X1 U37 ( .IN1(a[8]), .IN2(n44), .IN3(a[9]), .IN4(n45), .IN5(n57), .Q(
        n33) );
  AO22X1 U38 ( .IN1(a[6]), .IN2(n47), .IN3(a[7]), .IN4(n48), .Q(n57) );
  AND2X1 U39 ( .IN1(n5), .IN2(n4), .Q(c[29]) );
  AND2X1 U40 ( .IN1(n18), .IN2(n4), .Q(c[28]) );
  AND3X1 U41 ( .IN1(n58), .IN2(n59), .IN3(n60), .Q(c[27]) );
  AO22X1 U42 ( .IN1(n4), .IN2(n61), .IN3(n14), .IN4(n52), .Q(c[26]) );
  AO22X1 U43 ( .IN1(n14), .IN2(n5), .IN3(n4), .IN4(n7), .Q(c[25]) );
  AO22X1 U44 ( .IN1(n14), .IN2(n18), .IN3(n4), .IN4(n19), .Q(c[24]) );
  AND2X1 U45 ( .IN1(n59), .IN2(n26), .Q(c[23]) );
  AO222X1 U46 ( .IN1(n62), .IN2(n63), .IN3(n64), .IN4(n65), .IN5(n66), .IN6(
        n67), .Q(n26) );
  AND2X1 U47 ( .IN1(n59), .IN2(n32), .Q(c[22]) );
  AO222X1 U48 ( .IN1(n65), .IN2(n52), .IN3(n62), .IN4(n68), .IN5(n66), .IN6(
        n61), .Q(n32) );
  AND2X1 U49 ( .IN1(n59), .IN2(n36), .Q(c[21]) );
  AO222X1 U50 ( .IN1(n65), .IN2(n5), .IN3(n66), .IN4(n7), .IN5(n62), .IN6(n11), 
        .Q(n36) );
  AND2X1 U51 ( .IN1(n59), .IN2(n40), .Q(c[20]) );
  AO222X1 U52 ( .IN1(n66), .IN2(n19), .IN3(n65), .IN4(n18), .IN5(n62), .IN6(
        n21), .Q(n40) );
  AO221X1 U53 ( .IN1(b[4]), .IN2(n69), .IN3(n12), .IN4(n13), .IN5(n70), .Q(
        c[1]) );
  AO222X1 U54 ( .IN1(n10), .IN2(n3), .IN3(n4), .IN4(n71), .IN5(n14), .IN6(n37), 
        .Q(n70) );
  AO221X1 U55 ( .IN1(a[7]), .IN2(n44), .IN3(a[8]), .IN4(n45), .IN5(n72), .Q(
        n37) );
  AO22X1 U56 ( .IN1(a[5]), .IN2(n47), .IN3(a[6]), .IN4(n48), .Q(n72) );
  AO221X1 U57 ( .IN1(a[3]), .IN2(n44), .IN3(a[4]), .IN4(n45), .IN5(n73), .Q(
        n71) );
  AO22X1 U58 ( .IN1(a[1]), .IN2(n47), .IN3(a[2]), .IN4(n48), .Q(n73) );
  AO221X1 U59 ( .IN1(a[11]), .IN2(n44), .IN3(a[12]), .IN4(n45), .IN5(n74), .Q(
        n3) );
  AO22X1 U60 ( .IN1(a[9]), .IN2(n47), .IN3(a[10]), .IN4(n48), .Q(n74) );
  AND2X1 U61 ( .IN1(n59), .IN2(n43), .Q(c[19]) );
  AO222X1 U62 ( .IN1(b[3]), .IN2(n58), .IN3(n66), .IN4(n63), .IN5(n62), .IN6(
        n28), .Q(n43) );
  AND2X1 U63 ( .IN1(n59), .IN2(n55), .Q(c[18]) );
  AO221X1 U64 ( .IN1(n75), .IN2(n52), .IN3(n62), .IN4(n29), .IN5(n76), .Q(n55)
         );
  AO22X1 U65 ( .IN1(n65), .IN2(n61), .IN3(n66), .IN4(n68), .Q(n76) );
  AND2X1 U66 ( .IN1(n59), .IN2(n69), .Q(c[17]) );
  AO221X1 U67 ( .IN1(n66), .IN2(n11), .IN3(n62), .IN4(n9), .IN5(n77), .Q(n69)
         );
  AO22X1 U68 ( .IN1(n65), .IN2(n7), .IN3(n75), .IN4(n5), .Q(n77) );
  AND2X1 U69 ( .IN1(n59), .IN2(n78), .Q(c[16]) );
  AO221X1 U70 ( .IN1(n14), .IN2(n28), .IN3(n4), .IN4(n24), .IN5(n79), .Q(c[15]) );
  AO222X1 U71 ( .IN1(n10), .IN2(n63), .IN3(n64), .IN4(n8), .IN5(n12), .IN6(n67), .Q(n79) );
  AO221X1 U72 ( .IN1(n10), .IN2(n68), .IN3(n12), .IN4(n61), .IN5(n80), .Q(
        c[14]) );
  AO222X1 U73 ( .IN1(n4), .IN2(n34), .IN3(n8), .IN4(n52), .IN5(n14), .IN6(n29), 
        .Q(n80) );
  AO221X1 U74 ( .IN1(n4), .IN2(n13), .IN3(n14), .IN4(n9), .IN5(n81), .Q(c[13])
         );
  AO222X1 U75 ( .IN1(n12), .IN2(n7), .IN3(n8), .IN4(n5), .IN5(n10), .IN6(n11), 
        .Q(n81) );
  AO221X1 U76 ( .IN1(a[23]), .IN2(n44), .IN3(a[24]), .IN4(n45), .IN5(n82), .Q(
        n11) );
  AO22X1 U77 ( .IN1(a[21]), .IN2(n47), .IN3(a[22]), .IN4(n48), .Q(n82) );
  AO222X1 U78 ( .IN1(a[29]), .IN2(n47), .IN3(a[30]), .IN4(n48), .IN5(a[31]), 
        .IN6(n44), .Q(n5) );
  AO221X1 U79 ( .IN1(a[27]), .IN2(n44), .IN3(a[28]), .IN4(n45), .IN5(n83), .Q(
        n7) );
  AO22X1 U80 ( .IN1(a[25]), .IN2(n47), .IN3(a[26]), .IN4(n48), .Q(n83) );
  AO221X1 U81 ( .IN1(a[19]), .IN2(n44), .IN3(a[20]), .IN4(n45), .IN5(n84), .Q(
        n9) );
  AO22X1 U82 ( .IN1(a[17]), .IN2(n47), .IN3(a[18]), .IN4(n48), .Q(n84) );
  AO221X1 U83 ( .IN1(a[15]), .IN2(n44), .IN3(a[16]), .IN4(n45), .IN5(n85), .Q(
        n13) );
  AO22X1 U84 ( .IN1(a[13]), .IN2(n47), .IN3(a[14]), .IN4(n48), .Q(n85) );
  AO221X1 U85 ( .IN1(n10), .IN2(n21), .IN3(n14), .IN4(n20), .IN5(n86), .Q(
        c[12]) );
  AO222X1 U86 ( .IN1(n4), .IN2(n17), .IN3(n8), .IN4(n18), .IN5(n12), .IN6(n19), 
        .Q(n86) );
  AO221X1 U87 ( .IN1(n4), .IN2(n23), .IN3(n14), .IN4(n24), .IN5(n87), .Q(c[11]) );
  AO222X1 U88 ( .IN1(n12), .IN2(n63), .IN3(n88), .IN4(b[4]), .IN5(n10), .IN6(
        n28), .Q(n87) );
  AO221X1 U89 ( .IN1(a[21]), .IN2(n44), .IN3(a[22]), .IN4(n45), .IN5(n89), .Q(
        n28) );
  AO22X1 U90 ( .IN1(a[19]), .IN2(n47), .IN3(a[20]), .IN4(n48), .Q(n89) );
  AND2X1 U91 ( .IN1(n60), .IN2(n58), .Q(n88) );
  MUX21X1 U92 ( .IN1(n67), .IN2(n64), .S(b[2]), .Q(n58) );
  INVX0 U93 ( .INP(n51), .ZN(n64) );
  NAND2X0 U94 ( .IN1(a[31]), .IN2(n47), .QN(n51) );
  AO22X1 U95 ( .IN1(a[27]), .IN2(n47), .IN3(a[28]), .IN4(n48), .Q(n90) );
  AO221X1 U96 ( .IN1(a[25]), .IN2(n44), .IN3(n45), .IN4(a[26]), .IN5(n91), .Q(
        n63) );
  AO22X1 U97 ( .IN1(a[23]), .IN2(n47), .IN3(a[24]), .IN4(n48), .Q(n91) );
  AO221X1 U98 ( .IN1(a[17]), .IN2(n44), .IN3(a[18]), .IN4(n45), .IN5(n92), .Q(
        n24) );
  AO22X1 U99 ( .IN1(a[15]), .IN2(n47), .IN3(a[16]), .IN4(n48), .Q(n92) );
  AO221X1 U100 ( .IN1(a[13]), .IN2(n44), .IN3(a[14]), .IN4(n45), .IN5(n93), 
        .Q(n23) );
  AO22X1 U101 ( .IN1(a[11]), .IN2(n47), .IN3(a[12]), .IN4(n48), .Q(n93) );
  NAND2X0 U102 ( .IN1(n94), .IN2(n95), .QN(c[10]) );
  AOI222X1 U103 ( .IN1(n34), .IN2(n14), .IN3(n52), .IN4(n6), .IN5(n61), .IN6(
        n8), .QN(n95) );
  AND2X1 U104 ( .IN1(n62), .IN2(b[4]), .Q(n8) );
  AO221X1 U105 ( .IN1(a[28]), .IN2(n44), .IN3(n45), .IN4(a[29]), .IN5(n96), 
        .Q(n61) );
  AO22X1 U106 ( .IN1(a[26]), .IN2(n47), .IN3(a[27]), .IN4(n48), .Q(n96) );
  AND2X1 U107 ( .IN1(b[4]), .IN2(n66), .Q(n6) );
  AO22X1 U108 ( .IN1(n47), .IN2(a[30]), .IN3(a[31]), .IN4(n48), .Q(n52) );
  AO221X1 U109 ( .IN1(a[16]), .IN2(n44), .IN3(a[17]), .IN4(n45), .IN5(n97), 
        .Q(n34) );
  AO22X1 U110 ( .IN1(a[14]), .IN2(n47), .IN3(a[15]), .IN4(n48), .Q(n97) );
  AOI222X1 U111 ( .IN1(n30), .IN2(n4), .IN3(n29), .IN4(n10), .IN5(n68), .IN6(
        n12), .QN(n94) );
  AO221X1 U112 ( .IN1(a[24]), .IN2(n44), .IN3(n45), .IN4(a[25]), .IN5(n98), 
        .Q(n68) );
  AO22X1 U113 ( .IN1(a[22]), .IN2(n47), .IN3(a[23]), .IN4(n48), .Q(n98) );
  AO221X1 U114 ( .IN1(a[20]), .IN2(n44), .IN3(a[21]), .IN4(n45), .IN5(n99), 
        .Q(n29) );
  AO22X1 U115 ( .IN1(a[18]), .IN2(n47), .IN3(a[19]), .IN4(n48), .Q(n99) );
  AO221X1 U116 ( .IN1(a[12]), .IN2(n44), .IN3(a[13]), .IN4(n45), .IN5(n100), 
        .Q(n30) );
  AO22X1 U117 ( .IN1(a[10]), .IN2(n47), .IN3(a[11]), .IN4(n48), .Q(n100) );
  AO221X1 U118 ( .IN1(b[4]), .IN2(n78), .IN3(n14), .IN4(n38), .IN5(n101), .Q(
        c[0]) );
  AO222X1 U119 ( .IN1(n12), .IN2(n17), .IN3(n4), .IN4(n102), .IN5(n10), .IN6(
        n22), .Q(n101) );
  AO221X1 U120 ( .IN1(a[10]), .IN2(n44), .IN3(a[11]), .IN4(n45), .IN5(n103), 
        .Q(n22) );
  AO22X1 U121 ( .IN1(a[8]), .IN2(n47), .IN3(a[9]), .IN4(n48), .Q(n103) );
  AND2X1 U122 ( .IN1(n65), .IN2(n59), .Q(n10) );
  AO221X1 U123 ( .IN1(a[2]), .IN2(n44), .IN3(a[3]), .IN4(n45), .IN5(n104), .Q(
        n102) );
  AO22X1 U124 ( .IN1(a[0]), .IN2(n47), .IN3(a[1]), .IN4(n48), .Q(n104) );
  INVX0 U125 ( .INP(n50), .ZN(n4) );
  NAND2X0 U126 ( .IN1(n62), .IN2(n59), .QN(n50) );
  AO221X1 U127 ( .IN1(a[14]), .IN2(n44), .IN3(a[15]), .IN4(n45), .IN5(n105), 
        .Q(n17) );
  AO22X1 U128 ( .IN1(a[12]), .IN2(n47), .IN3(a[13]), .IN4(n48), .Q(n105) );
  AND2X1 U129 ( .IN1(n75), .IN2(n59), .Q(n12) );
  AO221X1 U130 ( .IN1(a[6]), .IN2(n44), .IN3(a[7]), .IN4(n45), .IN5(n106), .Q(
        n38) );
  AO22X1 U131 ( .IN1(a[4]), .IN2(n47), .IN3(a[5]), .IN4(n48), .Q(n106) );
  AND2X1 U132 ( .IN1(n66), .IN2(n59), .Q(n14) );
  INVX0 U133 ( .INP(b[4]), .ZN(n59) );
  AO221X1 U134 ( .IN1(n62), .IN2(n20), .IN3(n66), .IN4(n21), .IN5(n107), .Q(
        n78) );
  AO22X1 U135 ( .IN1(n65), .IN2(n19), .IN3(n75), .IN4(n18), .Q(n107) );
  AO22X1 U136 ( .IN1(a[28]), .IN2(n47), .IN3(a[29]), .IN4(n48), .Q(n108) );
  NOR2X0 U137 ( .IN1(n60), .IN2(n109), .QN(n75) );
  AO22X1 U138 ( .IN1(a[24]), .IN2(n47), .IN3(a[25]), .IN4(n48), .Q(n110) );
  NOR2X0 U139 ( .IN1(n60), .IN2(b[2]), .QN(n65) );
  INVX0 U140 ( .INP(b[3]), .ZN(n60) );
  AO22X1 U141 ( .IN1(a[20]), .IN2(n47), .IN3(a[21]), .IN4(n48), .Q(n111) );
  NOR2X0 U142 ( .IN1(n109), .IN2(b[3]), .QN(n66) );
  INVX0 U143 ( .INP(b[2]), .ZN(n109) );
  AO22X1 U144 ( .IN1(a[16]), .IN2(n47), .IN3(a[17]), .IN4(n48), .Q(n112) );
  INVX0 U145 ( .INP(b[0]), .ZN(n113) );
  INVX0 U146 ( .INP(b[1]), .ZN(n114) );
  NOR2X0 U147 ( .IN1(b[2]), .IN2(b[3]), .QN(n62) );
endmodule


module add_N_in_N32_1_DW01_add_0_DW01_add_2 ( A, B, CI, SUM, CO );
  input [32:0] A;
  input [32:0] B;
  output [32:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [32:2] carry;

  FADDX1 U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .CO(carry[32]), .S(
        SUM[31]) );
  FADDX1 U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  FADDX1 U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  FADDX1 U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  FADDX1 U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  FADDX1 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  FADDX1 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FADDX1 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FADDX1 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FADDX1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FADDX1 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FADDX1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FADDX1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FADDX1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FADDX1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FADDX1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FADDX1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FADDX1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FADDX1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FADDX1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FADDX1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FADDX1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FADDX1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FADDX1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  FADDX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  FADDX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  FADDX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  FADDX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  FADDX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  FADDX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  FADDX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_32 ( .IN1(A[32]), .IN2(B[32]), .IN3(carry[32]), .Q(SUM[32]) );
  AND2X1 U1 ( .IN1(A[0]), .IN2(B[0]), .Q(n1) );
  XOR2X1 U2 ( .IN1(A[0]), .IN2(B[0]), .Q(SUM[0]) );
endmodule


module add_N_in_N32_1 ( a, b, c );
  input [32:0] a;
  input [32:0] b;
  output [32:0] c;


  add_N_in_N32_1_DW01_add_0_DW01_add_2 add_230 ( .A(a), .B(b), .CI(1'b0), 
        .SUM(c) );
endmodule


module add_N_N32_1 ( a, b, c );
  input [31:0] a;
  input [31:0] b;
  output [32:0] c;


  add_N_in_N32_1 a1 ( .a({1'b0, a}), .b({1'b0, b}), .c(c) );
endmodule


module sub_N_in_N32_DW01_sub_0_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [32:0] A;
  input [32:0] B;
  output [32:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33;
  wire   [32:1] carry;

  FADDX1 U2_31 ( .A(A[31]), .B(n32), .CI(carry[31]), .CO(carry[32]), .S(
        DIFF[31]) );
  FADDX1 U2_30 ( .A(A[30]), .B(n16), .CI(carry[30]), .CO(carry[31]), .S(
        DIFF[30]) );
  FADDX1 U2_29 ( .A(A[29]), .B(n31), .CI(carry[29]), .CO(carry[30]), .S(
        DIFF[29]) );
  FADDX1 U2_28 ( .A(A[28]), .B(n8), .CI(carry[28]), .CO(carry[29]), .S(
        DIFF[28]) );
  FADDX1 U2_27 ( .A(A[27]), .B(n22), .CI(carry[27]), .CO(carry[28]), .S(
        DIFF[27]) );
  FADDX1 U2_26 ( .A(A[26]), .B(n12), .CI(carry[26]), .CO(carry[27]), .S(
        DIFF[26]) );
  FADDX1 U2_25 ( .A(A[25]), .B(n30), .CI(carry[25]), .CO(carry[26]), .S(
        DIFF[25]) );
  FADDX1 U2_24 ( .A(A[24]), .B(n7), .CI(carry[24]), .CO(carry[25]), .S(
        DIFF[24]) );
  FADDX1 U2_23 ( .A(A[23]), .B(n23), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  FADDX1 U2_22 ( .A(A[22]), .B(n15), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  FADDX1 U2_21 ( .A(A[21]), .B(n29), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  FADDX1 U2_20 ( .A(A[20]), .B(n5), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  FADDX1 U2_19 ( .A(A[19]), .B(n21), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  FADDX1 U2_18 ( .A(A[18]), .B(n14), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  FADDX1 U2_17 ( .A(A[17]), .B(n25), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  FADDX1 U2_16 ( .A(A[16]), .B(n3), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  FADDX1 U2_15 ( .A(A[15]), .B(n18), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FADDX1 U2_14 ( .A(A[14]), .B(n13), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FADDX1 U2_13 ( .A(A[13]), .B(n24), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FADDX1 U2_12 ( .A(A[12]), .B(n4), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FADDX1 U2_11 ( .A(A[11]), .B(n17), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FADDX1 U2_10 ( .A(A[10]), .B(n9), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FADDX1 U2_9 ( .A(A[9]), .B(n28), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FADDX1 U2_8 ( .A(A[8]), .B(n6), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FADDX1 U2_7 ( .A(A[7]), .B(n20), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  FADDX1 U2_6 ( .A(A[6]), .B(n11), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  FADDX1 U2_5 ( .A(A[5]), .B(n27), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  FADDX1 U2_4 ( .A(A[4]), .B(n2), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1 U2_3 ( .A(A[3]), .B(n19), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  FADDX1 U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  FADDX1 U2_1 ( .A(A[1]), .B(n26), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR3X1 U2_32 ( .IN1(A[32]), .IN2(n33), .IN3(carry[32]), .Q(DIFF[32]) );
  INVX0 U1 ( .INP(B[4]), .ZN(n2) );
  INVX0 U2 ( .INP(B[5]), .ZN(n27) );
  INVX0 U3 ( .INP(B[6]), .ZN(n11) );
  INVX0 U4 ( .INP(B[7]), .ZN(n20) );
  INVX0 U5 ( .INP(B[8]), .ZN(n6) );
  INVX0 U6 ( .INP(B[9]), .ZN(n28) );
  INVX0 U7 ( .INP(B[10]), .ZN(n9) );
  INVX0 U8 ( .INP(B[11]), .ZN(n17) );
  INVX0 U9 ( .INP(B[12]), .ZN(n4) );
  INVX0 U10 ( .INP(B[13]), .ZN(n24) );
  INVX0 U11 ( .INP(B[14]), .ZN(n13) );
  INVX0 U12 ( .INP(B[15]), .ZN(n18) );
  INVX0 U13 ( .INP(B[16]), .ZN(n3) );
  INVX0 U14 ( .INP(B[17]), .ZN(n25) );
  INVX0 U15 ( .INP(B[18]), .ZN(n14) );
  INVX0 U16 ( .INP(B[19]), .ZN(n21) );
  INVX0 U17 ( .INP(B[20]), .ZN(n5) );
  INVX0 U18 ( .INP(B[21]), .ZN(n29) );
  INVX0 U19 ( .INP(B[22]), .ZN(n15) );
  INVX0 U20 ( .INP(B[23]), .ZN(n23) );
  INVX0 U21 ( .INP(B[24]), .ZN(n7) );
  INVX0 U22 ( .INP(B[25]), .ZN(n30) );
  INVX0 U23 ( .INP(B[26]), .ZN(n12) );
  INVX0 U24 ( .INP(B[27]), .ZN(n22) );
  INVX0 U25 ( .INP(B[28]), .ZN(n8) );
  INVX0 U26 ( .INP(B[29]), .ZN(n31) );
  INVX0 U27 ( .INP(B[30]), .ZN(n16) );
  INVX0 U28 ( .INP(B[3]), .ZN(n19) );
  INVX0 U29 ( .INP(B[31]), .ZN(n32) );
  INVX0 U30 ( .INP(B[2]), .ZN(n10) );
  INVX0 U31 ( .INP(B[32]), .ZN(n33) );
  NAND2X1 U32 ( .IN1(n1), .IN2(B[0]), .QN(carry[1]) );
  INVX0 U33 ( .INP(B[1]), .ZN(n26) );
  INVX0 U34 ( .INP(A[0]), .ZN(n1) );
  XOR2X1 U35 ( .IN1(B[0]), .IN2(A[0]), .Q(DIFF[0]) );
endmodule


module sub_N_in_N32 ( a, b, c );
  input [32:0] a;
  input [32:0] b;
  output [32:0] c;


  sub_N_in_N32_DW01_sub_0_DW01_sub_4 sub_221 ( .A(a), .B(b), .CI(1'b0), .DIFF(
        c) );
endmodule


module sub_N_N32 ( a, b, c );
  input [31:0] a;
  input [31:0] b;
  output [32:0] c;


  sub_N_in_N32 s1 ( .a({1'b0, a}), .b({1'b0, b}), .c(c) );
endmodule


module add_sub_N_N32 ( op, a, b, c );
  input [31:0] a;
  input [31:0] b;
  output [32:0] c;
  input op;

  wire   [32:0] c_add;
  wire   [32:0] c_sub;

  add_N_N32_1 a11 ( .a(a), .b(b), .c(c_add) );
  sub_N_N32 s11 ( .a(a), .b(b), .c(c_sub) );
  MUX21X1 U1 ( .IN1(c_sub[9]), .IN2(c_add[9]), .S(op), .Q(c[9]) );
  MUX21X1 U2 ( .IN1(c_sub[8]), .IN2(c_add[8]), .S(op), .Q(c[8]) );
  MUX21X1 U3 ( .IN1(c_sub[7]), .IN2(c_add[7]), .S(op), .Q(c[7]) );
  MUX21X1 U4 ( .IN1(c_sub[6]), .IN2(c_add[6]), .S(op), .Q(c[6]) );
  MUX21X1 U5 ( .IN1(c_sub[5]), .IN2(c_add[5]), .S(op), .Q(c[5]) );
  MUX21X1 U6 ( .IN1(c_sub[4]), .IN2(c_add[4]), .S(op), .Q(c[4]) );
  MUX21X1 U7 ( .IN1(c_sub[3]), .IN2(c_add[3]), .S(op), .Q(c[3]) );
  MUX21X1 U8 ( .IN1(c_sub[32]), .IN2(c_add[32]), .S(op), .Q(c[32]) );
  MUX21X1 U9 ( .IN1(c_sub[31]), .IN2(c_add[31]), .S(op), .Q(c[31]) );
  MUX21X1 U10 ( .IN1(c_sub[30]), .IN2(c_add[30]), .S(op), .Q(c[30]) );
  MUX21X1 U11 ( .IN1(c_sub[2]), .IN2(c_add[2]), .S(op), .Q(c[2]) );
  MUX21X1 U12 ( .IN1(c_sub[29]), .IN2(c_add[29]), .S(op), .Q(c[29]) );
  MUX21X1 U13 ( .IN1(c_sub[28]), .IN2(c_add[28]), .S(op), .Q(c[28]) );
  MUX21X1 U14 ( .IN1(c_sub[27]), .IN2(c_add[27]), .S(op), .Q(c[27]) );
  MUX21X1 U15 ( .IN1(c_sub[26]), .IN2(c_add[26]), .S(op), .Q(c[26]) );
  MUX21X1 U16 ( .IN1(c_sub[25]), .IN2(c_add[25]), .S(op), .Q(c[25]) );
  MUX21X1 U17 ( .IN1(c_sub[24]), .IN2(c_add[24]), .S(op), .Q(c[24]) );
  MUX21X1 U18 ( .IN1(c_sub[23]), .IN2(c_add[23]), .S(op), .Q(c[23]) );
  MUX21X1 U19 ( .IN1(c_sub[22]), .IN2(c_add[22]), .S(op), .Q(c[22]) );
  MUX21X1 U20 ( .IN1(c_sub[21]), .IN2(c_add[21]), .S(op), .Q(c[21]) );
  MUX21X1 U21 ( .IN1(c_sub[20]), .IN2(c_add[20]), .S(op), .Q(c[20]) );
  MUX21X1 U22 ( .IN1(c_sub[1]), .IN2(c_add[1]), .S(op), .Q(c[1]) );
  MUX21X1 U23 ( .IN1(c_sub[19]), .IN2(c_add[19]), .S(op), .Q(c[19]) );
  MUX21X1 U24 ( .IN1(c_sub[18]), .IN2(c_add[18]), .S(op), .Q(c[18]) );
  MUX21X1 U25 ( .IN1(c_sub[17]), .IN2(c_add[17]), .S(op), .Q(c[17]) );
  MUX21X1 U26 ( .IN1(c_sub[16]), .IN2(c_add[16]), .S(op), .Q(c[16]) );
  MUX21X1 U27 ( .IN1(c_sub[15]), .IN2(c_add[15]), .S(op), .Q(c[15]) );
  MUX21X1 U28 ( .IN1(c_sub[14]), .IN2(c_add[14]), .S(op), .Q(c[14]) );
  MUX21X1 U29 ( .IN1(c_sub[13]), .IN2(c_add[13]), .S(op), .Q(c[13]) );
  MUX21X1 U30 ( .IN1(c_sub[12]), .IN2(c_add[12]), .S(op), .Q(c[12]) );
  MUX21X1 U31 ( .IN1(c_sub[11]), .IN2(c_add[11]), .S(op), .Q(c[11]) );
  MUX21X1 U32 ( .IN1(c_sub[10]), .IN2(c_add[10]), .S(op), .Q(c[10]) );
  MUX21X1 U33 ( .IN1(c_sub[0]), .IN2(c_add[0]), .S(op), .Q(c[0]) );
endmodule


module LOD_N2_0 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_47 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_0 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_0 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_47 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N2_46 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_45 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_23 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_46 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_45 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N8_0 ( in, out, vld );
  input [7:0] in;
  output [2:0] out;
  output vld;
  wire   genblk1_out_vl, genblk1_out_vh, n1;
  wire   [1:0] genblk1_out_l;
  wire   [1:0] genblk1_out_h;

  LOD_N4_0 genblk1_l ( .in(in[3:0]), .out(genblk1_out_l), .vld(genblk1_out_vl)
         );
  LOD_N4_23 genblk1_h ( .in(in[7:4]), .out(genblk1_out_h), .vld(genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[2]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l[1]), .IN2(genblk1_out_h[1]), .S(
        genblk1_out_vh), .Q(out[1]) );
  MUX21X1 U6 ( .IN1(genblk1_out_l[0]), .IN2(genblk1_out_h[0]), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N2_44 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_43 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_22 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_44 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_43 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N2_42 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_41 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_21 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_42 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_41 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N8_11 ( in, out, vld );
  input [7:0] in;
  output [2:0] out;
  output vld;
  wire   genblk1_out_vl, genblk1_out_vh, n1;
  wire   [1:0] genblk1_out_l;
  wire   [1:0] genblk1_out_h;

  LOD_N4_22 genblk1_l ( .in(in[3:0]), .out(genblk1_out_l), .vld(genblk1_out_vl) );
  LOD_N4_21 genblk1_h ( .in(in[7:4]), .out(genblk1_out_h), .vld(genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[2]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l[1]), .IN2(genblk1_out_h[1]), .S(
        genblk1_out_vh), .Q(out[1]) );
  MUX21X1 U6 ( .IN1(genblk1_out_l[0]), .IN2(genblk1_out_h[0]), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N16_0 ( in, out, vld );
  input [15:0] in;
  output [3:0] out;
  output vld;
  wire   genblk1_out_vl, genblk1_out_vh, n1;
  wire   [2:0] genblk1_out_l;
  wire   [2:0] genblk1_out_h;

  LOD_N8_0 genblk1_l ( .in(in[7:0]), .out(genblk1_out_l), .vld(genblk1_out_vl)
         );
  LOD_N8_11 genblk1_h ( .in(in[15:8]), .out(genblk1_out_h), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[3]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l[2]), .IN2(genblk1_out_h[2]), .S(
        genblk1_out_vh), .Q(out[2]) );
  MUX21X1 U6 ( .IN1(genblk1_out_l[1]), .IN2(genblk1_out_h[1]), .S(
        genblk1_out_vh), .Q(out[1]) );
  MUX21X1 U7 ( .IN1(genblk1_out_l[0]), .IN2(genblk1_out_h[0]), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N2_40 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_39 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_20 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_40 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_39 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N2_38 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_37 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_19 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_38 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_37 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N8_10 ( in, out, vld );
  input [7:0] in;
  output [2:0] out;
  output vld;
  wire   genblk1_out_vl, genblk1_out_vh, n1;
  wire   [1:0] genblk1_out_l;
  wire   [1:0] genblk1_out_h;

  LOD_N4_20 genblk1_l ( .in(in[3:0]), .out(genblk1_out_l), .vld(genblk1_out_vl) );
  LOD_N4_19 genblk1_h ( .in(in[7:4]), .out(genblk1_out_h), .vld(genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[2]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l[1]), .IN2(genblk1_out_h[1]), .S(
        genblk1_out_vh), .Q(out[1]) );
  MUX21X1 U6 ( .IN1(genblk1_out_l[0]), .IN2(genblk1_out_h[0]), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N2_36 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_35 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_18 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_36 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_35 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N2_34 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N2_33 ( in, out, vld );
  input [1:0] in;
  output [0:0] out;
  output vld;
  wire   n1;

  OR2X1 U1 ( .IN1(in[1]), .IN2(in[0]), .Q(vld) );
  NOR2X0 U2 ( .IN1(in[1]), .IN2(n1), .QN(out[0]) );
  INVX0 U3 ( .INP(in[0]), .ZN(n1) );
endmodule


module LOD_N4_17 ( in, out, vld );
  input [3:0] in;
  output [1:0] out;
  output vld;
  wire   genblk1_out_l_0_, genblk1_out_vl, genblk1_out_h_0_, genblk1_out_vh,
         n1;

  LOD_N2_34 genblk1_l ( .in(in[1:0]), .out(genblk1_out_l_0_), .vld(
        genblk1_out_vl) );
  LOD_N2_33 genblk1_h ( .in(in[3:2]), .out(genblk1_out_h_0_), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[1]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l_0_), .IN2(genblk1_out_h_0_), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N8_9 ( in, out, vld );
  input [7:0] in;
  output [2:0] out;
  output vld;
  wire   genblk1_out_vl, genblk1_out_vh, n1;
  wire   [1:0] genblk1_out_l;
  wire   [1:0] genblk1_out_h;

  LOD_N4_18 genblk1_l ( .in(in[3:0]), .out(genblk1_out_l), .vld(genblk1_out_vl) );
  LOD_N4_17 genblk1_h ( .in(in[7:4]), .out(genblk1_out_h), .vld(genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[2]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l[1]), .IN2(genblk1_out_h[1]), .S(
        genblk1_out_vh), .Q(out[1]) );
  MUX21X1 U6 ( .IN1(genblk1_out_l[0]), .IN2(genblk1_out_h[0]), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N16_5 ( in, out, vld );
  input [15:0] in;
  output [3:0] out;
  output vld;
  wire   genblk1_out_vl, genblk1_out_vh, n1;
  wire   [2:0] genblk1_out_l;
  wire   [2:0] genblk1_out_h;

  LOD_N8_10 genblk1_l ( .in(in[7:0]), .out(genblk1_out_l), .vld(genblk1_out_vl) );
  LOD_N8_9 genblk1_h ( .in(in[15:8]), .out(genblk1_out_h), .vld(genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[3]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l[2]), .IN2(genblk1_out_h[2]), .S(
        genblk1_out_vh), .Q(out[2]) );
  MUX21X1 U6 ( .IN1(genblk1_out_l[1]), .IN2(genblk1_out_h[1]), .S(
        genblk1_out_vh), .Q(out[1]) );
  MUX21X1 U7 ( .IN1(genblk1_out_l[0]), .IN2(genblk1_out_h[0]), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N32_0 ( in, out, vld );
  input [31:0] in;
  output [4:0] out;
  output vld;
  wire   genblk1_out_vl, genblk1_out_vh, n1;
  wire   [3:0] genblk1_out_l;
  wire   [3:0] genblk1_out_h;

  LOD_N16_0 genblk1_l ( .in(in[15:0]), .out(genblk1_out_l), .vld(
        genblk1_out_vl) );
  LOD_N16_5 genblk1_h ( .in(in[31:16]), .out(genblk1_out_h), .vld(
        genblk1_out_vh) );
  OR2X1 U2 ( .IN1(genblk1_out_vl), .IN2(genblk1_out_vh), .Q(vld) );
  NOR2X0 U3 ( .IN1(genblk1_out_vh), .IN2(n1), .QN(out[4]) );
  INVX0 U4 ( .INP(genblk1_out_vl), .ZN(n1) );
  MUX21X1 U5 ( .IN1(genblk1_out_l[3]), .IN2(genblk1_out_h[3]), .S(
        genblk1_out_vh), .Q(out[3]) );
  MUX21X1 U6 ( .IN1(genblk1_out_l[2]), .IN2(genblk1_out_h[2]), .S(
        genblk1_out_vh), .Q(out[2]) );
  MUX21X1 U7 ( .IN1(genblk1_out_l[1]), .IN2(genblk1_out_h[1]), .S(
        genblk1_out_vh), .Q(out[1]) );
  MUX21X1 U8 ( .IN1(genblk1_out_l[0]), .IN2(genblk1_out_h[0]), .S(
        genblk1_out_vh), .Q(out[0]) );
endmodule


module LOD_N_N32_0 ( in, out );
  input [31:0] in;
  output [4:0] out;


  LOD_N32_0 l1 ( .in(in), .out(out) );
endmodule


module DSR_left_N_S_N32_S5_0 ( a, b, c );
  input [31:0] a;
  input [4:0] b;
  output [31:0] c;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114;

  AO221X2 U2 ( .IN1(n14), .IN2(n15), .IN3(b[4]), .IN4(n16), .IN5(n17), .Q(
        c[31]) );
  NOR2X2 U3 ( .IN1(n113), .IN2(n114), .QN(n26) );
  NOR2X2 U4 ( .IN1(b[0]), .IN2(b[1]), .QN(n25) );
  NOR2X2 U5 ( .IN1(n114), .IN2(b[1]), .QN(n22) );
  NOR2X2 U6 ( .IN1(n113), .IN2(b[0]), .QN(n23) );
  AND2X1 U7 ( .IN1(n1), .IN2(n2), .Q(c[9]) );
  AND2X1 U8 ( .IN1(n1), .IN2(n3), .Q(c[8]) );
  AO22X1 U9 ( .IN1(n4), .IN2(n5), .IN3(n6), .IN4(n7), .Q(c[7]) );
  AO22X1 U10 ( .IN1(n4), .IN2(n8), .IN3(n6), .IN4(n9), .Q(c[6]) );
  AO22X1 U11 ( .IN1(n4), .IN2(n10), .IN3(n6), .IN4(n11), .Q(c[5]) );
  AND3X1 U12 ( .IN1(n12), .IN2(n1), .IN3(n13), .Q(c[4]) );
  AND2X1 U13 ( .IN1(n7), .IN2(n4), .Q(c[3]) );
  AO222X1 U14 ( .IN1(n6), .IN2(n18), .IN3(n4), .IN4(n19), .IN5(n20), .IN6(n21), 
        .Q(n17) );
  AO221X1 U15 ( .IN1(a[30]), .IN2(n22), .IN3(a[29]), .IN4(n23), .IN5(n24), .Q(
        n19) );
  AO22X1 U16 ( .IN1(a[31]), .IN2(n25), .IN3(a[28]), .IN4(n26), .Q(n24) );
  AO221X1 U17 ( .IN1(n14), .IN2(n27), .IN3(b[4]), .IN4(n28), .IN5(n29), .Q(
        c[30]) );
  AO222X1 U18 ( .IN1(n6), .IN2(n30), .IN3(n4), .IN4(n31), .IN5(n20), .IN6(n32), 
        .Q(n29) );
  AO221X1 U19 ( .IN1(a[29]), .IN2(n22), .IN3(a[28]), .IN4(n23), .IN5(n33), .Q(
        n31) );
  AO22X1 U20 ( .IN1(a[30]), .IN2(n25), .IN3(a[27]), .IN4(n26), .Q(n33) );
  AND2X1 U21 ( .IN1(n9), .IN2(n4), .Q(c[2]) );
  AO221X1 U22 ( .IN1(n14), .IN2(n34), .IN3(b[4]), .IN4(n35), .IN5(n36), .Q(
        c[29]) );
  AO222X1 U23 ( .IN1(n6), .IN2(n37), .IN3(n4), .IN4(n38), .IN5(n20), .IN6(n39), 
        .Q(n36) );
  AO221X1 U24 ( .IN1(a[28]), .IN2(n22), .IN3(a[27]), .IN4(n23), .IN5(n40), .Q(
        n38) );
  AO22X1 U25 ( .IN1(a[29]), .IN2(n25), .IN3(a[26]), .IN4(n26), .Q(n40) );
  AO221X1 U26 ( .IN1(n14), .IN2(n41), .IN3(b[4]), .IN4(n42), .IN5(n43), .Q(
        c[28]) );
  AO222X1 U27 ( .IN1(n6), .IN2(n44), .IN3(n4), .IN4(n45), .IN5(n20), .IN6(n46), 
        .Q(n43) );
  AO221X1 U28 ( .IN1(a[27]), .IN2(n22), .IN3(a[26]), .IN4(n23), .IN5(n47), .Q(
        n45) );
  AO22X1 U29 ( .IN1(a[28]), .IN2(n25), .IN3(a[25]), .IN4(n26), .Q(n47) );
  AO221X1 U30 ( .IN1(n14), .IN2(n48), .IN3(b[4]), .IN4(n49), .IN5(n50), .Q(
        c[27]) );
  AO222X1 U31 ( .IN1(n6), .IN2(n21), .IN3(n4), .IN4(n18), .IN5(n20), .IN6(n15), 
        .Q(n50) );
  AO221X1 U32 ( .IN1(a[26]), .IN2(n22), .IN3(a[25]), .IN4(n23), .IN5(n51), .Q(
        n18) );
  AO22X1 U33 ( .IN1(a[27]), .IN2(n25), .IN3(a[24]), .IN4(n26), .Q(n51) );
  AO221X1 U34 ( .IN1(n14), .IN2(n52), .IN3(b[4]), .IN4(n53), .IN5(n54), .Q(
        c[26]) );
  AO222X1 U35 ( .IN1(n6), .IN2(n32), .IN3(n4), .IN4(n30), .IN5(n20), .IN6(n27), 
        .Q(n54) );
  AO221X1 U36 ( .IN1(a[25]), .IN2(n22), .IN3(a[24]), .IN4(n23), .IN5(n55), .Q(
        n30) );
  AO22X1 U37 ( .IN1(a[26]), .IN2(n25), .IN3(a[23]), .IN4(n26), .Q(n55) );
  AO221X1 U38 ( .IN1(n20), .IN2(n34), .IN3(n14), .IN4(n56), .IN5(n57), .Q(
        c[25]) );
  AO222X1 U39 ( .IN1(n4), .IN2(n37), .IN3(b[4]), .IN4(n2), .IN5(n6), .IN6(n39), 
        .Q(n57) );
  AO222X1 U40 ( .IN1(n58), .IN2(n10), .IN3(n59), .IN4(n11), .IN5(n60), .IN6(
        n61), .Q(n2) );
  AO221X1 U41 ( .IN1(a[24]), .IN2(n22), .IN3(a[23]), .IN4(n23), .IN5(n62), .Q(
        n37) );
  AO22X1 U42 ( .IN1(a[25]), .IN2(n25), .IN3(a[22]), .IN4(n26), .Q(n62) );
  AO221X1 U43 ( .IN1(n14), .IN2(n63), .IN3(n20), .IN4(n41), .IN5(n64), .Q(
        c[24]) );
  AO222X1 U44 ( .IN1(n4), .IN2(n44), .IN3(b[4]), .IN4(n3), .IN5(n6), .IN6(n46), 
        .Q(n64) );
  AO222X1 U45 ( .IN1(n58), .IN2(n65), .IN3(n66), .IN4(n59), .IN5(n60), .IN6(
        n67), .Q(n3) );
  AO221X1 U46 ( .IN1(a[23]), .IN2(n22), .IN3(a[22]), .IN4(n23), .IN5(n68), .Q(
        n44) );
  AO22X1 U47 ( .IN1(a[24]), .IN2(n25), .IN3(a[21]), .IN4(n26), .Q(n68) );
  NAND2X0 U48 ( .IN1(n69), .IN2(n70), .QN(c[23]) );
  AOI222X1 U49 ( .IN1(n21), .IN2(n4), .IN3(n7), .IN4(n71), .IN5(n5), .IN6(n72), 
        .QN(n70) );
  AO221X1 U50 ( .IN1(a[22]), .IN2(n22), .IN3(a[21]), .IN4(n23), .IN5(n73), .Q(
        n21) );
  AO22X1 U51 ( .IN1(a[23]), .IN2(n25), .IN3(a[20]), .IN4(n26), .Q(n73) );
  AOI222X1 U52 ( .IN1(n48), .IN2(n20), .IN3(n15), .IN4(n6), .IN5(n74), .IN6(
        n14), .QN(n69) );
  NAND2X0 U53 ( .IN1(n75), .IN2(n76), .QN(c[22]) );
  AOI222X1 U54 ( .IN1(n32), .IN2(n4), .IN3(n9), .IN4(n71), .IN5(n8), .IN6(n72), 
        .QN(n76) );
  AO221X1 U55 ( .IN1(a[21]), .IN2(n22), .IN3(a[20]), .IN4(n23), .IN5(n77), .Q(
        n32) );
  AO22X1 U56 ( .IN1(a[22]), .IN2(n25), .IN3(a[19]), .IN4(n26), .Q(n77) );
  AOI222X1 U57 ( .IN1(n52), .IN2(n20), .IN3(n27), .IN4(n6), .IN5(n78), .IN6(
        n14), .QN(n75) );
  NAND2X0 U58 ( .IN1(n79), .IN2(n80), .QN(c[21]) );
  AOI222X1 U59 ( .IN1(n39), .IN2(n4), .IN3(n11), .IN4(n71), .IN5(n10), .IN6(
        n72), .QN(n80) );
  AND2X1 U60 ( .IN1(b[4]), .IN2(n58), .Q(n71) );
  AO221X1 U61 ( .IN1(a[20]), .IN2(n22), .IN3(a[19]), .IN4(n23), .IN5(n81), .Q(
        n39) );
  AO22X1 U62 ( .IN1(a[21]), .IN2(n25), .IN3(a[18]), .IN4(n26), .Q(n81) );
  AOI222X1 U63 ( .IN1(n56), .IN2(n20), .IN3(n34), .IN4(n6), .IN5(n61), .IN6(
        n14), .QN(n79) );
  AO221X1 U64 ( .IN1(n20), .IN2(n63), .IN3(n6), .IN4(n41), .IN5(n82), .Q(c[20]) );
  AO222X1 U65 ( .IN1(n4), .IN2(n46), .IN3(n83), .IN4(b[4]), .IN5(n14), .IN6(
        n67), .Q(n82) );
  AND2X1 U66 ( .IN1(n13), .IN2(n12), .Q(n83) );
  AO221X1 U67 ( .IN1(a[19]), .IN2(n22), .IN3(a[18]), .IN4(n23), .IN5(n84), .Q(
        n46) );
  AO22X1 U68 ( .IN1(a[20]), .IN2(n25), .IN3(a[17]), .IN4(n26), .Q(n84) );
  AND2X1 U69 ( .IN1(n11), .IN2(n4), .Q(c[1]) );
  AO221X1 U70 ( .IN1(n20), .IN2(n74), .IN3(n6), .IN4(n48), .IN5(n85), .Q(c[19]) );
  AO222X1 U71 ( .IN1(n4), .IN2(n15), .IN3(n72), .IN4(n7), .IN5(n14), .IN6(n5), 
        .Q(n85) );
  AO221X1 U72 ( .IN1(a[18]), .IN2(n22), .IN3(a[17]), .IN4(n23), .IN5(n86), .Q(
        n15) );
  AO22X1 U73 ( .IN1(a[19]), .IN2(n25), .IN3(a[16]), .IN4(n26), .Q(n86) );
  AO221X1 U74 ( .IN1(n20), .IN2(n78), .IN3(n6), .IN4(n52), .IN5(n87), .Q(c[18]) );
  AO222X1 U75 ( .IN1(n4), .IN2(n27), .IN3(n72), .IN4(n9), .IN5(n14), .IN6(n8), 
        .Q(n87) );
  AO221X1 U76 ( .IN1(a[17]), .IN2(n22), .IN3(a[16]), .IN4(n23), .IN5(n88), .Q(
        n27) );
  AO22X1 U77 ( .IN1(a[18]), .IN2(n25), .IN3(a[15]), .IN4(n26), .Q(n88) );
  AO221X1 U78 ( .IN1(n20), .IN2(n61), .IN3(n6), .IN4(n56), .IN5(n89), .Q(c[17]) );
  AO222X1 U79 ( .IN1(n4), .IN2(n34), .IN3(n72), .IN4(n11), .IN5(n14), .IN6(n10), .Q(n89) );
  AO221X1 U80 ( .IN1(a[16]), .IN2(n22), .IN3(a[15]), .IN4(n23), .IN5(n90), .Q(
        n34) );
  AO22X1 U81 ( .IN1(a[17]), .IN2(n25), .IN3(a[14]), .IN4(n26), .Q(n90) );
  AO221X1 U82 ( .IN1(n4), .IN2(n41), .IN3(n6), .IN4(n63), .IN5(n91), .Q(c[16])
         );
  AO222X1 U83 ( .IN1(n14), .IN2(n65), .IN3(n72), .IN4(n66), .IN5(n20), .IN6(
        n67), .Q(n91) );
  AND2X1 U84 ( .IN1(n59), .IN2(n1), .Q(n20) );
  AND2X1 U85 ( .IN1(b[4]), .IN2(n60), .Q(n72) );
  AND2X1 U86 ( .IN1(n92), .IN2(n1), .Q(n14) );
  AND2X1 U87 ( .IN1(n58), .IN2(n1), .Q(n6) );
  AO221X1 U88 ( .IN1(a[15]), .IN2(n22), .IN3(a[14]), .IN4(n23), .IN5(n93), .Q(
        n41) );
  AO22X1 U89 ( .IN1(a[16]), .IN2(n25), .IN3(a[13]), .IN4(n26), .Q(n93) );
  INVX0 U90 ( .INP(n94), .ZN(n4) );
  AND2X1 U91 ( .IN1(n1), .IN2(n16), .Q(c[15]) );
  AO221X1 U92 ( .IN1(n58), .IN2(n74), .IN3(n59), .IN4(n5), .IN5(n95), .Q(n16)
         );
  AO22X1 U93 ( .IN1(n60), .IN2(n48), .IN3(n92), .IN4(n7), .Q(n95) );
  AO221X1 U94 ( .IN1(a[14]), .IN2(n22), .IN3(a[13]), .IN4(n23), .IN5(n96), .Q(
        n48) );
  AO22X1 U95 ( .IN1(a[15]), .IN2(n25), .IN3(a[12]), .IN4(n26), .Q(n96) );
  AND2X1 U96 ( .IN1(n1), .IN2(n28), .Q(c[14]) );
  AO221X1 U97 ( .IN1(n58), .IN2(n78), .IN3(n59), .IN4(n8), .IN5(n97), .Q(n28)
         );
  AO22X1 U98 ( .IN1(n60), .IN2(n52), .IN3(n92), .IN4(n9), .Q(n97) );
  AO221X1 U99 ( .IN1(a[13]), .IN2(n22), .IN3(a[12]), .IN4(n23), .IN5(n98), .Q(
        n52) );
  AO22X1 U100 ( .IN1(a[14]), .IN2(n25), .IN3(a[11]), .IN4(n26), .Q(n98) );
  AND2X1 U101 ( .IN1(n1), .IN2(n35), .Q(c[13]) );
  AO221X1 U102 ( .IN1(n60), .IN2(n56), .IN3(n58), .IN4(n61), .IN5(n99), .Q(n35) );
  AO22X1 U103 ( .IN1(n59), .IN2(n10), .IN3(n92), .IN4(n11), .Q(n99) );
  AO22X1 U104 ( .IN1(a[1]), .IN2(n25), .IN3(a[0]), .IN4(n22), .Q(n11) );
  NOR2X0 U105 ( .IN1(n100), .IN2(n13), .QN(n92) );
  AO221X1 U106 ( .IN1(a[4]), .IN2(n22), .IN3(a[3]), .IN4(n23), .IN5(n101), .Q(
        n10) );
  AO22X1 U107 ( .IN1(a[5]), .IN2(n25), .IN3(a[2]), .IN4(n26), .Q(n101) );
  AO221X1 U108 ( .IN1(a[8]), .IN2(n22), .IN3(a[7]), .IN4(n23), .IN5(n102), .Q(
        n61) );
  AO22X1 U109 ( .IN1(a[9]), .IN2(n25), .IN3(a[6]), .IN4(n26), .Q(n102) );
  AO221X1 U110 ( .IN1(a[12]), .IN2(n22), .IN3(a[11]), .IN4(n23), .IN5(n103), 
        .Q(n56) );
  AO22X1 U111 ( .IN1(a[13]), .IN2(n25), .IN3(a[10]), .IN4(n26), .Q(n103) );
  AND2X1 U112 ( .IN1(n1), .IN2(n42), .Q(c[12]) );
  AO222X1 U113 ( .IN1(n58), .IN2(n67), .IN3(b[3]), .IN4(n12), .IN5(n60), .IN6(
        n63), .Q(n42) );
  AO221X1 U114 ( .IN1(a[11]), .IN2(n22), .IN3(a[10]), .IN4(n23), .IN5(n104), 
        .Q(n63) );
  AO22X1 U115 ( .IN1(a[12]), .IN2(n25), .IN3(a[9]), .IN4(n26), .Q(n104) );
  MUX21X1 U116 ( .IN1(n65), .IN2(n66), .S(b[2]), .Q(n12) );
  INVX0 U117 ( .INP(n105), .ZN(n66) );
  AO221X1 U118 ( .IN1(a[3]), .IN2(n22), .IN3(a[2]), .IN4(n23), .IN5(n106), .Q(
        n65) );
  AO22X1 U119 ( .IN1(a[4]), .IN2(n25), .IN3(n26), .IN4(a[1]), .Q(n106) );
  AO221X1 U120 ( .IN1(a[7]), .IN2(n22), .IN3(a[6]), .IN4(n23), .IN5(n107), .Q(
        n67) );
  AO22X1 U121 ( .IN1(a[8]), .IN2(n25), .IN3(a[5]), .IN4(n26), .Q(n107) );
  AND2X1 U122 ( .IN1(n1), .IN2(n49), .Q(c[11]) );
  AO222X1 U123 ( .IN1(n59), .IN2(n7), .IN3(n60), .IN4(n74), .IN5(n58), .IN6(n5), .Q(n49) );
  AO221X1 U124 ( .IN1(a[6]), .IN2(n22), .IN3(a[5]), .IN4(n23), .IN5(n108), .Q(
        n5) );
  AO22X1 U125 ( .IN1(a[7]), .IN2(n25), .IN3(n26), .IN4(a[4]), .Q(n108) );
  AO221X1 U126 ( .IN1(a[10]), .IN2(n22), .IN3(a[9]), .IN4(n23), .IN5(n109), 
        .Q(n74) );
  AO22X1 U127 ( .IN1(a[11]), .IN2(n25), .IN3(a[8]), .IN4(n26), .Q(n109) );
  AO221X1 U128 ( .IN1(a[2]), .IN2(n22), .IN3(n23), .IN4(a[1]), .IN5(n110), .Q(
        n7) );
  AO22X1 U129 ( .IN1(a[3]), .IN2(n25), .IN3(n26), .IN4(a[0]), .Q(n110) );
  AND2X1 U130 ( .IN1(n1), .IN2(n53), .Q(c[10]) );
  AO222X1 U131 ( .IN1(n59), .IN2(n9), .IN3(n60), .IN4(n78), .IN5(n58), .IN6(n8), .Q(n53) );
  AO221X1 U132 ( .IN1(a[5]), .IN2(n22), .IN3(n23), .IN4(a[4]), .IN5(n111), .Q(
        n8) );
  AO22X1 U133 ( .IN1(a[6]), .IN2(n25), .IN3(n26), .IN4(a[3]), .Q(n111) );
  NOR2X0 U134 ( .IN1(n100), .IN2(b[3]), .QN(n58) );
  INVX0 U135 ( .INP(b[2]), .ZN(n100) );
  AO221X1 U136 ( .IN1(a[9]), .IN2(n22), .IN3(a[8]), .IN4(n23), .IN5(n112), .Q(
        n78) );
  AO22X1 U137 ( .IN1(a[10]), .IN2(n25), .IN3(a[7]), .IN4(n26), .Q(n112) );
  AO222X1 U138 ( .IN1(n23), .IN2(a[0]), .IN3(a[1]), .IN4(n22), .IN5(a[2]), 
        .IN6(n25), .Q(n9) );
  INVX0 U139 ( .INP(b[0]), .ZN(n114) );
  INVX0 U140 ( .INP(b[1]), .ZN(n113) );
  NOR2X0 U141 ( .IN1(n13), .IN2(b[2]), .QN(n59) );
  INVX0 U142 ( .INP(b[3]), .ZN(n13) );
  NOR2X0 U143 ( .IN1(n105), .IN2(n94), .QN(c[0]) );
  NAND2X0 U144 ( .IN1(n60), .IN2(n1), .QN(n94) );
  INVX0 U145 ( .INP(b[4]), .ZN(n1) );
  NOR2X0 U146 ( .IN1(b[2]), .IN2(b[3]), .QN(n60) );
  NAND2X0 U147 ( .IN1(n25), .IN2(a[0]), .QN(n105) );
endmodule


module sub_N_in_N8_1_DW01_sub_0_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [7:1] carry;

  FADDX1 U2_6 ( .A(A[6]), .B(n7), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1 U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1 U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1 U2_3 ( .A(A[3]), .B(n4), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FADDX1 U2_2 ( .A(A[2]), .B(n3), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FADDX1 U2_1 ( .A(A[1]), .B(n2), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XOR3X1 U2_7 ( .IN1(A[7]), .IN2(n8), .IN3(carry[7]), .Q(DIFF[7]) );
  INVX0 U1 ( .INP(B[3]), .ZN(n4) );
  INVX0 U2 ( .INP(B[2]), .ZN(n3) );
  NAND2X1 U3 ( .IN1(n1), .IN2(B[0]), .QN(carry[1]) );
  INVX0 U4 ( .INP(B[1]), .ZN(n2) );
  INVX0 U5 ( .INP(A[0]), .ZN(n1) );
  INVX0 U6 ( .INP(B[4]), .ZN(n5) );
  INVX0 U7 ( .INP(B[7]), .ZN(n8) );
  INVX0 U8 ( .INP(B[5]), .ZN(n6) );
  INVX0 U9 ( .INP(B[6]), .ZN(n7) );
  XOR2X1 U10 ( .IN1(B[0]), .IN2(A[0]), .Q(DIFF[0]) );
endmodule


module sub_N_in_N8_1 ( a, b, c );
  input [8:0] a;
  input [8:0] b;
  output [8:0] c;


  sub_N_in_N8_1_DW01_sub_0_DW01_sub_3 sub_221 ( .A(a), .B(b), .CI(1'b0), 
        .DIFF(c) );
endmodule


module sub_N_N8_1 ( a, b, c );
  input [7:0] a;
  input [7:0] b;
  output [8:0] c;


  sub_N_in_N8_1 s1 ( .a({1'b0, a}), .b({1'b0, b}), .c(c) );
endmodule


module add_1_N8 ( a, mant_ovf, c );
  input [8:0] a;
  output [8:0] c;
  input mant_ovf;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;

  XOR2X1 U1 ( .IN1(a[7]), .IN2(n1), .Q(c[7]) );
  NOR2X0 U2 ( .IN1(n2), .IN2(n3), .QN(n1) );
  INVX0 U3 ( .INP(a[6]), .ZN(n3) );
  XNOR2X1 U4 ( .IN1(a[6]), .IN2(n2), .Q(c[6]) );
  NAND3X0 U5 ( .IN1(a[4]), .IN2(n4), .IN3(a[5]), .QN(n2) );
  XNOR2X1 U6 ( .IN1(a[5]), .IN2(n5), .Q(c[5]) );
  NAND2X0 U7 ( .IN1(a[4]), .IN2(n4), .QN(n5) );
  XOR2X1 U8 ( .IN1(a[4]), .IN2(n4), .Q(c[4]) );
  NOR3X0 U9 ( .IN1(n6), .IN2(n7), .IN3(n8), .QN(n4) );
  INVX0 U10 ( .INP(a[3]), .ZN(n8) );
  XOR2X1 U11 ( .IN1(a[3]), .IN2(n9), .Q(c[3]) );
  NOR2X0 U12 ( .IN1(n7), .IN2(n6), .QN(n9) );
  INVX0 U13 ( .INP(a[2]), .ZN(n6) );
  XNOR2X1 U14 ( .IN1(a[2]), .IN2(n7), .Q(c[2]) );
  NAND3X0 U15 ( .IN1(a[1]), .IN2(a[0]), .IN3(mant_ovf), .QN(n7) );
  XNOR2X1 U16 ( .IN1(a[1]), .IN2(n10), .Q(c[1]) );
  NAND2X0 U17 ( .IN1(mant_ovf), .IN2(a[0]), .QN(n10) );
  XOR2X1 U18 ( .IN1(mant_ovf), .IN2(a[0]), .Q(c[0]) );
endmodule


module conv_2c_N7_DW01_inc_0_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[7]), .IN2(A[7]), .Q(SUM[7]) );
endmodule


module conv_2c_N7 ( a, c );
  input [7:0] a;
  output [7:0] c;


  conv_2c_N7_DW01_inc_0_DW01_inc_1 add_274 ( .A(a), .SUM(c) );
endmodule


module reg_exp_op_es2_Bs5 ( exp_o, e_o, r_o );
  input [7:0] exp_o;
  output [1:0] e_o;
  output [4:0] r_o;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, SYNOPSYS_UNCONNECTED_1;
  wire   [6:0] exp_oN_tmp;
  assign e_o[1] = exp_o[1];
  assign e_o[0] = exp_o[0];

  conv_2c_N7 uut_conv_2c1 ( .a({n12, n13, n14, n15, n16, n17, n18, n19}), .c({
        SYNOPSYS_UNCONNECTED_1, exp_oN_tmp}) );
  XOR2X1 U2 ( .IN1(n1), .IN2(n2), .Q(r_o[4]) );
  MUX21X1 U3 ( .IN1(exp_oN_tmp[6]), .IN2(exp_o[6]), .S(n12), .Q(n2) );
  NOR2X0 U4 ( .IN1(n3), .IN2(n4), .QN(n1) );
  INVX0 U5 ( .INP(n5), .ZN(n3) );
  XNOR2X1 U6 ( .IN1(n4), .IN2(n5), .Q(r_o[3]) );
  MUX21X1 U7 ( .IN1(exp_oN_tmp[5]), .IN2(exp_o[5]), .S(n12), .Q(n5) );
  NAND4X0 U8 ( .IN1(n6), .IN2(n7), .IN3(n8), .IN4(n9), .QN(n4) );
  XNOR2X1 U9 ( .IN1(n10), .IN2(n8), .Q(r_o[2]) );
  MUX21X1 U10 ( .IN1(exp_oN_tmp[4]), .IN2(exp_o[4]), .S(n12), .Q(n8) );
  NAND2X0 U11 ( .IN1(n11), .IN2(n7), .QN(n10) );
  XOR2X1 U12 ( .IN1(n11), .IN2(n7), .Q(r_o[1]) );
  MUX21X1 U13 ( .IN1(exp_oN_tmp[3]), .IN2(exp_o[3]), .S(n12), .Q(n7) );
  AND2X1 U14 ( .IN1(n6), .IN2(n9), .Q(n11) );
  XOR2X1 U15 ( .IN1(n6), .IN2(n9), .Q(r_o[0]) );
  OR3X1 U16 ( .IN1(exp_oN_tmp[1]), .IN2(exp_oN_tmp[0]), .IN3(n12), .Q(n9) );
  MUX21X1 U17 ( .IN1(exp_oN_tmp[2]), .IN2(exp_o[2]), .S(n12), .Q(n6) );
  INVX0 U18 ( .INP(exp_o[7]), .ZN(n12) );
  INVX0 U19 ( .INP(exp_o[6]), .ZN(n13) );
  INVX0 U20 ( .INP(exp_o[5]), .ZN(n14) );
  INVX0 U21 ( .INP(exp_o[4]), .ZN(n15) );
  INVX0 U22 ( .INP(exp_o[3]), .ZN(n16) );
  INVX0 U23 ( .INP(exp_o[2]), .ZN(n17) );
  INVX0 U24 ( .INP(exp_o[1]), .ZN(n18) );
  INVX0 U25 ( .INP(exp_o[0]), .ZN(n19) );
endmodule


module DSR_right_N_S_N99_S5 ( a, b, c );
  input [98:0] a;
  input [4:0] b;
  output [98:0] c;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411;

  OR2X1 U2 ( .IN1(n58), .IN2(n105), .Q(n1) );
  OR2X1 U3 ( .IN1(b[2]), .IN2(b[3]), .Q(n2) );
  OR2X1 U4 ( .IN1(n105), .IN2(b[3]), .Q(n3) );
  OR2X1 U5 ( .IN1(n58), .IN2(b[2]), .Q(n4) );
  OR2X1 U6 ( .IN1(n411), .IN2(b[0]), .Q(n5) );
  OR2X1 U7 ( .IN1(n410), .IN2(b[1]), .Q(n6) );
  OR2X1 U8 ( .IN1(b[0]), .IN2(b[1]), .Q(n7) );
  OR2X1 U9 ( .IN1(n411), .IN2(n410), .Q(n8) );
  INVX0 U10 ( .INP(n1), .ZN(n9) );
  INVX0 U11 ( .INP(n1), .ZN(n10) );
  INVX0 U12 ( .INP(n1), .ZN(n11) );
  INVX0 U13 ( .INP(n1), .ZN(n12) );
  INVX0 U14 ( .INP(n4), .ZN(n13) );
  INVX0 U15 ( .INP(n4), .ZN(n14) );
  INVX0 U16 ( .INP(n4), .ZN(n15) );
  INVX0 U17 ( .INP(n4), .ZN(n16) );
  INVX0 U18 ( .INP(n2), .ZN(n17) );
  INVX0 U19 ( .INP(n2), .ZN(n18) );
  INVX0 U20 ( .INP(n2), .ZN(n19) );
  INVX0 U21 ( .INP(n2), .ZN(n20) );
  INVX0 U22 ( .INP(n3), .ZN(n21) );
  INVX0 U23 ( .INP(n3), .ZN(n22) );
  INVX0 U24 ( .INP(n3), .ZN(n23) );
  INVX0 U25 ( .INP(n3), .ZN(n24) );
  INVX0 U26 ( .INP(n7), .ZN(n25) );
  INVX0 U27 ( .INP(n7), .ZN(n26) );
  INVX0 U28 ( .INP(n7), .ZN(n27) );
  INVX0 U29 ( .INP(n7), .ZN(n28) );
  INVX0 U30 ( .INP(n5), .ZN(n29) );
  INVX0 U31 ( .INP(n5), .ZN(n30) );
  INVX0 U32 ( .INP(n5), .ZN(n31) );
  INVX0 U33 ( .INP(n5), .ZN(n32) );
  INVX0 U34 ( .INP(n6), .ZN(n33) );
  INVX0 U35 ( .INP(n6), .ZN(n34) );
  INVX0 U36 ( .INP(n6), .ZN(n35) );
  INVX0 U37 ( .INP(n6), .ZN(n36) );
  INVX0 U38 ( .INP(n8), .ZN(n37) );
  INVX0 U39 ( .INP(n8), .ZN(n38) );
  INVX0 U40 ( .INP(n8), .ZN(n39) );
  INVX0 U41 ( .INP(n8), .ZN(n40) );
  INVX4 U42 ( .INP(b[4]), .ZN(n57) );
  AO221X1 U43 ( .IN1(n41), .IN2(n42), .IN3(n43), .IN4(n44), .IN5(n45), .Q(c[9]) );
  AO222X1 U44 ( .IN1(n46), .IN2(n47), .IN3(b[4]), .IN4(n48), .IN5(n49), .IN6(
        n50), .Q(n45) );
  NOR2X0 U45 ( .IN1(n51), .IN2(n52), .QN(c[98]) );
  AND2X1 U46 ( .IN1(n53), .IN2(n46), .Q(c[97]) );
  AND2X1 U47 ( .IN1(n54), .IN2(n46), .Q(c[96]) );
  AND2X1 U48 ( .IN1(n55), .IN2(n46), .Q(c[95]) );
  AND3X1 U49 ( .IN1(n56), .IN2(n57), .IN3(n58), .Q(c[94]) );
  AO22X1 U50 ( .IN1(n46), .IN2(n59), .IN3(n43), .IN4(n53), .Q(c[93]) );
  AO22X1 U51 ( .IN1(n46), .IN2(n60), .IN3(n43), .IN4(n54), .Q(c[92]) );
  AO22X1 U52 ( .IN1(n46), .IN2(n61), .IN3(n43), .IN4(n55), .Q(c[91]) );
  AND2X1 U53 ( .IN1(n57), .IN2(n62), .Q(c[90]) );
  AO221X1 U54 ( .IN1(n43), .IN2(n63), .IN3(n41), .IN4(n64), .IN5(n65), .Q(c[8]) );
  AO222X1 U55 ( .IN1(n46), .IN2(n66), .IN3(b[4]), .IN4(n67), .IN5(n49), .IN6(
        n68), .Q(n65) );
  AND2X1 U56 ( .IN1(n57), .IN2(n69), .Q(c[89]) );
  AND2X1 U57 ( .IN1(n57), .IN2(n70), .Q(c[88]) );
  AND2X1 U58 ( .IN1(n57), .IN2(n71), .Q(c[87]) );
  AND2X1 U59 ( .IN1(n57), .IN2(n72), .Q(c[86]) );
  AND2X1 U60 ( .IN1(n57), .IN2(n73), .Q(c[85]) );
  AND2X1 U61 ( .IN1(n57), .IN2(n74), .Q(c[84]) );
  AND2X1 U62 ( .IN1(n57), .IN2(n75), .Q(c[83]) );
  AO22X1 U63 ( .IN1(n76), .IN2(n57), .IN3(n77), .IN4(n78), .Q(c[82]) );
  AO22X1 U64 ( .IN1(n79), .IN2(n57), .IN3(n77), .IN4(n53), .Q(c[81]) );
  AO22X1 U65 ( .IN1(n80), .IN2(n57), .IN3(n77), .IN4(n54), .Q(c[80]) );
  AO221X1 U66 ( .IN1(n41), .IN2(n81), .IN3(n43), .IN4(n82), .IN5(n83), .Q(c[7]) );
  AO222X1 U67 ( .IN1(b[4]), .IN2(n84), .IN3(n46), .IN4(n85), .IN5(n49), .IN6(
        n86), .Q(n83) );
  AO22X1 U68 ( .IN1(n87), .IN2(n57), .IN3(n77), .IN4(n55), .Q(c[79]) );
  MUX21X1 U69 ( .IN1(n88), .IN2(n89), .S(n57), .Q(c[78]) );
  AND2X1 U70 ( .IN1(n58), .IN2(n56), .Q(n88) );
  AO222X1 U71 ( .IN1(n77), .IN2(n59), .IN3(n90), .IN4(n53), .IN5(n91), .IN6(
        n57), .Q(c[77]) );
  AO222X1 U72 ( .IN1(n77), .IN2(n60), .IN3(n90), .IN4(n54), .IN5(n92), .IN6(
        n57), .Q(c[76]) );
  AO222X1 U73 ( .IN1(n77), .IN2(n61), .IN3(n90), .IN4(n55), .IN5(n93), .IN6(
        n57), .Q(c[75]) );
  AND2X1 U74 ( .IN1(b[4]), .IN2(n21), .Q(n90) );
  AND2X1 U75 ( .IN1(b[4]), .IN2(n20), .Q(n77) );
  MUX21X1 U76 ( .IN1(n62), .IN2(n94), .S(n57), .Q(c[74]) );
  AO222X1 U77 ( .IN1(n24), .IN2(n95), .IN3(n78), .IN4(n13), .IN5(n18), .IN6(
        n96), .Q(n62) );
  MUX21X1 U78 ( .IN1(n69), .IN2(n97), .S(n57), .Q(c[73]) );
  AO222X1 U79 ( .IN1(n23), .IN2(n59), .IN3(n16), .IN4(n53), .IN5(n17), .IN6(
        n98), .Q(n69) );
  MUX21X1 U80 ( .IN1(n70), .IN2(n99), .S(n57), .Q(c[72]) );
  AO222X1 U81 ( .IN1(n22), .IN2(n60), .IN3(n15), .IN4(n54), .IN5(n20), .IN6(
        n100), .Q(n70) );
  MUX21X1 U82 ( .IN1(n71), .IN2(n101), .S(n57), .Q(c[71]) );
  AO222X1 U83 ( .IN1(n21), .IN2(n61), .IN3(n14), .IN4(n55), .IN5(n19), .IN6(
        n102), .Q(n71) );
  MUX21X1 U84 ( .IN1(n72), .IN2(n103), .S(n57), .Q(c[70]) );
  AO222X1 U85 ( .IN1(n22), .IN2(n96), .IN3(b[3]), .IN4(n56), .IN5(n18), .IN6(
        n104), .Q(n72) );
  MUX21X1 U86 ( .IN1(n78), .IN2(n95), .S(n105), .Q(n56) );
  INVX0 U87 ( .INP(n52), .ZN(n78) );
  NAND2X0 U88 ( .IN1(a[98]), .IN2(n26), .QN(n52) );
  AO221X1 U89 ( .IN1(n41), .IN2(n106), .IN3(n43), .IN4(n107), .IN5(n108), .Q(
        c[6]) );
  AO222X1 U90 ( .IN1(b[4]), .IN2(n109), .IN3(n46), .IN4(n110), .IN5(n49), 
        .IN6(n111), .Q(n108) );
  MUX21X1 U91 ( .IN1(n73), .IN2(n112), .S(n57), .Q(c[69]) );
  AO221X1 U92 ( .IN1(n21), .IN2(n98), .IN3(n17), .IN4(n113), .IN5(n114), .Q(
        n73) );
  AO22X1 U93 ( .IN1(n14), .IN2(n59), .IN3(n10), .IN4(n53), .Q(n114) );
  AO22X1 U94 ( .IN1(a[97]), .IN2(n28), .IN3(a[98]), .IN4(n35), .Q(n53) );
  MUX21X1 U95 ( .IN1(n74), .IN2(n115), .S(n57), .Q(c[68]) );
  AO221X1 U96 ( .IN1(n24), .IN2(n100), .IN3(n19), .IN4(n116), .IN5(n117), .Q(
        n74) );
  AO22X1 U97 ( .IN1(n16), .IN2(n60), .IN3(n9), .IN4(n54), .Q(n117) );
  AO222X1 U98 ( .IN1(a[96]), .IN2(n26), .IN3(a[97]), .IN4(n34), .IN5(a[98]), 
        .IN6(n31), .Q(n54) );
  MUX21X1 U99 ( .IN1(n75), .IN2(n118), .S(n57), .Q(c[67]) );
  AO221X1 U100 ( .IN1(n23), .IN2(n102), .IN3(n18), .IN4(n119), .IN5(n120), .Q(
        n75) );
  AO22X1 U101 ( .IN1(n15), .IN2(n61), .IN3(n12), .IN4(n55), .Q(n120) );
  AO221X1 U102 ( .IN1(a[97]), .IN2(n32), .IN3(a[98]), .IN4(n40), .IN5(n121), 
        .Q(n55) );
  AO22X1 U103 ( .IN1(a[95]), .IN2(n27), .IN3(a[96]), .IN4(n34), .Q(n121) );
  MUX21X1 U104 ( .IN1(n76), .IN2(n122), .S(n57), .Q(c[66]) );
  AO221X1 U105 ( .IN1(n22), .IN2(n104), .IN3(n20), .IN4(n123), .IN5(n124), .Q(
        n76) );
  AO22X1 U106 ( .IN1(n13), .IN2(n96), .IN3(n11), .IN4(n95), .Q(n124) );
  AO221X1 U107 ( .IN1(a[96]), .IN2(n30), .IN3(a[97]), .IN4(n39), .IN5(n125), 
        .Q(n95) );
  AO22X1 U108 ( .IN1(a[94]), .IN2(n25), .IN3(a[95]), .IN4(n33), .Q(n125) );
  MUX21X1 U109 ( .IN1(n79), .IN2(n126), .S(n57), .Q(c[65]) );
  AO221X1 U110 ( .IN1(n21), .IN2(n113), .IN3(n17), .IN4(n127), .IN5(n128), .Q(
        n79) );
  AO22X1 U111 ( .IN1(n14), .IN2(n98), .IN3(n10), .IN4(n59), .Q(n128) );
  AO221X1 U112 ( .IN1(a[95]), .IN2(n29), .IN3(a[96]), .IN4(n38), .IN5(n129), 
        .Q(n59) );
  AO22X1 U113 ( .IN1(a[93]), .IN2(n26), .IN3(a[94]), .IN4(n36), .Q(n129) );
  MUX21X1 U114 ( .IN1(n80), .IN2(n130), .S(n57), .Q(c[64]) );
  AO221X1 U115 ( .IN1(n24), .IN2(n116), .IN3(n19), .IN4(n131), .IN5(n132), .Q(
        n80) );
  AO22X1 U116 ( .IN1(n16), .IN2(n100), .IN3(n9), .IN4(n60), .Q(n132) );
  AO221X1 U117 ( .IN1(a[94]), .IN2(n31), .IN3(a[95]), .IN4(n37), .IN5(n133), 
        .Q(n60) );
  AO22X1 U118 ( .IN1(a[92]), .IN2(n28), .IN3(a[93]), .IN4(n35), .Q(n133) );
  MUX21X1 U119 ( .IN1(n87), .IN2(n134), .S(n57), .Q(c[63]) );
  AO221X1 U120 ( .IN1(n23), .IN2(n119), .IN3(n18), .IN4(n135), .IN5(n136), .Q(
        n87) );
  AO22X1 U121 ( .IN1(n15), .IN2(n102), .IN3(n12), .IN4(n61), .Q(n136) );
  AO221X1 U122 ( .IN1(a[93]), .IN2(n32), .IN3(a[94]), .IN4(n40), .IN5(n137), 
        .Q(n61) );
  AO22X1 U123 ( .IN1(a[91]), .IN2(n27), .IN3(a[92]), .IN4(n34), .Q(n137) );
  MUX21X1 U124 ( .IN1(n89), .IN2(n138), .S(n57), .Q(c[62]) );
  AO221X1 U125 ( .IN1(n22), .IN2(n123), .IN3(n20), .IN4(n139), .IN5(n140), .Q(
        n89) );
  AO22X1 U126 ( .IN1(n13), .IN2(n104), .IN3(n11), .IN4(n96), .Q(n140) );
  AO221X1 U127 ( .IN1(a[92]), .IN2(n30), .IN3(a[93]), .IN4(n39), .IN5(n141), 
        .Q(n96) );
  AO22X1 U128 ( .IN1(a[90]), .IN2(n25), .IN3(a[91]), .IN4(n33), .Q(n141) );
  MUX21X1 U129 ( .IN1(n91), .IN2(n142), .S(n57), .Q(c[61]) );
  AO221X1 U130 ( .IN1(n21), .IN2(n127), .IN3(n17), .IN4(n143), .IN5(n144), .Q(
        n91) );
  AO22X1 U131 ( .IN1(n14), .IN2(n113), .IN3(n10), .IN4(n98), .Q(n144) );
  AO221X1 U132 ( .IN1(a[91]), .IN2(n29), .IN3(a[92]), .IN4(n38), .IN5(n145), 
        .Q(n98) );
  AO22X1 U133 ( .IN1(a[89]), .IN2(n26), .IN3(a[90]), .IN4(n36), .Q(n145) );
  MUX21X1 U134 ( .IN1(n92), .IN2(n146), .S(n57), .Q(c[60]) );
  AO221X1 U135 ( .IN1(n24), .IN2(n131), .IN3(n19), .IN4(n147), .IN5(n148), .Q(
        n92) );
  AO22X1 U136 ( .IN1(n16), .IN2(n116), .IN3(n9), .IN4(n100), .Q(n148) );
  AO221X1 U137 ( .IN1(a[90]), .IN2(n31), .IN3(a[91]), .IN4(n37), .IN5(n149), 
        .Q(n100) );
  AO22X1 U138 ( .IN1(a[88]), .IN2(n28), .IN3(a[89]), .IN4(n35), .Q(n149) );
  AO221X1 U139 ( .IN1(n41), .IN2(n50), .IN3(n49), .IN4(n44), .IN5(n150), .Q(
        c[5]) );
  AO222X1 U140 ( .IN1(n43), .IN2(n47), .IN3(b[4]), .IN4(n151), .IN5(n46), 
        .IN6(n152), .Q(n150) );
  MUX21X1 U141 ( .IN1(n93), .IN2(n153), .S(n57), .Q(c[59]) );
  AO221X1 U142 ( .IN1(n23), .IN2(n135), .IN3(n18), .IN4(n154), .IN5(n155), .Q(
        n93) );
  AO22X1 U143 ( .IN1(n15), .IN2(n119), .IN3(n12), .IN4(n102), .Q(n155) );
  AO221X1 U144 ( .IN1(a[89]), .IN2(n32), .IN3(a[90]), .IN4(n40), .IN5(n156), 
        .Q(n102) );
  AO22X1 U145 ( .IN1(a[87]), .IN2(n27), .IN3(a[88]), .IN4(n34), .Q(n156) );
  MUX21X1 U146 ( .IN1(n94), .IN2(n157), .S(n57), .Q(c[58]) );
  AO221X1 U147 ( .IN1(n22), .IN2(n139), .IN3(n20), .IN4(n158), .IN5(n159), .Q(
        n94) );
  AO22X1 U148 ( .IN1(n13), .IN2(n123), .IN3(n11), .IN4(n104), .Q(n159) );
  AO221X1 U149 ( .IN1(a[88]), .IN2(n30), .IN3(a[89]), .IN4(n39), .IN5(n160), 
        .Q(n104) );
  AO22X1 U150 ( .IN1(a[86]), .IN2(n25), .IN3(a[87]), .IN4(n33), .Q(n160) );
  MUX21X1 U151 ( .IN1(n97), .IN2(n161), .S(n57), .Q(c[57]) );
  AO221X1 U152 ( .IN1(n21), .IN2(n143), .IN3(n17), .IN4(n162), .IN5(n163), .Q(
        n97) );
  AO22X1 U153 ( .IN1(n14), .IN2(n127), .IN3(n10), .IN4(n113), .Q(n163) );
  AO221X1 U154 ( .IN1(a[87]), .IN2(n29), .IN3(a[88]), .IN4(n38), .IN5(n164), 
        .Q(n113) );
  AO22X1 U155 ( .IN1(a[85]), .IN2(n26), .IN3(a[86]), .IN4(n36), .Q(n164) );
  MUX21X1 U156 ( .IN1(n99), .IN2(n165), .S(n57), .Q(c[56]) );
  AO221X1 U157 ( .IN1(n24), .IN2(n147), .IN3(n19), .IN4(n166), .IN5(n167), .Q(
        n99) );
  AO22X1 U158 ( .IN1(n16), .IN2(n131), .IN3(n9), .IN4(n116), .Q(n167) );
  AO221X1 U159 ( .IN1(a[86]), .IN2(n31), .IN3(a[87]), .IN4(n37), .IN5(n168), 
        .Q(n116) );
  AO22X1 U160 ( .IN1(a[84]), .IN2(n28), .IN3(a[85]), .IN4(n35), .Q(n168) );
  MUX21X1 U161 ( .IN1(n101), .IN2(n169), .S(n57), .Q(c[55]) );
  AO221X1 U162 ( .IN1(n23), .IN2(n154), .IN3(n18), .IN4(n170), .IN5(n171), .Q(
        n101) );
  AO22X1 U163 ( .IN1(n15), .IN2(n135), .IN3(n12), .IN4(n119), .Q(n171) );
  AO221X1 U164 ( .IN1(a[85]), .IN2(n32), .IN3(a[86]), .IN4(n40), .IN5(n172), 
        .Q(n119) );
  AO22X1 U165 ( .IN1(a[83]), .IN2(n27), .IN3(a[84]), .IN4(n34), .Q(n172) );
  MUX21X1 U166 ( .IN1(n103), .IN2(n173), .S(n57), .Q(c[54]) );
  AO221X1 U167 ( .IN1(n22), .IN2(n158), .IN3(n20), .IN4(n174), .IN5(n175), .Q(
        n103) );
  AO22X1 U168 ( .IN1(n13), .IN2(n139), .IN3(n11), .IN4(n123), .Q(n175) );
  AO221X1 U169 ( .IN1(a[84]), .IN2(n30), .IN3(a[85]), .IN4(n39), .IN5(n176), 
        .Q(n123) );
  AO22X1 U170 ( .IN1(a[82]), .IN2(n25), .IN3(a[83]), .IN4(n33), .Q(n176) );
  MUX21X1 U171 ( .IN1(n112), .IN2(n177), .S(n57), .Q(c[53]) );
  AO221X1 U172 ( .IN1(n21), .IN2(n162), .IN3(n17), .IN4(n178), .IN5(n179), .Q(
        n112) );
  AO22X1 U173 ( .IN1(n14), .IN2(n143), .IN3(n10), .IN4(n127), .Q(n179) );
  AO221X1 U174 ( .IN1(a[83]), .IN2(n29), .IN3(a[84]), .IN4(n38), .IN5(n180), 
        .Q(n127) );
  AO22X1 U175 ( .IN1(a[81]), .IN2(n26), .IN3(a[82]), .IN4(n36), .Q(n180) );
  MUX21X1 U176 ( .IN1(n115), .IN2(n181), .S(n57), .Q(c[52]) );
  AO221X1 U177 ( .IN1(n24), .IN2(n166), .IN3(n19), .IN4(n182), .IN5(n183), .Q(
        n115) );
  AO22X1 U178 ( .IN1(n16), .IN2(n147), .IN3(n9), .IN4(n131), .Q(n183) );
  AO221X1 U179 ( .IN1(a[82]), .IN2(n31), .IN3(a[83]), .IN4(n37), .IN5(n184), 
        .Q(n131) );
  AO22X1 U180 ( .IN1(a[80]), .IN2(n28), .IN3(a[81]), .IN4(n35), .Q(n184) );
  MUX21X1 U181 ( .IN1(n118), .IN2(n185), .S(n57), .Q(c[51]) );
  AO221X1 U182 ( .IN1(n23), .IN2(n170), .IN3(n18), .IN4(n186), .IN5(n187), .Q(
        n118) );
  AO22X1 U183 ( .IN1(n15), .IN2(n154), .IN3(n12), .IN4(n135), .Q(n187) );
  AO221X1 U184 ( .IN1(a[81]), .IN2(n32), .IN3(a[82]), .IN4(n40), .IN5(n188), 
        .Q(n135) );
  AO22X1 U185 ( .IN1(a[79]), .IN2(n27), .IN3(a[80]), .IN4(n34), .Q(n188) );
  MUX21X1 U186 ( .IN1(n122), .IN2(n189), .S(n57), .Q(c[50]) );
  AO221X1 U187 ( .IN1(n22), .IN2(n174), .IN3(n20), .IN4(n190), .IN5(n191), .Q(
        n122) );
  AO22X1 U188 ( .IN1(n13), .IN2(n158), .IN3(n11), .IN4(n139), .Q(n191) );
  AO221X1 U189 ( .IN1(a[80]), .IN2(n30), .IN3(a[81]), .IN4(n39), .IN5(n192), 
        .Q(n139) );
  AO22X1 U190 ( .IN1(a[78]), .IN2(n25), .IN3(a[79]), .IN4(n33), .Q(n192) );
  AO221X1 U191 ( .IN1(n46), .IN2(n193), .IN3(n41), .IN4(n68), .IN5(n194), .Q(
        c[4]) );
  AO222X1 U192 ( .IN1(n43), .IN2(n66), .IN3(b[4]), .IN4(n195), .IN5(n49), 
        .IN6(n63), .Q(n194) );
  MUX21X1 U193 ( .IN1(n126), .IN2(n196), .S(n57), .Q(c[49]) );
  AO221X1 U194 ( .IN1(n21), .IN2(n178), .IN3(n17), .IN4(n197), .IN5(n198), .Q(
        n126) );
  AO22X1 U195 ( .IN1(n14), .IN2(n162), .IN3(n10), .IN4(n143), .Q(n198) );
  AO221X1 U196 ( .IN1(a[79]), .IN2(n29), .IN3(a[80]), .IN4(n38), .IN5(n199), 
        .Q(n143) );
  AO22X1 U197 ( .IN1(a[77]), .IN2(n26), .IN3(a[78]), .IN4(n36), .Q(n199) );
  MUX21X1 U198 ( .IN1(n130), .IN2(n200), .S(n57), .Q(c[48]) );
  AO221X1 U199 ( .IN1(n24), .IN2(n182), .IN3(n19), .IN4(n201), .IN5(n202), .Q(
        n130) );
  AO22X1 U200 ( .IN1(n16), .IN2(n166), .IN3(n9), .IN4(n147), .Q(n202) );
  AO221X1 U201 ( .IN1(a[78]), .IN2(n31), .IN3(a[79]), .IN4(n37), .IN5(n203), 
        .Q(n147) );
  AO22X1 U202 ( .IN1(a[76]), .IN2(n28), .IN3(a[77]), .IN4(n35), .Q(n203) );
  MUX21X1 U203 ( .IN1(n134), .IN2(n204), .S(n57), .Q(c[47]) );
  AO221X1 U204 ( .IN1(n23), .IN2(n186), .IN3(n18), .IN4(n205), .IN5(n206), .Q(
        n134) );
  AO22X1 U205 ( .IN1(n15), .IN2(n170), .IN3(n12), .IN4(n154), .Q(n206) );
  AO221X1 U206 ( .IN1(a[77]), .IN2(n32), .IN3(a[78]), .IN4(n40), .IN5(n207), 
        .Q(n154) );
  AO22X1 U207 ( .IN1(a[75]), .IN2(n27), .IN3(a[76]), .IN4(n34), .Q(n207) );
  MUX21X1 U208 ( .IN1(n138), .IN2(n208), .S(n57), .Q(c[46]) );
  AO221X1 U209 ( .IN1(n22), .IN2(n190), .IN3(n20), .IN4(n209), .IN5(n210), .Q(
        n138) );
  AO22X1 U210 ( .IN1(n13), .IN2(n174), .IN3(n11), .IN4(n158), .Q(n210) );
  AO221X1 U211 ( .IN1(a[76]), .IN2(n30), .IN3(a[77]), .IN4(n39), .IN5(n211), 
        .Q(n158) );
  AO22X1 U212 ( .IN1(a[74]), .IN2(n25), .IN3(a[75]), .IN4(n33), .Q(n211) );
  MUX21X1 U213 ( .IN1(n142), .IN2(n212), .S(n57), .Q(c[45]) );
  AO221X1 U214 ( .IN1(n21), .IN2(n197), .IN3(n17), .IN4(n213), .IN5(n214), .Q(
        n142) );
  AO22X1 U215 ( .IN1(n14), .IN2(n178), .IN3(n10), .IN4(n162), .Q(n214) );
  AO221X1 U216 ( .IN1(a[75]), .IN2(n29), .IN3(a[76]), .IN4(n38), .IN5(n215), 
        .Q(n162) );
  AO22X1 U217 ( .IN1(a[73]), .IN2(n26), .IN3(a[74]), .IN4(n36), .Q(n215) );
  MUX21X1 U218 ( .IN1(n146), .IN2(n216), .S(n57), .Q(c[44]) );
  AO221X1 U219 ( .IN1(n24), .IN2(n201), .IN3(n19), .IN4(n217), .IN5(n218), .Q(
        n146) );
  AO22X1 U220 ( .IN1(n16), .IN2(n182), .IN3(n9), .IN4(n166), .Q(n218) );
  AO221X1 U221 ( .IN1(a[74]), .IN2(n31), .IN3(a[75]), .IN4(n37), .IN5(n219), 
        .Q(n166) );
  AO22X1 U222 ( .IN1(a[72]), .IN2(n28), .IN3(a[73]), .IN4(n35), .Q(n219) );
  MUX21X1 U223 ( .IN1(n153), .IN2(n220), .S(n57), .Q(c[43]) );
  AO221X1 U224 ( .IN1(n23), .IN2(n205), .IN3(n18), .IN4(n221), .IN5(n222), .Q(
        n153) );
  AO22X1 U225 ( .IN1(n15), .IN2(n186), .IN3(n12), .IN4(n170), .Q(n222) );
  AO221X1 U226 ( .IN1(a[73]), .IN2(n32), .IN3(a[74]), .IN4(n40), .IN5(n223), 
        .Q(n170) );
  AO22X1 U227 ( .IN1(a[71]), .IN2(n27), .IN3(a[72]), .IN4(n34), .Q(n223) );
  MUX21X1 U228 ( .IN1(n157), .IN2(n224), .S(n57), .Q(c[42]) );
  AO221X1 U229 ( .IN1(n22), .IN2(n209), .IN3(n20), .IN4(n225), .IN5(n226), .Q(
        n157) );
  AO22X1 U230 ( .IN1(n13), .IN2(n190), .IN3(n11), .IN4(n174), .Q(n226) );
  AO221X1 U231 ( .IN1(a[72]), .IN2(n30), .IN3(a[73]), .IN4(n39), .IN5(n227), 
        .Q(n174) );
  AO22X1 U232 ( .IN1(a[70]), .IN2(n25), .IN3(a[71]), .IN4(n33), .Q(n227) );
  MUX21X1 U233 ( .IN1(n161), .IN2(n228), .S(n57), .Q(c[41]) );
  AO221X1 U234 ( .IN1(n21), .IN2(n213), .IN3(n17), .IN4(n229), .IN5(n230), .Q(
        n161) );
  AO22X1 U235 ( .IN1(n14), .IN2(n197), .IN3(n10), .IN4(n178), .Q(n230) );
  AO221X1 U236 ( .IN1(a[71]), .IN2(n29), .IN3(a[72]), .IN4(n38), .IN5(n231), 
        .Q(n178) );
  AO22X1 U237 ( .IN1(a[69]), .IN2(n26), .IN3(a[70]), .IN4(n36), .Q(n231) );
  MUX21X1 U238 ( .IN1(n165), .IN2(n232), .S(n57), .Q(c[40]) );
  AO221X1 U239 ( .IN1(n24), .IN2(n217), .IN3(n19), .IN4(n233), .IN5(n234), .Q(
        n165) );
  AO22X1 U240 ( .IN1(n16), .IN2(n201), .IN3(n9), .IN4(n182), .Q(n234) );
  AO221X1 U241 ( .IN1(a[70]), .IN2(n31), .IN3(a[71]), .IN4(n37), .IN5(n235), 
        .Q(n182) );
  AO22X1 U242 ( .IN1(a[68]), .IN2(n28), .IN3(a[69]), .IN4(n35), .Q(n235) );
  AO221X1 U243 ( .IN1(n41), .IN2(n86), .IN3(n49), .IN4(n82), .IN5(n236), .Q(
        c[3]) );
  AO222X1 U244 ( .IN1(n43), .IN2(n85), .IN3(n46), .IN4(n237), .IN5(b[4]), 
        .IN6(n238), .Q(n236) );
  AO221X1 U245 ( .IN1(a[5]), .IN2(n32), .IN3(a[6]), .IN4(n40), .IN5(n239), .Q(
        n237) );
  AO22X1 U246 ( .IN1(a[3]), .IN2(n27), .IN3(a[4]), .IN4(n34), .Q(n239) );
  AO221X1 U247 ( .IN1(a[9]), .IN2(n30), .IN3(a[10]), .IN4(n39), .IN5(n240), 
        .Q(n85) );
  AO22X1 U248 ( .IN1(a[7]), .IN2(n25), .IN3(a[8]), .IN4(n33), .Q(n240) );
  MUX21X1 U249 ( .IN1(n169), .IN2(n241), .S(n57), .Q(c[39]) );
  AO221X1 U250 ( .IN1(n23), .IN2(n221), .IN3(n18), .IN4(n242), .IN5(n243), .Q(
        n169) );
  AO22X1 U251 ( .IN1(n15), .IN2(n205), .IN3(n12), .IN4(n186), .Q(n243) );
  AO221X1 U252 ( .IN1(a[69]), .IN2(n29), .IN3(a[70]), .IN4(n38), .IN5(n244), 
        .Q(n186) );
  AO22X1 U253 ( .IN1(a[67]), .IN2(n26), .IN3(a[68]), .IN4(n36), .Q(n244) );
  MUX21X1 U254 ( .IN1(n173), .IN2(n245), .S(n57), .Q(c[38]) );
  AO221X1 U255 ( .IN1(n22), .IN2(n225), .IN3(n20), .IN4(n246), .IN5(n247), .Q(
        n173) );
  AO22X1 U256 ( .IN1(n13), .IN2(n209), .IN3(n11), .IN4(n190), .Q(n247) );
  AO221X1 U257 ( .IN1(a[68]), .IN2(n31), .IN3(a[69]), .IN4(n37), .IN5(n248), 
        .Q(n190) );
  AO22X1 U258 ( .IN1(a[66]), .IN2(n28), .IN3(a[67]), .IN4(n35), .Q(n248) );
  MUX21X1 U259 ( .IN1(n177), .IN2(n249), .S(n57), .Q(c[37]) );
  AO221X1 U260 ( .IN1(n21), .IN2(n229), .IN3(n17), .IN4(n250), .IN5(n251), .Q(
        n177) );
  AO22X1 U261 ( .IN1(n14), .IN2(n213), .IN3(n10), .IN4(n197), .Q(n251) );
  AO221X1 U262 ( .IN1(a[67]), .IN2(n32), .IN3(a[68]), .IN4(n40), .IN5(n252), 
        .Q(n197) );
  AO22X1 U263 ( .IN1(a[65]), .IN2(n27), .IN3(a[66]), .IN4(n34), .Q(n252) );
  MUX21X1 U264 ( .IN1(n181), .IN2(n253), .S(n57), .Q(c[36]) );
  AO221X1 U265 ( .IN1(n24), .IN2(n233), .IN3(n19), .IN4(n254), .IN5(n255), .Q(
        n181) );
  AO22X1 U266 ( .IN1(n16), .IN2(n217), .IN3(n9), .IN4(n201), .Q(n255) );
  AO221X1 U267 ( .IN1(a[66]), .IN2(n30), .IN3(a[67]), .IN4(n39), .IN5(n256), 
        .Q(n201) );
  AO22X1 U268 ( .IN1(a[64]), .IN2(n25), .IN3(a[65]), .IN4(n33), .Q(n256) );
  MUX21X1 U269 ( .IN1(n185), .IN2(n257), .S(n57), .Q(c[35]) );
  AO221X1 U270 ( .IN1(n23), .IN2(n242), .IN3(n18), .IN4(n258), .IN5(n259), .Q(
        n185) );
  AO22X1 U271 ( .IN1(n15), .IN2(n221), .IN3(n12), .IN4(n205), .Q(n259) );
  AO221X1 U272 ( .IN1(a[65]), .IN2(n29), .IN3(a[66]), .IN4(n38), .IN5(n260), 
        .Q(n205) );
  AO22X1 U273 ( .IN1(a[63]), .IN2(n26), .IN3(a[64]), .IN4(n36), .Q(n260) );
  MUX21X1 U274 ( .IN1(n189), .IN2(n261), .S(n57), .Q(c[34]) );
  AO221X1 U275 ( .IN1(n22), .IN2(n246), .IN3(n20), .IN4(n262), .IN5(n263), .Q(
        n189) );
  AO22X1 U276 ( .IN1(n13), .IN2(n225), .IN3(n11), .IN4(n209), .Q(n263) );
  AO221X1 U277 ( .IN1(a[64]), .IN2(n31), .IN3(a[65]), .IN4(n37), .IN5(n264), 
        .Q(n209) );
  AO22X1 U278 ( .IN1(a[62]), .IN2(n28), .IN3(a[63]), .IN4(n35), .Q(n264) );
  MUX21X1 U279 ( .IN1(n196), .IN2(n265), .S(n57), .Q(c[33]) );
  AO221X1 U280 ( .IN1(n21), .IN2(n250), .IN3(n17), .IN4(n266), .IN5(n267), .Q(
        n196) );
  AO22X1 U281 ( .IN1(n14), .IN2(n229), .IN3(n10), .IN4(n213), .Q(n267) );
  AO221X1 U282 ( .IN1(a[63]), .IN2(n32), .IN3(a[64]), .IN4(n40), .IN5(n268), 
        .Q(n213) );
  AO22X1 U283 ( .IN1(a[61]), .IN2(n27), .IN3(a[62]), .IN4(n34), .Q(n268) );
  MUX21X1 U284 ( .IN1(n200), .IN2(n269), .S(n57), .Q(c[32]) );
  AO221X1 U285 ( .IN1(n24), .IN2(n254), .IN3(n19), .IN4(n270), .IN5(n271), .Q(
        n200) );
  AO22X1 U286 ( .IN1(n16), .IN2(n233), .IN3(n9), .IN4(n217), .Q(n271) );
  AO221X1 U287 ( .IN1(a[62]), .IN2(n30), .IN3(a[63]), .IN4(n39), .IN5(n272), 
        .Q(n217) );
  AO22X1 U288 ( .IN1(a[60]), .IN2(n25), .IN3(a[61]), .IN4(n33), .Q(n272) );
  MUX21X1 U289 ( .IN1(n204), .IN2(n273), .S(n57), .Q(c[31]) );
  AO221X1 U290 ( .IN1(n23), .IN2(n258), .IN3(n18), .IN4(n274), .IN5(n275), .Q(
        n204) );
  AO22X1 U291 ( .IN1(n15), .IN2(n242), .IN3(n12), .IN4(n221), .Q(n275) );
  AO221X1 U292 ( .IN1(a[61]), .IN2(n29), .IN3(a[62]), .IN4(n38), .IN5(n276), 
        .Q(n221) );
  AO22X1 U293 ( .IN1(a[59]), .IN2(n26), .IN3(a[60]), .IN4(n36), .Q(n276) );
  MUX21X1 U294 ( .IN1(n208), .IN2(n277), .S(n57), .Q(c[30]) );
  AO221X1 U295 ( .IN1(n22), .IN2(n262), .IN3(n20), .IN4(n278), .IN5(n279), .Q(
        n208) );
  AO22X1 U296 ( .IN1(n13), .IN2(n246), .IN3(n11), .IN4(n225), .Q(n279) );
  AO221X1 U297 ( .IN1(a[60]), .IN2(n31), .IN3(a[61]), .IN4(n37), .IN5(n280), 
        .Q(n225) );
  AO22X1 U298 ( .IN1(a[58]), .IN2(n28), .IN3(a[59]), .IN4(n35), .Q(n280) );
  AO221X1 U299 ( .IN1(n41), .IN2(n111), .IN3(n49), .IN4(n107), .IN5(n281), .Q(
        c[2]) );
  AO222X1 U300 ( .IN1(n43), .IN2(n110), .IN3(n46), .IN4(n282), .IN5(b[4]), 
        .IN6(n283), .Q(n281) );
  AO221X1 U301 ( .IN1(a[4]), .IN2(n32), .IN3(a[5]), .IN4(n40), .IN5(n284), .Q(
        n282) );
  AO22X1 U302 ( .IN1(a[2]), .IN2(n27), .IN3(a[3]), .IN4(n34), .Q(n284) );
  AO221X1 U303 ( .IN1(a[8]), .IN2(n30), .IN3(a[9]), .IN4(n39), .IN5(n285), .Q(
        n110) );
  AO22X1 U304 ( .IN1(a[6]), .IN2(n25), .IN3(a[7]), .IN4(n33), .Q(n285) );
  MUX21X1 U305 ( .IN1(n212), .IN2(n286), .S(n57), .Q(c[29]) );
  AO221X1 U306 ( .IN1(n21), .IN2(n266), .IN3(n17), .IN4(n287), .IN5(n288), .Q(
        n212) );
  AO22X1 U307 ( .IN1(n14), .IN2(n250), .IN3(n10), .IN4(n229), .Q(n288) );
  AO221X1 U308 ( .IN1(a[59]), .IN2(n29), .IN3(a[60]), .IN4(n38), .IN5(n289), 
        .Q(n229) );
  AO22X1 U309 ( .IN1(a[57]), .IN2(n26), .IN3(a[58]), .IN4(n36), .Q(n289) );
  MUX21X1 U310 ( .IN1(n216), .IN2(n290), .S(n57), .Q(c[28]) );
  AO221X1 U311 ( .IN1(n24), .IN2(n270), .IN3(n19), .IN4(n291), .IN5(n292), .Q(
        n216) );
  AO22X1 U312 ( .IN1(n16), .IN2(n254), .IN3(n9), .IN4(n233), .Q(n292) );
  AO221X1 U313 ( .IN1(a[58]), .IN2(n31), .IN3(a[59]), .IN4(n37), .IN5(n293), 
        .Q(n233) );
  AO22X1 U314 ( .IN1(a[56]), .IN2(n28), .IN3(a[57]), .IN4(n35), .Q(n293) );
  MUX21X1 U315 ( .IN1(n220), .IN2(n294), .S(n57), .Q(c[27]) );
  AO221X1 U316 ( .IN1(n23), .IN2(n274), .IN3(n18), .IN4(n295), .IN5(n296), .Q(
        n220) );
  AO22X1 U317 ( .IN1(n15), .IN2(n258), .IN3(n12), .IN4(n242), .Q(n296) );
  AO221X1 U318 ( .IN1(a[57]), .IN2(n32), .IN3(a[58]), .IN4(n40), .IN5(n297), 
        .Q(n242) );
  AO22X1 U319 ( .IN1(a[55]), .IN2(n27), .IN3(a[56]), .IN4(n34), .Q(n297) );
  MUX21X1 U320 ( .IN1(n224), .IN2(n298), .S(n57), .Q(c[26]) );
  AO221X1 U321 ( .IN1(n22), .IN2(n278), .IN3(n20), .IN4(n299), .IN5(n300), .Q(
        n224) );
  AO22X1 U322 ( .IN1(n13), .IN2(n262), .IN3(n11), .IN4(n246), .Q(n300) );
  AO221X1 U323 ( .IN1(a[56]), .IN2(n30), .IN3(a[57]), .IN4(n39), .IN5(n301), 
        .Q(n246) );
  AO22X1 U324 ( .IN1(a[54]), .IN2(n25), .IN3(a[55]), .IN4(n33), .Q(n301) );
  MUX21X1 U325 ( .IN1(n228), .IN2(n48), .S(n57), .Q(c[25]) );
  AO221X1 U326 ( .IN1(n21), .IN2(n302), .IN3(n13), .IN4(n303), .IN5(n304), .Q(
        n48) );
  AO22X1 U327 ( .IN1(n10), .IN2(n305), .IN3(n20), .IN4(n306), .Q(n304) );
  AO221X1 U328 ( .IN1(n24), .IN2(n287), .IN3(n17), .IN4(n307), .IN5(n308), .Q(
        n228) );
  AO22X1 U329 ( .IN1(n14), .IN2(n266), .IN3(n10), .IN4(n250), .Q(n308) );
  AO221X1 U330 ( .IN1(a[55]), .IN2(n29), .IN3(a[56]), .IN4(n38), .IN5(n309), 
        .Q(n250) );
  AO22X1 U331 ( .IN1(a[53]), .IN2(n26), .IN3(a[54]), .IN4(n36), .Q(n309) );
  MUX21X1 U332 ( .IN1(n232), .IN2(n67), .S(n57), .Q(c[24]) );
  AO221X1 U333 ( .IN1(n19), .IN2(n310), .IN3(n24), .IN4(n311), .IN5(n312), .Q(
        n67) );
  AO22X1 U334 ( .IN1(n16), .IN2(n313), .IN3(n9), .IN4(n314), .Q(n312) );
  AO221X1 U335 ( .IN1(n23), .IN2(n291), .IN3(n19), .IN4(n315), .IN5(n316), .Q(
        n232) );
  AO22X1 U336 ( .IN1(n15), .IN2(n270), .IN3(n12), .IN4(n254), .Q(n316) );
  AO221X1 U337 ( .IN1(a[54]), .IN2(n31), .IN3(a[55]), .IN4(n37), .IN5(n317), 
        .Q(n254) );
  AO22X1 U338 ( .IN1(a[52]), .IN2(n28), .IN3(a[53]), .IN4(n35), .Q(n317) );
  MUX21X1 U339 ( .IN1(n241), .IN2(n84), .S(n57), .Q(c[23]) );
  AO221X1 U340 ( .IN1(n22), .IN2(n318), .IN3(n16), .IN4(n319), .IN5(n320), .Q(
        n84) );
  AO22X1 U341 ( .IN1(n9), .IN2(n321), .IN3(n18), .IN4(n322), .Q(n320) );
  AO221X1 U342 ( .IN1(n21), .IN2(n295), .IN3(n18), .IN4(n323), .IN5(n324), .Q(
        n241) );
  AO22X1 U343 ( .IN1(n13), .IN2(n274), .IN3(n11), .IN4(n258), .Q(n324) );
  AO221X1 U344 ( .IN1(a[53]), .IN2(n32), .IN3(a[54]), .IN4(n40), .IN5(n325), 
        .Q(n258) );
  AO22X1 U345 ( .IN1(a[51]), .IN2(n27), .IN3(a[52]), .IN4(n34), .Q(n325) );
  MUX21X1 U346 ( .IN1(n245), .IN2(n109), .S(n57), .Q(c[22]) );
  AO221X1 U347 ( .IN1(n24), .IN2(n326), .IN3(n15), .IN4(n327), .IN5(n328), .Q(
        n109) );
  AO22X1 U348 ( .IN1(n12), .IN2(n329), .IN3(n17), .IN4(n330), .Q(n328) );
  AO221X1 U349 ( .IN1(n23), .IN2(n299), .IN3(n20), .IN4(n331), .IN5(n332), .Q(
        n245) );
  AO22X1 U350 ( .IN1(n14), .IN2(n278), .IN3(n10), .IN4(n262), .Q(n332) );
  AO221X1 U351 ( .IN1(a[52]), .IN2(n30), .IN3(a[53]), .IN4(n39), .IN5(n333), 
        .Q(n262) );
  AO22X1 U352 ( .IN1(a[50]), .IN2(n25), .IN3(a[51]), .IN4(n33), .Q(n333) );
  MUX21X1 U353 ( .IN1(n249), .IN2(n151), .S(n57), .Q(c[21]) );
  AO221X1 U354 ( .IN1(n22), .IN2(n306), .IN3(n17), .IN4(n42), .IN5(n334), .Q(
        n151) );
  AO22X1 U355 ( .IN1(n10), .IN2(n303), .IN3(n16), .IN4(n302), .Q(n334) );
  AO221X1 U356 ( .IN1(n21), .IN2(n307), .IN3(n19), .IN4(n305), .IN5(n335), .Q(
        n249) );
  AO22X1 U357 ( .IN1(n16), .IN2(n287), .IN3(n9), .IN4(n266), .Q(n335) );
  AO221X1 U358 ( .IN1(a[51]), .IN2(n29), .IN3(a[52]), .IN4(n38), .IN5(n336), 
        .Q(n266) );
  AO22X1 U359 ( .IN1(a[49]), .IN2(n26), .IN3(a[50]), .IN4(n36), .Q(n336) );
  MUX21X1 U360 ( .IN1(n253), .IN2(n195), .S(n57), .Q(c[20]) );
  AO221X1 U361 ( .IN1(n24), .IN2(n310), .IN3(n14), .IN4(n311), .IN5(n337), .Q(
        n195) );
  AO22X1 U362 ( .IN1(n18), .IN2(n64), .IN3(n12), .IN4(n313), .Q(n337) );
  AO221X1 U363 ( .IN1(n23), .IN2(n315), .IN3(n18), .IN4(n314), .IN5(n338), .Q(
        n253) );
  AO22X1 U364 ( .IN1(n15), .IN2(n291), .IN3(n11), .IN4(n270), .Q(n338) );
  AO221X1 U365 ( .IN1(a[50]), .IN2(n31), .IN3(a[51]), .IN4(n37), .IN5(n339), 
        .Q(n270) );
  AO22X1 U366 ( .IN1(a[48]), .IN2(n28), .IN3(a[49]), .IN4(n35), .Q(n339) );
  AO221X1 U367 ( .IN1(b[4]), .IN2(n340), .IN3(n41), .IN4(n44), .IN5(n341), .Q(
        c[1]) );
  AO222X1 U368 ( .IN1(n49), .IN2(n47), .IN3(n46), .IN4(n342), .IN5(n43), .IN6(
        n152), .Q(n341) );
  AO221X1 U369 ( .IN1(a[7]), .IN2(n32), .IN3(a[8]), .IN4(n40), .IN5(n343), .Q(
        n152) );
  AO22X1 U370 ( .IN1(a[5]), .IN2(n27), .IN3(a[6]), .IN4(n34), .Q(n343) );
  AO221X1 U371 ( .IN1(a[3]), .IN2(n30), .IN3(a[4]), .IN4(n39), .IN5(n344), .Q(
        n342) );
  AO22X1 U372 ( .IN1(a[1]), .IN2(n25), .IN3(a[2]), .IN4(n33), .Q(n344) );
  AO221X1 U373 ( .IN1(a[11]), .IN2(n29), .IN3(a[12]), .IN4(n38), .IN5(n345), 
        .Q(n47) );
  AO22X1 U374 ( .IN1(a[9]), .IN2(n26), .IN3(a[10]), .IN4(n36), .Q(n345) );
  MUX21X1 U375 ( .IN1(n257), .IN2(n238), .S(n57), .Q(c[19]) );
  AO221X1 U376 ( .IN1(n22), .IN2(n322), .IN3(n20), .IN4(n81), .IN5(n346), .Q(
        n238) );
  AO22X1 U377 ( .IN1(n9), .IN2(n319), .IN3(n15), .IN4(n318), .Q(n346) );
  AO221X1 U378 ( .IN1(n21), .IN2(n323), .IN3(n17), .IN4(n321), .IN5(n347), .Q(
        n257) );
  AO22X1 U379 ( .IN1(n13), .IN2(n295), .IN3(n10), .IN4(n274), .Q(n347) );
  AO221X1 U380 ( .IN1(a[49]), .IN2(n31), .IN3(a[50]), .IN4(n37), .IN5(n348), 
        .Q(n274) );
  AO22X1 U381 ( .IN1(a[47]), .IN2(n28), .IN3(a[48]), .IN4(n35), .Q(n348) );
  MUX21X1 U382 ( .IN1(n261), .IN2(n283), .S(n57), .Q(c[18]) );
  AO221X1 U383 ( .IN1(n13), .IN2(n326), .IN3(n12), .IN4(n327), .IN5(n349), .Q(
        n283) );
  AO22X1 U384 ( .IN1(n19), .IN2(n106), .IN3(n22), .IN4(n330), .Q(n349) );
  AO221X1 U385 ( .IN1(n24), .IN2(n331), .IN3(n19), .IN4(n329), .IN5(n350), .Q(
        n261) );
  AO22X1 U386 ( .IN1(n14), .IN2(n299), .IN3(n9), .IN4(n278), .Q(n350) );
  AO221X1 U387 ( .IN1(a[48]), .IN2(n32), .IN3(a[49]), .IN4(n40), .IN5(n351), 
        .Q(n278) );
  AO22X1 U388 ( .IN1(a[46]), .IN2(n27), .IN3(a[47]), .IN4(n34), .Q(n351) );
  MUX21X1 U389 ( .IN1(n265), .IN2(n340), .S(n57), .Q(c[17]) );
  AO221X1 U390 ( .IN1(n23), .IN2(n42), .IN3(n11), .IN4(n302), .IN5(n352), .Q(
        n340) );
  AO22X1 U391 ( .IN1(n16), .IN2(n306), .IN3(n20), .IN4(n50), .Q(n352) );
  AO221X1 U392 ( .IN1(n22), .IN2(n305), .IN3(n18), .IN4(n303), .IN5(n353), .Q(
        n265) );
  AO22X1 U393 ( .IN1(n15), .IN2(n307), .IN3(n12), .IN4(n287), .Q(n353) );
  AO221X1 U394 ( .IN1(a[47]), .IN2(n30), .IN3(a[48]), .IN4(n39), .IN5(n354), 
        .Q(n287) );
  AO22X1 U395 ( .IN1(a[45]), .IN2(n25), .IN3(a[46]), .IN4(n33), .Q(n354) );
  MUX21X1 U396 ( .IN1(n269), .IN2(n355), .S(n57), .Q(c[16]) );
  AO221X1 U397 ( .IN1(n21), .IN2(n314), .IN3(n20), .IN4(n313), .IN5(n356), .Q(
        n269) );
  AO22X1 U398 ( .IN1(n13), .IN2(n315), .IN3(n11), .IN4(n291), .Q(n356) );
  AO221X1 U399 ( .IN1(a[46]), .IN2(n29), .IN3(a[47]), .IN4(n38), .IN5(n357), 
        .Q(n291) );
  AO22X1 U400 ( .IN1(a[44]), .IN2(n26), .IN3(a[45]), .IN4(n36), .Q(n357) );
  AO221X1 U401 ( .IN1(n43), .IN2(n81), .IN3(n41), .IN4(n318), .IN5(n358), .Q(
        c[15]) );
  AO222X1 U402 ( .IN1(n46), .IN2(n86), .IN3(b[4]), .IN4(n273), .IN5(n49), 
        .IN6(n322), .Q(n358) );
  AO221X1 U403 ( .IN1(n24), .IN2(n321), .IN3(n17), .IN4(n319), .IN5(n359), .Q(
        n273) );
  AO22X1 U404 ( .IN1(n14), .IN2(n323), .IN3(n10), .IN4(n295), .Q(n359) );
  AO221X1 U405 ( .IN1(a[45]), .IN2(n31), .IN3(a[46]), .IN4(n37), .IN5(n360), 
        .Q(n295) );
  AO22X1 U406 ( .IN1(a[43]), .IN2(n28), .IN3(a[44]), .IN4(n35), .Q(n360) );
  AO221X1 U407 ( .IN1(n43), .IN2(n106), .IN3(n41), .IN4(n326), .IN5(n361), .Q(
        c[14]) );
  AO222X1 U408 ( .IN1(n46), .IN2(n111), .IN3(b[4]), .IN4(n277), .IN5(n49), 
        .IN6(n330), .Q(n361) );
  AO221X1 U409 ( .IN1(n23), .IN2(n329), .IN3(n19), .IN4(n327), .IN5(n362), .Q(
        n277) );
  AO22X1 U410 ( .IN1(n16), .IN2(n331), .IN3(n9), .IN4(n299), .Q(n362) );
  AO221X1 U411 ( .IN1(a[44]), .IN2(n32), .IN3(a[45]), .IN4(n40), .IN5(n363), 
        .Q(n299) );
  AO22X1 U412 ( .IN1(a[42]), .IN2(n27), .IN3(a[43]), .IN4(n34), .Q(n363) );
  AO221X1 U413 ( .IN1(b[4]), .IN2(n286), .IN3(n46), .IN4(n44), .IN5(n364), .Q(
        c[13]) );
  AO222X1 U414 ( .IN1(n41), .IN2(n306), .IN3(n43), .IN4(n50), .IN5(n49), .IN6(
        n42), .Q(n364) );
  AO221X1 U415 ( .IN1(a[23]), .IN2(n30), .IN3(a[24]), .IN4(n39), .IN5(n365), 
        .Q(n42) );
  AO22X1 U416 ( .IN1(a[21]), .IN2(n25), .IN3(a[22]), .IN4(n33), .Q(n365) );
  AO221X1 U417 ( .IN1(a[19]), .IN2(n29), .IN3(a[20]), .IN4(n38), .IN5(n366), 
        .Q(n50) );
  AO22X1 U418 ( .IN1(a[17]), .IN2(n26), .IN3(a[18]), .IN4(n36), .Q(n366) );
  AO221X1 U419 ( .IN1(a[27]), .IN2(n31), .IN3(a[28]), .IN4(n37), .IN5(n367), 
        .Q(n306) );
  AO22X1 U420 ( .IN1(a[25]), .IN2(n28), .IN3(a[26]), .IN4(n35), .Q(n367) );
  AO221X1 U421 ( .IN1(a[15]), .IN2(n32), .IN3(a[16]), .IN4(n40), .IN5(n368), 
        .Q(n44) );
  AO22X1 U422 ( .IN1(a[13]), .IN2(n27), .IN3(a[14]), .IN4(n34), .Q(n368) );
  AO221X1 U423 ( .IN1(n17), .IN2(n302), .IN3(n23), .IN4(n303), .IN5(n369), .Q(
        n286) );
  AO22X1 U424 ( .IN1(n15), .IN2(n305), .IN3(n12), .IN4(n307), .Q(n369) );
  AO221X1 U425 ( .IN1(a[43]), .IN2(n30), .IN3(a[44]), .IN4(n39), .IN5(n370), 
        .Q(n307) );
  AO22X1 U426 ( .IN1(a[41]), .IN2(n25), .IN3(a[42]), .IN4(n33), .Q(n370) );
  AO221X1 U427 ( .IN1(a[39]), .IN2(n29), .IN3(a[40]), .IN4(n38), .IN5(n371), 
        .Q(n305) );
  AO22X1 U428 ( .IN1(a[37]), .IN2(n26), .IN3(a[38]), .IN4(n36), .Q(n371) );
  AO221X1 U429 ( .IN1(a[35]), .IN2(n31), .IN3(a[36]), .IN4(n37), .IN5(n372), 
        .Q(n303) );
  AO22X1 U430 ( .IN1(a[33]), .IN2(n28), .IN3(a[34]), .IN4(n35), .Q(n372) );
  AO221X1 U431 ( .IN1(a[31]), .IN2(n32), .IN3(a[32]), .IN4(n40), .IN5(n373), 
        .Q(n302) );
  AO22X1 U432 ( .IN1(a[29]), .IN2(n27), .IN3(a[30]), .IN4(n34), .Q(n373) );
  AO221X1 U433 ( .IN1(n41), .IN2(n310), .IN3(n43), .IN4(n68), .IN5(n374), .Q(
        c[12]) );
  AO222X1 U434 ( .IN1(n49), .IN2(n64), .IN3(b[4]), .IN4(n290), .IN5(n46), 
        .IN6(n63), .Q(n374) );
  AO221X1 U435 ( .IN1(n22), .IN2(n313), .IN3(n18), .IN4(n311), .IN5(n375), .Q(
        n290) );
  AO22X1 U436 ( .IN1(n13), .IN2(n314), .IN3(n11), .IN4(n315), .Q(n375) );
  AO221X1 U437 ( .IN1(a[42]), .IN2(n30), .IN3(a[43]), .IN4(n39), .IN5(n376), 
        .Q(n315) );
  AO22X1 U438 ( .IN1(a[40]), .IN2(n25), .IN3(a[41]), .IN4(n33), .Q(n376) );
  AO221X1 U439 ( .IN1(a[38]), .IN2(n29), .IN3(a[39]), .IN4(n38), .IN5(n377), 
        .Q(n314) );
  AO22X1 U440 ( .IN1(a[36]), .IN2(n26), .IN3(a[37]), .IN4(n36), .Q(n377) );
  AO221X1 U441 ( .IN1(a[34]), .IN2(n31), .IN3(a[35]), .IN4(n37), .IN5(n378), 
        .Q(n313) );
  AO22X1 U442 ( .IN1(a[32]), .IN2(n28), .IN3(a[33]), .IN4(n35), .Q(n378) );
  AO221X1 U443 ( .IN1(b[4]), .IN2(n294), .IN3(n46), .IN4(n82), .IN5(n379), .Q(
        c[11]) );
  AO222X1 U444 ( .IN1(n41), .IN2(n322), .IN3(n43), .IN4(n86), .IN5(n49), .IN6(
        n81), .Q(n379) );
  AO221X1 U445 ( .IN1(a[21]), .IN2(n32), .IN3(a[22]), .IN4(n40), .IN5(n380), 
        .Q(n81) );
  AO22X1 U446 ( .IN1(a[19]), .IN2(n27), .IN3(a[20]), .IN4(n34), .Q(n380) );
  AO221X1 U447 ( .IN1(a[17]), .IN2(n30), .IN3(a[18]), .IN4(n39), .IN5(n381), 
        .Q(n86) );
  AO22X1 U448 ( .IN1(a[15]), .IN2(n25), .IN3(a[16]), .IN4(n33), .Q(n381) );
  AO221X1 U449 ( .IN1(n30), .IN2(a[25]), .IN3(n39), .IN4(a[26]), .IN5(n382), 
        .Q(n322) );
  AO22X1 U450 ( .IN1(a[23]), .IN2(n26), .IN3(a[24]), .IN4(n36), .Q(n382) );
  AO221X1 U451 ( .IN1(a[13]), .IN2(n29), .IN3(a[14]), .IN4(n38), .IN5(n383), 
        .Q(n82) );
  AO22X1 U452 ( .IN1(a[11]), .IN2(n28), .IN3(a[12]), .IN4(n35), .Q(n383) );
  AO221X1 U453 ( .IN1(n20), .IN2(n318), .IN3(n24), .IN4(n319), .IN5(n384), .Q(
        n294) );
  AO22X1 U454 ( .IN1(n16), .IN2(n321), .IN3(n10), .IN4(n323), .Q(n384) );
  AO221X1 U455 ( .IN1(a[41]), .IN2(n31), .IN3(a[42]), .IN4(n37), .IN5(n385), 
        .Q(n323) );
  AO22X1 U456 ( .IN1(a[39]), .IN2(n27), .IN3(a[40]), .IN4(n34), .Q(n385) );
  AO221X1 U457 ( .IN1(a[37]), .IN2(n32), .IN3(a[38]), .IN4(n40), .IN5(n386), 
        .Q(n321) );
  AO22X1 U458 ( .IN1(a[35]), .IN2(n25), .IN3(a[36]), .IN4(n33), .Q(n386) );
  AO221X1 U459 ( .IN1(a[33]), .IN2(n30), .IN3(a[34]), .IN4(n39), .IN5(n387), 
        .Q(n319) );
  AO22X1 U460 ( .IN1(a[31]), .IN2(n26), .IN3(a[32]), .IN4(n36), .Q(n387) );
  AO221X1 U461 ( .IN1(a[29]), .IN2(n29), .IN3(a[30]), .IN4(n38), .IN5(n388), 
        .Q(n318) );
  AO22X1 U462 ( .IN1(a[27]), .IN2(n28), .IN3(a[28]), .IN4(n35), .Q(n388) );
  AO221X1 U463 ( .IN1(b[4]), .IN2(n298), .IN3(n46), .IN4(n107), .IN5(n389), 
        .Q(c[10]) );
  AO222X1 U464 ( .IN1(n41), .IN2(n330), .IN3(n43), .IN4(n111), .IN5(n49), 
        .IN6(n106), .Q(n389) );
  AO221X1 U465 ( .IN1(a[20]), .IN2(n31), .IN3(a[21]), .IN4(n37), .IN5(n390), 
        .Q(n106) );
  AO22X1 U466 ( .IN1(a[18]), .IN2(n27), .IN3(a[19]), .IN4(n34), .Q(n390) );
  AO221X1 U467 ( .IN1(a[16]), .IN2(n32), .IN3(a[17]), .IN4(n40), .IN5(n391), 
        .Q(n111) );
  AO22X1 U468 ( .IN1(a[14]), .IN2(n25), .IN3(a[15]), .IN4(n33), .Q(n391) );
  AO221X1 U469 ( .IN1(a[24]), .IN2(n30), .IN3(n38), .IN4(a[25]), .IN5(n392), 
        .Q(n330) );
  AO22X1 U470 ( .IN1(a[22]), .IN2(n26), .IN3(a[23]), .IN4(n36), .Q(n392) );
  AO221X1 U471 ( .IN1(a[12]), .IN2(n29), .IN3(a[13]), .IN4(n39), .IN5(n393), 
        .Q(n107) );
  AO22X1 U472 ( .IN1(a[10]), .IN2(n28), .IN3(a[11]), .IN4(n35), .Q(n393) );
  AO221X1 U473 ( .IN1(n19), .IN2(n326), .IN3(n23), .IN4(n327), .IN5(n394), .Q(
        n298) );
  AO22X1 U474 ( .IN1(n15), .IN2(n329), .IN3(n9), .IN4(n331), .Q(n394) );
  AO221X1 U475 ( .IN1(a[40]), .IN2(n31), .IN3(a[41]), .IN4(n38), .IN5(n395), 
        .Q(n331) );
  AO22X1 U476 ( .IN1(a[38]), .IN2(n27), .IN3(a[39]), .IN4(n34), .Q(n395) );
  AO221X1 U477 ( .IN1(a[36]), .IN2(n32), .IN3(a[37]), .IN4(n37), .IN5(n396), 
        .Q(n329) );
  AO22X1 U478 ( .IN1(a[34]), .IN2(n25), .IN3(a[35]), .IN4(n33), .Q(n396) );
  AO221X1 U479 ( .IN1(a[32]), .IN2(n30), .IN3(a[33]), .IN4(n40), .IN5(n397), 
        .Q(n327) );
  AO22X1 U480 ( .IN1(a[30]), .IN2(n26), .IN3(a[31]), .IN4(n36), .Q(n397) );
  AO221X1 U481 ( .IN1(a[27]), .IN2(n36), .IN3(n25), .IN4(a[26]), .IN5(n398), 
        .Q(n326) );
  AO22X1 U482 ( .IN1(a[29]), .IN2(n40), .IN3(a[28]), .IN4(n32), .Q(n398) );
  AO221X1 U483 ( .IN1(b[4]), .IN2(n355), .IN3(n43), .IN4(n193), .IN5(n399), 
        .Q(c[0]) );
  AO222X1 U484 ( .IN1(n49), .IN2(n66), .IN3(n46), .IN4(n400), .IN5(n41), .IN6(
        n63), .Q(n399) );
  AO221X1 U485 ( .IN1(a[14]), .IN2(n29), .IN3(a[15]), .IN4(n39), .IN5(n401), 
        .Q(n63) );
  AO22X1 U486 ( .IN1(a[12]), .IN2(n28), .IN3(a[13]), .IN4(n35), .Q(n401) );
  AND2X1 U487 ( .IN1(n11), .IN2(n57), .Q(n41) );
  AO221X1 U488 ( .IN1(a[2]), .IN2(n31), .IN3(a[3]), .IN4(n38), .IN5(n402), .Q(
        n400) );
  AO22X1 U489 ( .IN1(a[0]), .IN2(n27), .IN3(a[1]), .IN4(n34), .Q(n402) );
  INVX0 U490 ( .INP(n51), .ZN(n46) );
  NAND2X0 U491 ( .IN1(n18), .IN2(n57), .QN(n51) );
  AO221X1 U492 ( .IN1(a[10]), .IN2(n32), .IN3(a[11]), .IN4(n37), .IN5(n403), 
        .Q(n66) );
  AO22X1 U493 ( .IN1(a[8]), .IN2(n25), .IN3(a[9]), .IN4(n33), .Q(n403) );
  AND2X1 U494 ( .IN1(n14), .IN2(n57), .Q(n49) );
  AO221X1 U495 ( .IN1(a[6]), .IN2(n30), .IN3(a[7]), .IN4(n40), .IN5(n404), .Q(
        n193) );
  AO22X1 U496 ( .IN1(a[4]), .IN2(n26), .IN3(a[5]), .IN4(n36), .Q(n404) );
  AND2X1 U497 ( .IN1(n22), .IN2(n57), .Q(n43) );
  AO221X1 U498 ( .IN1(n21), .IN2(n64), .IN3(n17), .IN4(n68), .IN5(n405), .Q(
        n355) );
  AO22X1 U499 ( .IN1(n12), .IN2(n311), .IN3(n14), .IN4(n310), .Q(n405) );
  AO221X1 U500 ( .IN1(n29), .IN2(a[26]), .IN3(n37), .IN4(a[27]), .IN5(n406), 
        .Q(n310) );
  AO22X1 U501 ( .IN1(a[24]), .IN2(n28), .IN3(a[25]), .IN4(n35), .Q(n406) );
  AO221X1 U502 ( .IN1(a[30]), .IN2(n29), .IN3(a[31]), .IN4(n39), .IN5(n407), 
        .Q(n311) );
  AO22X1 U503 ( .IN1(a[28]), .IN2(n27), .IN3(a[29]), .IN4(n33), .Q(n407) );
  INVX0 U504 ( .INP(b[3]), .ZN(n58) );
  AO221X1 U505 ( .IN1(a[18]), .IN2(n31), .IN3(a[19]), .IN4(n38), .IN5(n408), 
        .Q(n68) );
  AO22X1 U506 ( .IN1(a[16]), .IN2(n28), .IN3(a[17]), .IN4(n36), .Q(n408) );
  AO221X1 U507 ( .IN1(a[22]), .IN2(n32), .IN3(a[23]), .IN4(n37), .IN5(n409), 
        .Q(n64) );
  AO22X1 U508 ( .IN1(a[20]), .IN2(n27), .IN3(a[21]), .IN4(n35), .Q(n409) );
  INVX0 U509 ( .INP(b[0]), .ZN(n410) );
  INVX0 U510 ( .INP(b[1]), .ZN(n411) );
  INVX0 U511 ( .INP(b[2]), .ZN(n105) );
endmodule


module add_N_in_N32_0_DW01_add_0 ( A, B, CI, SUM, CO );
  input [32:0] A;
  input [32:0] B;
  output [32:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [31:2] carry;

  FADDX1 U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .S(SUM[31]) );
  FADDX1 U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  FADDX1 U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  FADDX1 U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  FADDX1 U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  FADDX1 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  FADDX1 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FADDX1 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FADDX1 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FADDX1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FADDX1 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FADDX1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FADDX1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FADDX1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FADDX1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FADDX1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FADDX1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FADDX1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FADDX1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FADDX1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FADDX1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FADDX1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FADDX1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FADDX1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  FADDX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  FADDX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  FADDX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  FADDX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  FADDX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  FADDX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  FADDX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2X1 U1 ( .IN1(A[0]), .IN2(B[0]), .Q(n1) );
  XOR2X1 U2 ( .IN1(A[0]), .IN2(B[0]), .Q(SUM[0]) );
endmodule


module add_N_in_N32_0 ( a, b, c );
  input [32:0] a;
  input [32:0] b;
  output [32:0] c;


  add_N_in_N32_0_DW01_add_0 add_230 ( .A(a), .B(b), .CI(1'b0), .SUM(c) );
endmodule


module add_N_N32_0 ( a, b, c );
  input [31:0] a;
  input [31:0] b;
  output [32:0] c;


  add_N_in_N32_0 a1 ( .a({1'b0, a}), .b({1'b0, b}), .c(c) );
endmodule


module ppu_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61;

  INVX0 U1 ( .INP(B[0]), .ZN(n61) );
  AND2X1 U2 ( .IN1(n60), .IN2(n61), .Q(n1) );
  AND2X1 U3 ( .IN1(n59), .IN2(n1), .Q(n2) );
  AND2X1 U4 ( .IN1(n58), .IN2(n2), .Q(n3) );
  AND2X1 U5 ( .IN1(n57), .IN2(n3), .Q(n4) );
  AND2X1 U6 ( .IN1(n56), .IN2(n4), .Q(n5) );
  AND2X1 U7 ( .IN1(n55), .IN2(n5), .Q(n6) );
  AND2X1 U8 ( .IN1(n54), .IN2(n6), .Q(n7) );
  AND2X1 U9 ( .IN1(n53), .IN2(n7), .Q(n8) );
  AND2X1 U10 ( .IN1(n52), .IN2(n8), .Q(n9) );
  AND2X1 U11 ( .IN1(n51), .IN2(n9), .Q(n10) );
  AND2X1 U12 ( .IN1(n50), .IN2(n10), .Q(n11) );
  AND2X1 U13 ( .IN1(n49), .IN2(n11), .Q(n12) );
  AND2X1 U14 ( .IN1(n48), .IN2(n12), .Q(n13) );
  AND2X1 U15 ( .IN1(n47), .IN2(n13), .Q(n14) );
  AND2X1 U16 ( .IN1(n46), .IN2(n14), .Q(n15) );
  AND2X1 U17 ( .IN1(n45), .IN2(n15), .Q(n16) );
  AND2X1 U18 ( .IN1(n44), .IN2(n16), .Q(n17) );
  AND2X1 U19 ( .IN1(n43), .IN2(n17), .Q(n18) );
  AND2X1 U20 ( .IN1(n42), .IN2(n18), .Q(n19) );
  AND2X1 U21 ( .IN1(n41), .IN2(n19), .Q(n20) );
  AND2X1 U22 ( .IN1(n40), .IN2(n20), .Q(n21) );
  AND2X1 U23 ( .IN1(n39), .IN2(n21), .Q(n22) );
  AND2X1 U24 ( .IN1(n38), .IN2(n22), .Q(n23) );
  AND2X1 U25 ( .IN1(n37), .IN2(n23), .Q(n24) );
  AND2X1 U26 ( .IN1(n36), .IN2(n24), .Q(n25) );
  AND2X1 U27 ( .IN1(n35), .IN2(n25), .Q(n26) );
  AND2X1 U28 ( .IN1(n34), .IN2(n26), .Q(n27) );
  AND2X1 U29 ( .IN1(n33), .IN2(n27), .Q(n28) );
  AND2X1 U30 ( .IN1(n32), .IN2(n28), .Q(n29) );
  NAND2X1 U31 ( .IN1(n31), .IN2(n29), .QN(n30) );
  INVX0 U32 ( .INP(B[1]), .ZN(n60) );
  INVX0 U33 ( .INP(B[2]), .ZN(n59) );
  INVX0 U34 ( .INP(B[3]), .ZN(n58) );
  INVX0 U35 ( .INP(B[4]), .ZN(n57) );
  INVX0 U36 ( .INP(B[5]), .ZN(n56) );
  INVX0 U37 ( .INP(B[6]), .ZN(n55) );
  INVX0 U38 ( .INP(B[7]), .ZN(n54) );
  INVX0 U39 ( .INP(B[8]), .ZN(n53) );
  INVX0 U40 ( .INP(B[9]), .ZN(n52) );
  INVX0 U41 ( .INP(B[10]), .ZN(n51) );
  INVX0 U42 ( .INP(B[11]), .ZN(n50) );
  INVX0 U43 ( .INP(B[12]), .ZN(n49) );
  INVX0 U44 ( .INP(B[13]), .ZN(n48) );
  INVX0 U45 ( .INP(B[14]), .ZN(n47) );
  INVX0 U46 ( .INP(B[15]), .ZN(n46) );
  INVX0 U47 ( .INP(B[16]), .ZN(n45) );
  INVX0 U48 ( .INP(B[17]), .ZN(n44) );
  INVX0 U49 ( .INP(B[18]), .ZN(n43) );
  INVX0 U50 ( .INP(B[19]), .ZN(n42) );
  INVX0 U51 ( .INP(B[20]), .ZN(n41) );
  INVX0 U52 ( .INP(B[21]), .ZN(n40) );
  INVX0 U53 ( .INP(B[22]), .ZN(n39) );
  INVX0 U54 ( .INP(B[23]), .ZN(n38) );
  INVX0 U55 ( .INP(B[24]), .ZN(n37) );
  INVX0 U56 ( .INP(B[25]), .ZN(n36) );
  INVX0 U57 ( .INP(B[26]), .ZN(n35) );
  INVX0 U58 ( .INP(B[27]), .ZN(n34) );
  INVX0 U59 ( .INP(B[28]), .ZN(n33) );
  INVX0 U60 ( .INP(B[29]), .ZN(n32) );
  INVX0 U61 ( .INP(B[30]), .ZN(n31) );
  XOR2X1 U62 ( .IN1(B[31]), .IN2(n30), .Q(DIFF[31]) );
  XOR2X1 U63 ( .IN1(n31), .IN2(n29), .Q(DIFF[30]) );
  XOR2X1 U64 ( .IN1(n32), .IN2(n28), .Q(DIFF[29]) );
  XOR2X1 U65 ( .IN1(n33), .IN2(n27), .Q(DIFF[28]) );
  XOR2X1 U66 ( .IN1(n34), .IN2(n26), .Q(DIFF[27]) );
  XOR2X1 U67 ( .IN1(n35), .IN2(n25), .Q(DIFF[26]) );
  XOR2X1 U68 ( .IN1(n36), .IN2(n24), .Q(DIFF[25]) );
  XOR2X1 U69 ( .IN1(n37), .IN2(n23), .Q(DIFF[24]) );
  XOR2X1 U70 ( .IN1(n38), .IN2(n22), .Q(DIFF[23]) );
  XOR2X1 U71 ( .IN1(n39), .IN2(n21), .Q(DIFF[22]) );
  XOR2X1 U72 ( .IN1(n40), .IN2(n20), .Q(DIFF[21]) );
  XOR2X1 U73 ( .IN1(n41), .IN2(n19), .Q(DIFF[20]) );
  XOR2X1 U74 ( .IN1(n42), .IN2(n18), .Q(DIFF[19]) );
  XOR2X1 U75 ( .IN1(n43), .IN2(n17), .Q(DIFF[18]) );
  XOR2X1 U76 ( .IN1(n44), .IN2(n16), .Q(DIFF[17]) );
  XOR2X1 U77 ( .IN1(n45), .IN2(n15), .Q(DIFF[16]) );
  XOR2X1 U78 ( .IN1(n46), .IN2(n14), .Q(DIFF[15]) );
  XOR2X1 U79 ( .IN1(n47), .IN2(n13), .Q(DIFF[14]) );
  XOR2X1 U80 ( .IN1(n48), .IN2(n12), .Q(DIFF[13]) );
  XOR2X1 U81 ( .IN1(n49), .IN2(n11), .Q(DIFF[12]) );
  XOR2X1 U82 ( .IN1(n50), .IN2(n10), .Q(DIFF[11]) );
  XOR2X1 U83 ( .IN1(n51), .IN2(n9), .Q(DIFF[10]) );
  XOR2X1 U84 ( .IN1(n52), .IN2(n8), .Q(DIFF[9]) );
  XOR2X1 U85 ( .IN1(n53), .IN2(n7), .Q(DIFF[8]) );
  XOR2X1 U86 ( .IN1(n54), .IN2(n6), .Q(DIFF[7]) );
  XOR2X1 U87 ( .IN1(n55), .IN2(n5), .Q(DIFF[6]) );
  XOR2X1 U88 ( .IN1(n56), .IN2(n4), .Q(DIFF[5]) );
  XOR2X1 U89 ( .IN1(n57), .IN2(n3), .Q(DIFF[4]) );
  XOR2X1 U90 ( .IN1(n58), .IN2(n2), .Q(DIFF[3]) );
  XOR2X1 U91 ( .IN1(n59), .IN2(n1), .Q(DIFF[2]) );
  XOR2X1 U92 ( .IN1(n60), .IN2(n61), .Q(DIFF[1]) );
endmodule


module ppu_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61;
  assign DIFF[0] = B[0];

  AND2X1 U1 ( .IN1(n60), .IN2(n61), .Q(n1) );
  AND2X1 U2 ( .IN1(n59), .IN2(n1), .Q(n2) );
  AND2X1 U3 ( .IN1(n58), .IN2(n2), .Q(n3) );
  AND2X1 U4 ( .IN1(n57), .IN2(n3), .Q(n4) );
  AND2X1 U5 ( .IN1(n56), .IN2(n4), .Q(n5) );
  AND2X1 U6 ( .IN1(n55), .IN2(n5), .Q(n6) );
  AND2X1 U7 ( .IN1(n54), .IN2(n6), .Q(n7) );
  AND2X1 U8 ( .IN1(n53), .IN2(n7), .Q(n8) );
  AND2X1 U9 ( .IN1(n52), .IN2(n8), .Q(n9) );
  AND2X1 U10 ( .IN1(n51), .IN2(n9), .Q(n10) );
  AND2X1 U11 ( .IN1(n50), .IN2(n10), .Q(n11) );
  AND2X1 U12 ( .IN1(n49), .IN2(n11), .Q(n12) );
  AND2X1 U13 ( .IN1(n48), .IN2(n12), .Q(n13) );
  AND2X1 U14 ( .IN1(n47), .IN2(n13), .Q(n14) );
  AND2X1 U15 ( .IN1(n46), .IN2(n14), .Q(n15) );
  AND2X1 U16 ( .IN1(n45), .IN2(n15), .Q(n16) );
  AND2X1 U17 ( .IN1(n44), .IN2(n16), .Q(n17) );
  AND2X1 U18 ( .IN1(n43), .IN2(n17), .Q(n18) );
  AND2X1 U19 ( .IN1(n42), .IN2(n18), .Q(n19) );
  AND2X1 U20 ( .IN1(n41), .IN2(n19), .Q(n20) );
  AND2X1 U21 ( .IN1(n40), .IN2(n20), .Q(n21) );
  AND2X1 U22 ( .IN1(n39), .IN2(n21), .Q(n22) );
  AND2X1 U23 ( .IN1(n38), .IN2(n22), .Q(n23) );
  AND2X1 U24 ( .IN1(n37), .IN2(n23), .Q(n24) );
  AND2X1 U25 ( .IN1(n36), .IN2(n24), .Q(n25) );
  AND2X1 U26 ( .IN1(n35), .IN2(n25), .Q(n26) );
  AND2X1 U27 ( .IN1(n34), .IN2(n26), .Q(n27) );
  AND2X1 U28 ( .IN1(n33), .IN2(n27), .Q(n28) );
  AND2X1 U29 ( .IN1(n32), .IN2(n28), .Q(n29) );
  INVX0 U30 ( .INP(B[1]), .ZN(n60) );
  INVX0 U31 ( .INP(B[2]), .ZN(n59) );
  INVX0 U32 ( .INP(B[3]), .ZN(n58) );
  INVX0 U33 ( .INP(B[4]), .ZN(n57) );
  INVX0 U34 ( .INP(B[5]), .ZN(n56) );
  INVX0 U35 ( .INP(B[6]), .ZN(n55) );
  INVX0 U36 ( .INP(B[7]), .ZN(n54) );
  INVX0 U37 ( .INP(B[8]), .ZN(n53) );
  INVX0 U38 ( .INP(B[9]), .ZN(n52) );
  INVX0 U39 ( .INP(B[10]), .ZN(n51) );
  INVX0 U40 ( .INP(B[11]), .ZN(n50) );
  INVX0 U41 ( .INP(B[12]), .ZN(n49) );
  INVX0 U42 ( .INP(B[13]), .ZN(n48) );
  INVX0 U43 ( .INP(B[14]), .ZN(n47) );
  INVX0 U44 ( .INP(B[15]), .ZN(n46) );
  INVX0 U45 ( .INP(B[16]), .ZN(n45) );
  INVX0 U46 ( .INP(B[17]), .ZN(n44) );
  INVX0 U47 ( .INP(B[18]), .ZN(n43) );
  INVX0 U48 ( .INP(B[19]), .ZN(n42) );
  INVX0 U49 ( .INP(B[20]), .ZN(n41) );
  INVX0 U50 ( .INP(B[21]), .ZN(n40) );
  INVX0 U51 ( .INP(B[22]), .ZN(n39) );
  INVX0 U52 ( .INP(B[23]), .ZN(n38) );
  INVX0 U53 ( .INP(B[24]), .ZN(n37) );
  INVX0 U54 ( .INP(B[25]), .ZN(n36) );
  INVX0 U55 ( .INP(B[26]), .ZN(n35) );
  INVX0 U56 ( .INP(B[27]), .ZN(n34) );
  INVX0 U57 ( .INP(B[28]), .ZN(n33) );
  INVX0 U58 ( .INP(B[29]), .ZN(n32) );
  INVX0 U59 ( .INP(B[30]), .ZN(n31) );
  XOR2X1 U60 ( .IN1(B[31]), .IN2(n30), .Q(DIFF[31]) );
  NAND2X1 U61 ( .IN1(n31), .IN2(n29), .QN(n30) );
  INVX0 U62 ( .INP(B[0]), .ZN(n61) );
  XOR2X1 U63 ( .IN1(n31), .IN2(n29), .Q(DIFF[30]) );
  XOR2X1 U64 ( .IN1(n32), .IN2(n28), .Q(DIFF[29]) );
  XOR2X1 U65 ( .IN1(n33), .IN2(n27), .Q(DIFF[28]) );
  XOR2X1 U66 ( .IN1(n34), .IN2(n26), .Q(DIFF[27]) );
  XOR2X1 U67 ( .IN1(n35), .IN2(n25), .Q(DIFF[26]) );
  XOR2X1 U68 ( .IN1(n36), .IN2(n24), .Q(DIFF[25]) );
  XOR2X1 U69 ( .IN1(n37), .IN2(n23), .Q(DIFF[24]) );
  XOR2X1 U70 ( .IN1(n38), .IN2(n22), .Q(DIFF[23]) );
  XOR2X1 U71 ( .IN1(n39), .IN2(n21), .Q(DIFF[22]) );
  XOR2X1 U72 ( .IN1(n40), .IN2(n20), .Q(DIFF[21]) );
  XOR2X1 U73 ( .IN1(n41), .IN2(n19), .Q(DIFF[20]) );
  XOR2X1 U74 ( .IN1(n42), .IN2(n18), .Q(DIFF[19]) );
  XOR2X1 U75 ( .IN1(n43), .IN2(n17), .Q(DIFF[18]) );
  XOR2X1 U76 ( .IN1(n44), .IN2(n16), .Q(DIFF[17]) );
  XOR2X1 U77 ( .IN1(n45), .IN2(n15), .Q(DIFF[16]) );
  XOR2X1 U78 ( .IN1(n46), .IN2(n14), .Q(DIFF[15]) );
  XOR2X1 U79 ( .IN1(n47), .IN2(n13), .Q(DIFF[14]) );
  XOR2X1 U80 ( .IN1(n48), .IN2(n12), .Q(DIFF[13]) );
  XOR2X1 U81 ( .IN1(n49), .IN2(n11), .Q(DIFF[12]) );
  XOR2X1 U82 ( .IN1(n50), .IN2(n10), .Q(DIFF[11]) );
  XOR2X1 U83 ( .IN1(n51), .IN2(n9), .Q(DIFF[10]) );
  XOR2X1 U84 ( .IN1(n52), .IN2(n8), .Q(DIFF[9]) );
  XOR2X1 U85 ( .IN1(n53), .IN2(n7), .Q(DIFF[8]) );
  XOR2X1 U86 ( .IN1(n54), .IN2(n6), .Q(DIFF[7]) );
  XOR2X1 U87 ( .IN1(n55), .IN2(n5), .Q(DIFF[6]) );
  XOR2X1 U88 ( .IN1(n56), .IN2(n4), .Q(DIFF[5]) );
  XOR2X1 U89 ( .IN1(n57), .IN2(n3), .Q(DIFF[4]) );
  XOR2X1 U90 ( .IN1(n58), .IN2(n2), .Q(DIFF[3]) );
  XOR2X1 U91 ( .IN1(n59), .IN2(n1), .Q(DIFF[2]) );
  XOR2X1 U92 ( .IN1(n60), .IN2(n61), .Q(DIFF[1]) );
endmodule


module ppu_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61;
  assign DIFF[0] = B[0];

  AND2X1 U1 ( .IN1(n60), .IN2(n61), .Q(n1) );
  AND2X1 U2 ( .IN1(n59), .IN2(n1), .Q(n2) );
  AND2X1 U3 ( .IN1(n58), .IN2(n2), .Q(n3) );
  AND2X1 U4 ( .IN1(n57), .IN2(n3), .Q(n4) );
  AND2X1 U5 ( .IN1(n56), .IN2(n4), .Q(n5) );
  AND2X1 U6 ( .IN1(n55), .IN2(n5), .Q(n6) );
  AND2X1 U7 ( .IN1(n54), .IN2(n6), .Q(n7) );
  AND2X1 U8 ( .IN1(n53), .IN2(n7), .Q(n8) );
  AND2X1 U9 ( .IN1(n52), .IN2(n8), .Q(n9) );
  AND2X1 U10 ( .IN1(n51), .IN2(n9), .Q(n10) );
  AND2X1 U11 ( .IN1(n50), .IN2(n10), .Q(n11) );
  AND2X1 U12 ( .IN1(n49), .IN2(n11), .Q(n12) );
  AND2X1 U13 ( .IN1(n48), .IN2(n12), .Q(n13) );
  AND2X1 U14 ( .IN1(n47), .IN2(n13), .Q(n14) );
  AND2X1 U15 ( .IN1(n46), .IN2(n14), .Q(n15) );
  AND2X1 U16 ( .IN1(n45), .IN2(n15), .Q(n16) );
  AND2X1 U17 ( .IN1(n44), .IN2(n16), .Q(n17) );
  AND2X1 U18 ( .IN1(n43), .IN2(n17), .Q(n18) );
  AND2X1 U19 ( .IN1(n42), .IN2(n18), .Q(n19) );
  AND2X1 U20 ( .IN1(n41), .IN2(n19), .Q(n20) );
  AND2X1 U21 ( .IN1(n40), .IN2(n20), .Q(n21) );
  AND2X1 U22 ( .IN1(n39), .IN2(n21), .Q(n22) );
  AND2X1 U23 ( .IN1(n38), .IN2(n22), .Q(n23) );
  AND2X1 U24 ( .IN1(n37), .IN2(n23), .Q(n24) );
  AND2X1 U25 ( .IN1(n36), .IN2(n24), .Q(n25) );
  AND2X1 U26 ( .IN1(n35), .IN2(n25), .Q(n26) );
  AND2X1 U27 ( .IN1(n34), .IN2(n26), .Q(n27) );
  AND2X1 U28 ( .IN1(n33), .IN2(n27), .Q(n28) );
  AND2X1 U29 ( .IN1(n32), .IN2(n28), .Q(n29) );
  INVX0 U30 ( .INP(B[1]), .ZN(n60) );
  INVX0 U31 ( .INP(B[2]), .ZN(n59) );
  INVX0 U32 ( .INP(B[3]), .ZN(n58) );
  INVX0 U33 ( .INP(B[4]), .ZN(n57) );
  INVX0 U34 ( .INP(B[5]), .ZN(n56) );
  INVX0 U35 ( .INP(B[6]), .ZN(n55) );
  INVX0 U36 ( .INP(B[7]), .ZN(n54) );
  INVX0 U37 ( .INP(B[8]), .ZN(n53) );
  INVX0 U38 ( .INP(B[9]), .ZN(n52) );
  INVX0 U39 ( .INP(B[10]), .ZN(n51) );
  INVX0 U40 ( .INP(B[11]), .ZN(n50) );
  INVX0 U41 ( .INP(B[12]), .ZN(n49) );
  INVX0 U42 ( .INP(B[13]), .ZN(n48) );
  INVX0 U43 ( .INP(B[14]), .ZN(n47) );
  INVX0 U44 ( .INP(B[15]), .ZN(n46) );
  INVX0 U45 ( .INP(B[16]), .ZN(n45) );
  INVX0 U46 ( .INP(B[17]), .ZN(n44) );
  INVX0 U47 ( .INP(B[18]), .ZN(n43) );
  INVX0 U48 ( .INP(B[19]), .ZN(n42) );
  INVX0 U49 ( .INP(B[20]), .ZN(n41) );
  INVX0 U50 ( .INP(B[21]), .ZN(n40) );
  INVX0 U51 ( .INP(B[22]), .ZN(n39) );
  INVX0 U52 ( .INP(B[23]), .ZN(n38) );
  INVX0 U53 ( .INP(B[24]), .ZN(n37) );
  INVX0 U54 ( .INP(B[25]), .ZN(n36) );
  INVX0 U55 ( .INP(B[26]), .ZN(n35) );
  INVX0 U56 ( .INP(B[27]), .ZN(n34) );
  INVX0 U57 ( .INP(B[28]), .ZN(n33) );
  INVX0 U58 ( .INP(B[29]), .ZN(n32) );
  INVX0 U59 ( .INP(B[30]), .ZN(n31) );
  XOR2X1 U60 ( .IN1(B[31]), .IN2(n30), .Q(DIFF[31]) );
  NAND2X1 U61 ( .IN1(n31), .IN2(n29), .QN(n30) );
  INVX0 U62 ( .INP(B[0]), .ZN(n61) );
  XOR2X1 U63 ( .IN1(n31), .IN2(n29), .Q(DIFF[30]) );
  XOR2X1 U64 ( .IN1(n32), .IN2(n28), .Q(DIFF[29]) );
  XOR2X1 U65 ( .IN1(n33), .IN2(n27), .Q(DIFF[28]) );
  XOR2X1 U66 ( .IN1(n34), .IN2(n26), .Q(DIFF[27]) );
  XOR2X1 U67 ( .IN1(n35), .IN2(n25), .Q(DIFF[26]) );
  XOR2X1 U68 ( .IN1(n36), .IN2(n24), .Q(DIFF[25]) );
  XOR2X1 U69 ( .IN1(n37), .IN2(n23), .Q(DIFF[24]) );
  XOR2X1 U70 ( .IN1(n38), .IN2(n22), .Q(DIFF[23]) );
  XOR2X1 U71 ( .IN1(n39), .IN2(n21), .Q(DIFF[22]) );
  XOR2X1 U72 ( .IN1(n40), .IN2(n20), .Q(DIFF[21]) );
  XOR2X1 U73 ( .IN1(n41), .IN2(n19), .Q(DIFF[20]) );
  XOR2X1 U74 ( .IN1(n42), .IN2(n18), .Q(DIFF[19]) );
  XOR2X1 U75 ( .IN1(n43), .IN2(n17), .Q(DIFF[18]) );
  XOR2X1 U76 ( .IN1(n44), .IN2(n16), .Q(DIFF[17]) );
  XOR2X1 U77 ( .IN1(n45), .IN2(n15), .Q(DIFF[16]) );
  XOR2X1 U78 ( .IN1(n46), .IN2(n14), .Q(DIFF[15]) );
  XOR2X1 U79 ( .IN1(n47), .IN2(n13), .Q(DIFF[14]) );
  XOR2X1 U80 ( .IN1(n48), .IN2(n12), .Q(DIFF[13]) );
  XOR2X1 U81 ( .IN1(n49), .IN2(n11), .Q(DIFF[12]) );
  XOR2X1 U82 ( .IN1(n50), .IN2(n10), .Q(DIFF[11]) );
  XOR2X1 U83 ( .IN1(n51), .IN2(n9), .Q(DIFF[10]) );
  XOR2X1 U84 ( .IN1(n52), .IN2(n8), .Q(DIFF[9]) );
  XOR2X1 U85 ( .IN1(n53), .IN2(n7), .Q(DIFF[8]) );
  XOR2X1 U86 ( .IN1(n54), .IN2(n6), .Q(DIFF[7]) );
  XOR2X1 U87 ( .IN1(n55), .IN2(n5), .Q(DIFF[6]) );
  XOR2X1 U88 ( .IN1(n56), .IN2(n4), .Q(DIFF[5]) );
  XOR2X1 U89 ( .IN1(n57), .IN2(n3), .Q(DIFF[4]) );
  XOR2X1 U90 ( .IN1(n58), .IN2(n2), .Q(DIFF[3]) );
  XOR2X1 U91 ( .IN1(n59), .IN2(n1), .Q(DIFF[2]) );
  XOR2X1 U92 ( .IN1(n60), .IN2(n61), .Q(DIFF[1]) );
endmodule


module ppu ( in1, in2, out, inf, zero );
  input [31:0] in1;
  input [31:0] in2;
  output [31:0] out;
  output inf, zero;
  wire   N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27,
         N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41,
         N42, N43, N44, N45, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56,
         N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70,
         N71, N72, N73, N74, N75, N76, N77, N78, rc1, rc2, lrc, src,
         LOD_in_31_, rnd_ulp_0_, N87, N88, N89, N90, N91, N92, N93, N94, N95,
         N96, N97, N98, N99, N100, N101, N102, N103, N104, N105, N106, N107,
         N108, N109, N110, N111, N112, N113, N114, N115, N116, N117, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22,
         SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24,
         SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26,
         SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28,
         SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30,
         SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32,
         SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34,
         SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36;
  wire   [31:0] xin1;
  wire   [31:0] xin2;
  wire   [4:0] regime1;
  wire   [1:0] e1;
  wire   [29:0] mant1;
  wire   [4:0] regime2;
  wire   [1:0] e2;
  wire   [29:0] mant2;
  wire   [4:0] lr;
  wire   [4:0] sr;
  wire   [1:0] le;
  wire   [1:0] se;
  wire   [30:0] lm;
  wire   [30:0] sm;
  wire   [5:0] lr_N;
  wire   [5:0] sr_N;
  wire   [7:0] diff;
  wire   [4:0] exp_diff;
  wire   [31:0] DSR_right_out;
  wire   [32:0] add_m;
  wire   [4:0] left_shift;
  wire   [31:0] DSR_left_out_t;
  wire   [30:0] DSR_left_out;
  wire   [8:0] le_o_tmp;
  wire   [7:0] le_o;
  wire   [1:0] e_o;
  wire   [4:0] r_o;
  wire   [66:0] tmp1_o;
  wire   [31:0] tmp1_o_rnd_ulp;
  wire   [31:0] tmp1_o_rnd;

  data_extract_v1_N32_es2_0 uut_de1 ( .in(xin1), .rc(rc1), .regime(regime1), 
        .exp(e1), .mant(mant1) );
  data_extract_v1_N32_es2_1 uut_de2 ( .in(xin2), .rc(rc2), .regime(regime2), 
        .exp(e2), .mant(mant2) );
  abs_regime_N5_0 uut_abs_regime1 ( .rc(lrc), .regime(lr), .regime_N(lr_N) );
  abs_regime_N5_1 uut_abs_regime2 ( .rc(src), .regime(sr), .regime_N(sr_N) );
  sub_N_N8_0 uut_ediff ( .a({lr_N, le}), .b({sr_N, se}), .c({
        SYNOPSYS_UNCONNECTED_1, diff}) );
  DSR_right_N_S_N32_S5 dsr1 ( .a({sm, 1'b0}), .b(exp_diff), .c(DSR_right_out)
         );
  add_sub_N_N32 uut_add_sub_N ( .op(n72), .a({lm, 1'b0}), .b(DSR_right_out), 
        .c(add_m) );
  LOD_N_N32_0 l2 ( .in({LOD_in_31_, add_m[30:0]}), .out(left_shift) );
  DSR_left_N_S_N32_S5_0 dsl1 ( .a(add_m[32:1]), .b(left_shift), .c(
        DSR_left_out_t) );
  sub_N_N8_1 sub3 ( .a({lr_N, le}), .b({1'b0, 1'b0, 1'b0, left_shift}), .c(
        le_o_tmp) );
  add_1_N8 uut_add_mantovf ( .a(le_o_tmp), .mant_ovf(add_m[32]), .c({
        SYNOPSYS_UNCONNECTED_2, le_o}) );
  reg_exp_op_es2_Bs5 uut_reg_ro ( .exp_o(le_o), .e_o(e_o), .r_o(r_o) );
  DSR_right_N_S_N99_S5 dsr2 ( .a({n79, n79, n79, n79, n79, n79, n80, n80, n81, 
        n80, n80, n80, n80, n80, n81, n81, n81, n81, n81, n81, n78, n77, n190, 
        n78, n77, n190, n78, n77, n78, n190, n78, n79, le_o[7], e_o, 
        DSR_left_out, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .b(r_o), .c({SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, 
        SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, 
        SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25, 
        SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27, 
        SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29, 
        SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31, 
        SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33, 
        SYNOPSYS_UNCONNECTED_34, tmp1_o}) );
  add_N_N32_0 uut_add_ulp ( .a(tmp1_o[66:35]), .b({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, rnd_ulp_0_}), .c({SYNOPSYS_UNCONNECTED_35, 
        tmp1_o_rnd_ulp}) );
  ppu_DW01_sub_0 sub_159 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B(tmp1_o_rnd), .CI(1'b0), .DIFF({N117, N116, N115, N114, N113, N112, N111, 
        N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, 
        N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, 
        SYNOPSYS_UNCONNECTED_36}) );
  ppu_DW01_sub_1 sub_52 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B(in2), .CI(1'b0), .DIFF({N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, 
        N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, 
        N54, N53, N52, N51, N50, N49, N48, N47}) );
  ppu_DW01_sub_2 sub_51 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B(in1), .CI(1'b0), .DIFF({N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, 
        N21, N20, N19, N18, N17, N16, N15, N14}) );
  INVX0 U313 ( .INP(n85), .ZN(n73) );
  INVX1 U314 ( .INP(n73), .ZN(n74) );
  INVX1 U315 ( .INP(n73), .ZN(n75) );
  INVX2 U316 ( .INP(n73), .ZN(n76) );
  AND3X2 U317 ( .IN1(r_o[3]), .IN2(r_o[2]), .IN3(r_o[4]), .Q(n84) );
  XOR2X2 U318 ( .IN1(n106), .IN2(in2[31]), .Q(n72) );
  NBUFFX2 U319 ( .INP(n77), .Z(n79) );
  NBUFFX2 U320 ( .INP(n77), .Z(n80) );
  NBUFFX2 U321 ( .INP(n77), .Z(n81) );
  NBUFFX2 U322 ( .INP(n190), .Z(n77) );
  NBUFFX2 U323 ( .INP(n190), .Z(n78) );
  NOR4X0 U324 ( .IN1(in2[31]), .IN2(in1[31]), .IN3(n82), .IN4(n83), .QN(zero)
         );
  AND2X1 U325 ( .IN1(N78), .IN2(in2[31]), .Q(xin2[31]) );
  AND2X1 U326 ( .IN1(N45), .IN2(in1[31]), .Q(xin1[31]) );
  MUX21X1 U327 ( .IN1(tmp1_o_rnd_ulp[0]), .IN2(tmp1_o[35]), .S(n84), .Q(
        tmp1_o_rnd[0]) );
  MUX21X1 U328 ( .IN1(rc2), .IN2(rc1), .S(n76), .Q(src) );
  MUX21X1 U329 ( .IN1(regime2[4]), .IN2(regime1[4]), .S(n75), .Q(sr[4]) );
  MUX21X1 U330 ( .IN1(regime2[3]), .IN2(regime1[3]), .S(n74), .Q(sr[3]) );
  MUX21X1 U331 ( .IN1(regime2[2]), .IN2(regime1[2]), .S(n85), .Q(sr[2]) );
  MUX21X1 U332 ( .IN1(regime2[1]), .IN2(regime1[1]), .S(n76), .Q(sr[1]) );
  MUX21X1 U333 ( .IN1(regime2[0]), .IN2(regime1[0]), .S(n75), .Q(sr[0]) );
  MUX21X1 U334 ( .IN1(mant2[9]), .IN2(mant1[9]), .S(n74), .Q(sm[9]) );
  MUX21X1 U335 ( .IN1(mant2[8]), .IN2(mant1[8]), .S(n85), .Q(sm[8]) );
  MUX21X1 U336 ( .IN1(mant2[7]), .IN2(mant1[7]), .S(n76), .Q(sm[7]) );
  MUX21X1 U337 ( .IN1(mant2[6]), .IN2(mant1[6]), .S(n75), .Q(sm[6]) );
  MUX21X1 U338 ( .IN1(mant2[5]), .IN2(mant1[5]), .S(n74), .Q(sm[5]) );
  MUX21X1 U339 ( .IN1(mant2[4]), .IN2(mant1[4]), .S(n85), .Q(sm[4]) );
  MUX21X1 U340 ( .IN1(mant2[3]), .IN2(mant1[3]), .S(n76), .Q(sm[3]) );
  MUX21X1 U341 ( .IN1(n82), .IN2(n83), .S(n75), .Q(sm[30]) );
  MUX21X1 U342 ( .IN1(mant2[2]), .IN2(mant1[2]), .S(n74), .Q(sm[2]) );
  MUX21X1 U343 ( .IN1(mant2[29]), .IN2(mant1[29]), .S(n85), .Q(sm[29]) );
  MUX21X1 U344 ( .IN1(mant2[28]), .IN2(mant1[28]), .S(n76), .Q(sm[28]) );
  MUX21X1 U345 ( .IN1(mant2[27]), .IN2(mant1[27]), .S(n75), .Q(sm[27]) );
  MUX21X1 U346 ( .IN1(mant2[26]), .IN2(mant1[26]), .S(n74), .Q(sm[26]) );
  MUX21X1 U347 ( .IN1(mant2[25]), .IN2(mant1[25]), .S(n85), .Q(sm[25]) );
  MUX21X1 U348 ( .IN1(mant2[24]), .IN2(mant1[24]), .S(n76), .Q(sm[24]) );
  MUX21X1 U349 ( .IN1(mant2[23]), .IN2(mant1[23]), .S(n75), .Q(sm[23]) );
  MUX21X1 U350 ( .IN1(mant2[22]), .IN2(mant1[22]), .S(n74), .Q(sm[22]) );
  MUX21X1 U351 ( .IN1(mant2[21]), .IN2(mant1[21]), .S(n85), .Q(sm[21]) );
  MUX21X1 U352 ( .IN1(mant2[20]), .IN2(mant1[20]), .S(n76), .Q(sm[20]) );
  MUX21X1 U353 ( .IN1(mant2[1]), .IN2(mant1[1]), .S(n75), .Q(sm[1]) );
  MUX21X1 U354 ( .IN1(mant2[19]), .IN2(mant1[19]), .S(n74), .Q(sm[19]) );
  MUX21X1 U355 ( .IN1(mant2[18]), .IN2(mant1[18]), .S(n85), .Q(sm[18]) );
  MUX21X1 U356 ( .IN1(mant2[17]), .IN2(mant1[17]), .S(n76), .Q(sm[17]) );
  MUX21X1 U357 ( .IN1(mant2[16]), .IN2(mant1[16]), .S(n75), .Q(sm[16]) );
  MUX21X1 U358 ( .IN1(mant2[15]), .IN2(mant1[15]), .S(n74), .Q(sm[15]) );
  MUX21X1 U359 ( .IN1(mant2[14]), .IN2(mant1[14]), .S(n85), .Q(sm[14]) );
  MUX21X1 U360 ( .IN1(mant2[13]), .IN2(mant1[13]), .S(n76), .Q(sm[13]) );
  MUX21X1 U361 ( .IN1(mant2[12]), .IN2(mant1[12]), .S(n75), .Q(sm[12]) );
  MUX21X1 U362 ( .IN1(mant2[11]), .IN2(mant1[11]), .S(n74), .Q(sm[11]) );
  MUX21X1 U363 ( .IN1(mant2[10]), .IN2(mant1[10]), .S(n85), .Q(sm[10]) );
  MUX21X1 U364 ( .IN1(mant2[0]), .IN2(mant1[0]), .S(n76), .Q(sm[0]) );
  MUX21X1 U365 ( .IN1(e2[1]), .IN2(e1[1]), .S(n75), .Q(se[1]) );
  MUX21X1 U366 ( .IN1(e2[0]), .IN2(e1[0]), .S(n74), .Q(se[0]) );
  OA21X1 U367 ( .IN1(n86), .IN2(n87), .IN3(tmp1_o[35]), .Q(rnd_ulp_0_) );
  NAND4X0 U368 ( .IN1(n88), .IN2(n89), .IN3(n90), .IN4(n91), .QN(n87) );
  NOR4X0 U369 ( .IN1(n92), .IN2(tmp1_o[23]), .IN3(tmp1_o[25]), .IN4(tmp1_o[24]), .QN(n91) );
  OR2X1 U370 ( .IN1(tmp1_o[22]), .IN2(tmp1_o[21]), .Q(n92) );
  NOR4X0 U371 ( .IN1(tmp1_o[20]), .IN2(tmp1_o[1]), .IN3(tmp1_o[19]), .IN4(
        tmp1_o[18]), .QN(n90) );
  NOR4X0 U372 ( .IN1(n93), .IN2(tmp1_o[15]), .IN3(tmp1_o[17]), .IN4(tmp1_o[16]), .QN(n89) );
  OR2X1 U373 ( .IN1(tmp1_o[14]), .IN2(tmp1_o[13]), .Q(n93) );
  NOR4X0 U374 ( .IN1(tmp1_o[12]), .IN2(tmp1_o[11]), .IN3(tmp1_o[10]), .IN4(
        tmp1_o[0]), .QN(n88) );
  NAND4X0 U375 ( .IN1(n94), .IN2(n95), .IN3(n96), .IN4(n97), .QN(n86) );
  NOR4X0 U376 ( .IN1(n98), .IN2(tmp1_o[7]), .IN3(tmp1_o[9]), .IN4(tmp1_o[8]), 
        .QN(n97) );
  OR2X1 U377 ( .IN1(tmp1_o[6]), .IN2(tmp1_o[5]), .Q(n98) );
  NOR4X0 U378 ( .IN1(tmp1_o[4]), .IN2(tmp1_o[3]), .IN3(tmp1_o[36]), .IN4(
        tmp1_o[34]), .QN(n96) );
  NOR4X0 U379 ( .IN1(n99), .IN2(tmp1_o[31]), .IN3(tmp1_o[33]), .IN4(tmp1_o[32]), .QN(n95) );
  OR2X1 U380 ( .IN1(tmp1_o[30]), .IN2(tmp1_o[2]), .Q(n99) );
  NOR4X0 U381 ( .IN1(tmp1_o[29]), .IN2(tmp1_o[28]), .IN3(tmp1_o[27]), .IN4(
        tmp1_o[26]), .QN(n94) );
  AO22X1 U382 ( .IN1(N96), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[10]), .Q(
        out[9]) );
  MUX21X1 U383 ( .IN1(tmp1_o_rnd_ulp[10]), .IN2(tmp1_o[45]), .S(n84), .Q(
        tmp1_o_rnd[10]) );
  AO22X1 U384 ( .IN1(N95), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[9]), .Q(
        out[8]) );
  MUX21X1 U385 ( .IN1(tmp1_o_rnd_ulp[9]), .IN2(tmp1_o[44]), .S(n84), .Q(
        tmp1_o_rnd[9]) );
  AO22X1 U386 ( .IN1(N94), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[8]), .Q(
        out[7]) );
  MUX21X1 U387 ( .IN1(tmp1_o_rnd_ulp[8]), .IN2(tmp1_o[43]), .S(n84), .Q(
        tmp1_o_rnd[8]) );
  AO22X1 U388 ( .IN1(N93), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[7]), .Q(
        out[6]) );
  MUX21X1 U389 ( .IN1(tmp1_o_rnd_ulp[7]), .IN2(tmp1_o[42]), .S(n84), .Q(
        tmp1_o_rnd[7]) );
  AO22X1 U390 ( .IN1(N92), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[6]), .Q(
        out[5]) );
  MUX21X1 U391 ( .IN1(tmp1_o_rnd_ulp[6]), .IN2(tmp1_o[41]), .S(n84), .Q(
        tmp1_o_rnd[6]) );
  AO22X1 U392 ( .IN1(N91), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[5]), .Q(
        out[4]) );
  MUX21X1 U393 ( .IN1(tmp1_o_rnd_ulp[5]), .IN2(tmp1_o[40]), .S(n84), .Q(
        tmp1_o_rnd[5]) );
  AO22X1 U394 ( .IN1(N90), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[4]), .Q(
        out[3]) );
  MUX21X1 U395 ( .IN1(tmp1_o_rnd_ulp[4]), .IN2(tmp1_o[39]), .S(n84), .Q(
        tmp1_o_rnd[4]) );
  NAND2X0 U396 ( .IN1(n102), .IN2(n103), .QN(out[31]) );
  AO22X1 U397 ( .IN1(N117), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[31]), .Q(
        out[30]) );
  MUX21X1 U398 ( .IN1(tmp1_o_rnd_ulp[31]), .IN2(tmp1_o[66]), .S(n84), .Q(
        tmp1_o_rnd[31]) );
  AO22X1 U399 ( .IN1(N89), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[3]), .Q(
        out[2]) );
  MUX21X1 U400 ( .IN1(tmp1_o_rnd_ulp[3]), .IN2(tmp1_o[38]), .S(n84), .Q(
        tmp1_o_rnd[3]) );
  AO22X1 U401 ( .IN1(N116), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[30]), .Q(
        out[29]) );
  MUX21X1 U402 ( .IN1(tmp1_o_rnd_ulp[30]), .IN2(tmp1_o[65]), .S(n84), .Q(
        tmp1_o_rnd[30]) );
  AO22X1 U403 ( .IN1(N115), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[29]), .Q(
        out[28]) );
  MUX21X1 U404 ( .IN1(tmp1_o_rnd_ulp[29]), .IN2(tmp1_o[64]), .S(n84), .Q(
        tmp1_o_rnd[29]) );
  AO22X1 U405 ( .IN1(N114), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[28]), .Q(
        out[27]) );
  MUX21X1 U406 ( .IN1(tmp1_o_rnd_ulp[28]), .IN2(tmp1_o[63]), .S(n84), .Q(
        tmp1_o_rnd[28]) );
  AO22X1 U407 ( .IN1(N113), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[27]), .Q(
        out[26]) );
  MUX21X1 U408 ( .IN1(tmp1_o_rnd_ulp[27]), .IN2(tmp1_o[62]), .S(n84), .Q(
        tmp1_o_rnd[27]) );
  AO22X1 U409 ( .IN1(N112), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[26]), .Q(
        out[25]) );
  MUX21X1 U410 ( .IN1(tmp1_o_rnd_ulp[26]), .IN2(tmp1_o[61]), .S(n84), .Q(
        tmp1_o_rnd[26]) );
  AO22X1 U411 ( .IN1(N111), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[25]), .Q(
        out[24]) );
  MUX21X1 U412 ( .IN1(tmp1_o_rnd_ulp[25]), .IN2(tmp1_o[60]), .S(n84), .Q(
        tmp1_o_rnd[25]) );
  AO22X1 U413 ( .IN1(N110), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[24]), .Q(
        out[23]) );
  MUX21X1 U414 ( .IN1(tmp1_o_rnd_ulp[24]), .IN2(tmp1_o[59]), .S(n84), .Q(
        tmp1_o_rnd[24]) );
  AO22X1 U415 ( .IN1(N109), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[23]), .Q(
        out[22]) );
  MUX21X1 U416 ( .IN1(tmp1_o_rnd_ulp[23]), .IN2(tmp1_o[58]), .S(n84), .Q(
        tmp1_o_rnd[23]) );
  AO22X1 U417 ( .IN1(N108), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[22]), .Q(
        out[21]) );
  MUX21X1 U418 ( .IN1(tmp1_o_rnd_ulp[22]), .IN2(tmp1_o[57]), .S(n84), .Q(
        tmp1_o_rnd[22]) );
  AO22X1 U419 ( .IN1(N107), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[21]), .Q(
        out[20]) );
  MUX21X1 U420 ( .IN1(tmp1_o_rnd_ulp[21]), .IN2(tmp1_o[56]), .S(n84), .Q(
        tmp1_o_rnd[21]) );
  AO22X1 U421 ( .IN1(N88), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[2]), .Q(
        out[1]) );
  MUX21X1 U422 ( .IN1(tmp1_o_rnd_ulp[2]), .IN2(tmp1_o[37]), .S(n84), .Q(
        tmp1_o_rnd[2]) );
  AO22X1 U423 ( .IN1(N106), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[20]), .Q(
        out[19]) );
  MUX21X1 U424 ( .IN1(tmp1_o_rnd_ulp[20]), .IN2(tmp1_o[55]), .S(n84), .Q(
        tmp1_o_rnd[20]) );
  AO22X1 U425 ( .IN1(N105), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[19]), .Q(
        out[18]) );
  MUX21X1 U426 ( .IN1(tmp1_o_rnd_ulp[19]), .IN2(tmp1_o[54]), .S(n84), .Q(
        tmp1_o_rnd[19]) );
  AO22X1 U427 ( .IN1(N104), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[18]), .Q(
        out[17]) );
  MUX21X1 U428 ( .IN1(tmp1_o_rnd_ulp[18]), .IN2(tmp1_o[53]), .S(n84), .Q(
        tmp1_o_rnd[18]) );
  AO22X1 U429 ( .IN1(N103), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[17]), .Q(
        out[16]) );
  MUX21X1 U430 ( .IN1(tmp1_o_rnd_ulp[17]), .IN2(tmp1_o[52]), .S(n84), .Q(
        tmp1_o_rnd[17]) );
  AO22X1 U431 ( .IN1(N102), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[16]), .Q(
        out[15]) );
  MUX21X1 U432 ( .IN1(tmp1_o_rnd_ulp[16]), .IN2(tmp1_o[51]), .S(n84), .Q(
        tmp1_o_rnd[16]) );
  AO22X1 U433 ( .IN1(N101), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[15]), .Q(
        out[14]) );
  MUX21X1 U434 ( .IN1(tmp1_o_rnd_ulp[15]), .IN2(tmp1_o[50]), .S(n84), .Q(
        tmp1_o_rnd[15]) );
  AO22X1 U435 ( .IN1(N100), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[14]), .Q(
        out[13]) );
  MUX21X1 U436 ( .IN1(tmp1_o_rnd_ulp[14]), .IN2(tmp1_o[49]), .S(n84), .Q(
        tmp1_o_rnd[14]) );
  AO22X1 U437 ( .IN1(N99), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[13]), .Q(
        out[12]) );
  MUX21X1 U438 ( .IN1(tmp1_o_rnd_ulp[13]), .IN2(tmp1_o[48]), .S(n84), .Q(
        tmp1_o_rnd[13]) );
  AO22X1 U439 ( .IN1(N98), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[12]), .Q(
        out[11]) );
  MUX21X1 U440 ( .IN1(tmp1_o_rnd_ulp[12]), .IN2(tmp1_o[47]), .S(n84), .Q(
        tmp1_o_rnd[12]) );
  AO22X1 U441 ( .IN1(N97), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[11]), .Q(
        out[10]) );
  MUX21X1 U442 ( .IN1(tmp1_o_rnd_ulp[11]), .IN2(tmp1_o[46]), .S(n84), .Q(
        tmp1_o_rnd[11]) );
  AO22X1 U443 ( .IN1(N87), .IN2(n100), .IN3(n101), .IN4(tmp1_o_rnd[1]), .Q(
        out[0]) );
  MUX21X1 U444 ( .IN1(tmp1_o_rnd_ulp[1]), .IN2(tmp1_o[36]), .S(n84), .Q(
        tmp1_o_rnd[1]) );
  AND2X1 U445 ( .IN1(n104), .IN2(n105), .Q(n101) );
  MUX21X1 U446 ( .IN1(n106), .IN2(n107), .S(n85), .Q(n104) );
  INVX0 U447 ( .INP(n102), .ZN(n100) );
  NAND2X0 U448 ( .IN1(n108), .IN2(n105), .QN(n102) );
  OA221X1 U449 ( .IN1(n83), .IN2(n82), .IN3(DSR_left_out_t[30]), .IN4(
        DSR_left_out_t[31]), .IN5(n103), .Q(n105) );
  MUX21X1 U450 ( .IN1(in1[31]), .IN2(in2[31]), .S(n76), .Q(n108) );
  INVX0 U451 ( .INP(le_o[7]), .ZN(n190) );
  INVX0 U452 ( .INP(n103), .ZN(inf) );
  OA22X1 U453 ( .IN1(n106), .IN2(n83), .IN3(n107), .IN4(n82), .Q(n103) );
  INVX0 U454 ( .INP(in2[31]), .ZN(n107) );
  INVX0 U455 ( .INP(in1[31]), .ZN(n106) );
  MUX21X1 U456 ( .IN1(rc1), .IN2(rc2), .S(n75), .Q(lrc) );
  MUX21X1 U457 ( .IN1(regime1[4]), .IN2(regime2[4]), .S(n74), .Q(lr[4]) );
  MUX21X1 U458 ( .IN1(regime1[3]), .IN2(regime2[3]), .S(n85), .Q(lr[3]) );
  MUX21X1 U459 ( .IN1(regime1[2]), .IN2(regime2[2]), .S(n76), .Q(lr[2]) );
  MUX21X1 U460 ( .IN1(regime1[1]), .IN2(regime2[1]), .S(n75), .Q(lr[1]) );
  MUX21X1 U461 ( .IN1(regime1[0]), .IN2(regime2[0]), .S(n74), .Q(lr[0]) );
  MUX21X1 U462 ( .IN1(mant1[9]), .IN2(mant2[9]), .S(n85), .Q(lm[9]) );
  MUX21X1 U463 ( .IN1(mant1[8]), .IN2(mant2[8]), .S(n76), .Q(lm[8]) );
  MUX21X1 U464 ( .IN1(mant1[7]), .IN2(mant2[7]), .S(n75), .Q(lm[7]) );
  MUX21X1 U465 ( .IN1(mant1[6]), .IN2(mant2[6]), .S(n74), .Q(lm[6]) );
  MUX21X1 U466 ( .IN1(mant1[5]), .IN2(mant2[5]), .S(n85), .Q(lm[5]) );
  MUX21X1 U467 ( .IN1(mant1[4]), .IN2(mant2[4]), .S(n76), .Q(lm[4]) );
  MUX21X1 U468 ( .IN1(mant1[3]), .IN2(mant2[3]), .S(n75), .Q(lm[3]) );
  MUX21X1 U469 ( .IN1(n83), .IN2(n82), .S(n74), .Q(lm[30]) );
  NAND4X0 U470 ( .IN1(n109), .IN2(n110), .IN3(n111), .IN4(n112), .QN(n82) );
  NOR4X0 U471 ( .IN1(n113), .IN2(n114), .IN3(n115), .IN4(n116), .QN(n112) );
  OR4X1 U472 ( .IN1(in2[23]), .IN2(in2[24]), .IN3(in2[25]), .IN4(in2[26]), .Q(
        n116) );
  OR4X1 U473 ( .IN1(in2[27]), .IN2(in2[28]), .IN3(in2[29]), .IN4(in2[2]), .Q(
        n115) );
  OR4X1 U474 ( .IN1(in2[30]), .IN2(in2[3]), .IN3(in2[4]), .IN4(in2[5]), .Q(
        n114) );
  OR4X1 U475 ( .IN1(in2[6]), .IN2(in2[7]), .IN3(in2[8]), .IN4(in2[9]), .Q(n113) );
  NOR4X0 U476 ( .IN1(n117), .IN2(in2[0]), .IN3(in2[11]), .IN4(in2[10]), .QN(
        n111) );
  OR4X1 U477 ( .IN1(in2[12]), .IN2(in2[13]), .IN3(in2[14]), .IN4(in2[15]), .Q(
        n117) );
  NOR4X0 U478 ( .IN1(in2[22]), .IN2(in2[21]), .IN3(in2[20]), .IN4(in2[1]), 
        .QN(n110) );
  NOR4X0 U479 ( .IN1(in2[19]), .IN2(in2[18]), .IN3(in2[17]), .IN4(in2[16]), 
        .QN(n109) );
  NAND4X0 U480 ( .IN1(n118), .IN2(n119), .IN3(n120), .IN4(n121), .QN(n83) );
  NOR4X0 U481 ( .IN1(n122), .IN2(n123), .IN3(n124), .IN4(n125), .QN(n121) );
  OR4X1 U482 ( .IN1(in1[23]), .IN2(in1[24]), .IN3(in1[25]), .IN4(in1[26]), .Q(
        n125) );
  OR4X1 U483 ( .IN1(in1[27]), .IN2(in1[28]), .IN3(in1[29]), .IN4(in1[2]), .Q(
        n124) );
  OR4X1 U484 ( .IN1(in1[30]), .IN2(in1[3]), .IN3(in1[4]), .IN4(in1[5]), .Q(
        n123) );
  OR4X1 U485 ( .IN1(in1[6]), .IN2(in1[7]), .IN3(in1[8]), .IN4(in1[9]), .Q(n122) );
  NOR4X0 U486 ( .IN1(n126), .IN2(in1[0]), .IN3(in1[11]), .IN4(in1[10]), .QN(
        n120) );
  OR4X1 U487 ( .IN1(in1[12]), .IN2(in1[13]), .IN3(in1[14]), .IN4(in1[15]), .Q(
        n126) );
  NOR4X0 U488 ( .IN1(in1[22]), .IN2(in1[21]), .IN3(in1[20]), .IN4(in1[1]), 
        .QN(n119) );
  NOR4X0 U489 ( .IN1(in1[19]), .IN2(in1[18]), .IN3(in1[17]), .IN4(in1[16]), 
        .QN(n118) );
  MUX21X1 U490 ( .IN1(mant1[2]), .IN2(mant2[2]), .S(n85), .Q(lm[2]) );
  MUX21X1 U491 ( .IN1(mant1[29]), .IN2(mant2[29]), .S(n76), .Q(lm[29]) );
  MUX21X1 U492 ( .IN1(mant1[28]), .IN2(mant2[28]), .S(n75), .Q(lm[28]) );
  MUX21X1 U493 ( .IN1(mant1[27]), .IN2(mant2[27]), .S(n74), .Q(lm[27]) );
  MUX21X1 U494 ( .IN1(mant1[26]), .IN2(mant2[26]), .S(n85), .Q(lm[26]) );
  MUX21X1 U495 ( .IN1(mant1[25]), .IN2(mant2[25]), .S(n76), .Q(lm[25]) );
  MUX21X1 U496 ( .IN1(mant1[24]), .IN2(mant2[24]), .S(n75), .Q(lm[24]) );
  MUX21X1 U497 ( .IN1(mant1[23]), .IN2(mant2[23]), .S(n74), .Q(lm[23]) );
  MUX21X1 U498 ( .IN1(mant1[22]), .IN2(mant2[22]), .S(n85), .Q(lm[22]) );
  MUX21X1 U499 ( .IN1(mant1[21]), .IN2(mant2[21]), .S(n76), .Q(lm[21]) );
  MUX21X1 U500 ( .IN1(mant1[20]), .IN2(mant2[20]), .S(n75), .Q(lm[20]) );
  MUX21X1 U501 ( .IN1(mant1[1]), .IN2(mant2[1]), .S(n74), .Q(lm[1]) );
  MUX21X1 U502 ( .IN1(mant1[19]), .IN2(mant2[19]), .S(n85), .Q(lm[19]) );
  MUX21X1 U503 ( .IN1(mant1[18]), .IN2(mant2[18]), .S(n76), .Q(lm[18]) );
  MUX21X1 U504 ( .IN1(mant1[17]), .IN2(mant2[17]), .S(n75), .Q(lm[17]) );
  MUX21X1 U505 ( .IN1(mant1[16]), .IN2(mant2[16]), .S(n74), .Q(lm[16]) );
  MUX21X1 U506 ( .IN1(mant1[15]), .IN2(mant2[15]), .S(n85), .Q(lm[15]) );
  MUX21X1 U507 ( .IN1(mant1[14]), .IN2(mant2[14]), .S(n76), .Q(lm[14]) );
  MUX21X1 U508 ( .IN1(mant1[13]), .IN2(mant2[13]), .S(n75), .Q(lm[13]) );
  MUX21X1 U509 ( .IN1(mant1[12]), .IN2(mant2[12]), .S(n74), .Q(lm[12]) );
  MUX21X1 U510 ( .IN1(mant1[11]), .IN2(mant2[11]), .S(n85), .Q(lm[11]) );
  MUX21X1 U511 ( .IN1(mant1[10]), .IN2(mant2[10]), .S(n76), .Q(lm[10]) );
  MUX21X1 U512 ( .IN1(mant1[0]), .IN2(mant2[0]), .S(n75), .Q(lm[0]) );
  MUX21X1 U513 ( .IN1(e1[1]), .IN2(e2[1]), .S(n74), .Q(le[1]) );
  MUX21X1 U514 ( .IN1(e1[0]), .IN2(e2[0]), .S(n85), .Q(le[0]) );
  AOI21X1 U515 ( .IN1(xin1[30]), .IN2(n127), .IN3(n128), .QN(n85) );
  OA221X1 U516 ( .IN1(xin1[29]), .IN2(n129), .IN3(xin1[30]), .IN4(n127), .IN5(
        n130), .Q(n128) );
  AO221X1 U517 ( .IN1(xin1[28]), .IN2(n131), .IN3(xin1[29]), .IN4(n129), .IN5(
        n132), .Q(n130) );
  OA221X1 U518 ( .IN1(xin1[27]), .IN2(n133), .IN3(xin1[28]), .IN4(n131), .IN5(
        n134), .Q(n132) );
  AO221X1 U519 ( .IN1(xin1[26]), .IN2(n135), .IN3(xin1[27]), .IN4(n133), .IN5(
        n136), .Q(n134) );
  OA221X1 U520 ( .IN1(xin1[25]), .IN2(n137), .IN3(xin1[26]), .IN4(n135), .IN5(
        n138), .Q(n136) );
  AO221X1 U521 ( .IN1(xin1[24]), .IN2(n139), .IN3(xin1[25]), .IN4(n137), .IN5(
        n140), .Q(n138) );
  OA221X1 U522 ( .IN1(xin1[23]), .IN2(n141), .IN3(xin1[24]), .IN4(n139), .IN5(
        n142), .Q(n140) );
  AO221X1 U523 ( .IN1(xin1[22]), .IN2(n143), .IN3(xin1[23]), .IN4(n141), .IN5(
        n144), .Q(n142) );
  OA221X1 U524 ( .IN1(xin1[21]), .IN2(n145), .IN3(xin1[22]), .IN4(n143), .IN5(
        n146), .Q(n144) );
  AO221X1 U525 ( .IN1(xin1[20]), .IN2(n147), .IN3(xin1[21]), .IN4(n145), .IN5(
        n148), .Q(n146) );
  OA221X1 U526 ( .IN1(xin1[19]), .IN2(n149), .IN3(xin1[20]), .IN4(n147), .IN5(
        n150), .Q(n148) );
  AO221X1 U527 ( .IN1(xin1[18]), .IN2(n151), .IN3(xin1[19]), .IN4(n149), .IN5(
        n152), .Q(n150) );
  OA221X1 U528 ( .IN1(xin1[17]), .IN2(n153), .IN3(xin1[18]), .IN4(n151), .IN5(
        n154), .Q(n152) );
  AO221X1 U529 ( .IN1(xin1[16]), .IN2(n155), .IN3(xin1[17]), .IN4(n153), .IN5(
        n156), .Q(n154) );
  OA221X1 U530 ( .IN1(xin1[15]), .IN2(n157), .IN3(xin1[16]), .IN4(n155), .IN5(
        n158), .Q(n156) );
  AO221X1 U531 ( .IN1(xin1[14]), .IN2(n159), .IN3(xin1[15]), .IN4(n157), .IN5(
        n160), .Q(n158) );
  OA221X1 U532 ( .IN1(xin1[13]), .IN2(n161), .IN3(xin1[14]), .IN4(n159), .IN5(
        n162), .Q(n160) );
  AO221X1 U533 ( .IN1(xin1[12]), .IN2(n163), .IN3(xin1[13]), .IN4(n161), .IN5(
        n164), .Q(n162) );
  OA221X1 U534 ( .IN1(xin1[11]), .IN2(n165), .IN3(xin1[12]), .IN4(n163), .IN5(
        n166), .Q(n164) );
  AO221X1 U535 ( .IN1(xin1[10]), .IN2(n167), .IN3(xin1[11]), .IN4(n165), .IN5(
        n168), .Q(n166) );
  OA221X1 U536 ( .IN1(xin1[9]), .IN2(n169), .IN3(xin1[10]), .IN4(n167), .IN5(
        n170), .Q(n168) );
  AO221X1 U537 ( .IN1(xin1[8]), .IN2(n171), .IN3(xin1[9]), .IN4(n169), .IN5(
        n172), .Q(n170) );
  OA221X1 U538 ( .IN1(xin1[7]), .IN2(n173), .IN3(xin1[8]), .IN4(n171), .IN5(
        n174), .Q(n172) );
  AO221X1 U539 ( .IN1(xin1[6]), .IN2(n175), .IN3(xin1[7]), .IN4(n173), .IN5(
        n176), .Q(n174) );
  OA221X1 U540 ( .IN1(xin1[5]), .IN2(n177), .IN3(xin1[6]), .IN4(n175), .IN5(
        n178), .Q(n176) );
  AO221X1 U541 ( .IN1(xin1[4]), .IN2(n179), .IN3(xin1[5]), .IN4(n177), .IN5(
        n180), .Q(n178) );
  OA221X1 U542 ( .IN1(xin1[3]), .IN2(n181), .IN3(xin1[4]), .IN4(n179), .IN5(
        n182), .Q(n180) );
  AO222X1 U543 ( .IN1(n183), .IN2(xin1[2]), .IN3(n184), .IN4(n185), .IN5(
        xin1[3]), .IN6(n181), .Q(n182) );
  OR2X1 U544 ( .IN1(xin1[2]), .IN2(n183), .Q(n185) );
  INVX0 U545 ( .INP(xin2[2]), .ZN(n184) );
  MUX21X1 U546 ( .IN1(in2[2]), .IN2(N49), .S(in2[31]), .Q(xin2[2]) );
  MUX21X1 U547 ( .IN1(in1[2]), .IN2(N16), .S(in1[31]), .Q(xin1[2]) );
  AOI22X1 U548 ( .IN1(xin2[1]), .IN2(n186), .IN3(n187), .IN4(xin2[0]), .QN(
        n183) );
  MUX21X1 U549 ( .IN1(in2[0]), .IN2(N47), .S(in2[31]), .Q(xin2[0]) );
  OA21X1 U550 ( .IN1(xin2[1]), .IN2(n186), .IN3(n188), .Q(n187) );
  INVX0 U551 ( .INP(xin1[0]), .ZN(n188) );
  MUX21X1 U552 ( .IN1(in1[0]), .IN2(N14), .S(in1[31]), .Q(xin1[0]) );
  INVX0 U553 ( .INP(xin1[1]), .ZN(n186) );
  MUX21X1 U554 ( .IN1(in1[1]), .IN2(N15), .S(in1[31]), .Q(xin1[1]) );
  MUX21X1 U555 ( .IN1(in2[1]), .IN2(N48), .S(in2[31]), .Q(xin2[1]) );
  INVX0 U556 ( .INP(xin2[3]), .ZN(n181) );
  MUX21X1 U557 ( .IN1(in2[3]), .IN2(N50), .S(in2[31]), .Q(xin2[3]) );
  MUX21X1 U558 ( .IN1(in1[3]), .IN2(N17), .S(in1[31]), .Q(xin1[3]) );
  INVX0 U559 ( .INP(xin2[4]), .ZN(n179) );
  MUX21X1 U560 ( .IN1(in2[4]), .IN2(N51), .S(in2[31]), .Q(xin2[4]) );
  MUX21X1 U561 ( .IN1(in1[4]), .IN2(N18), .S(in1[31]), .Q(xin1[4]) );
  INVX0 U562 ( .INP(xin2[5]), .ZN(n177) );
  MUX21X1 U563 ( .IN1(in2[5]), .IN2(N52), .S(in2[31]), .Q(xin2[5]) );
  MUX21X1 U564 ( .IN1(in1[5]), .IN2(N19), .S(in1[31]), .Q(xin1[5]) );
  INVX0 U565 ( .INP(xin2[6]), .ZN(n175) );
  MUX21X1 U566 ( .IN1(in2[6]), .IN2(N53), .S(in2[31]), .Q(xin2[6]) );
  MUX21X1 U567 ( .IN1(in1[6]), .IN2(N20), .S(in1[31]), .Q(xin1[6]) );
  INVX0 U568 ( .INP(xin2[7]), .ZN(n173) );
  MUX21X1 U569 ( .IN1(in2[7]), .IN2(N54), .S(in2[31]), .Q(xin2[7]) );
  MUX21X1 U570 ( .IN1(in1[7]), .IN2(N21), .S(in1[31]), .Q(xin1[7]) );
  INVX0 U571 ( .INP(xin2[8]), .ZN(n171) );
  MUX21X1 U572 ( .IN1(in2[8]), .IN2(N55), .S(in2[31]), .Q(xin2[8]) );
  MUX21X1 U573 ( .IN1(in1[8]), .IN2(N22), .S(in1[31]), .Q(xin1[8]) );
  INVX0 U574 ( .INP(xin2[9]), .ZN(n169) );
  MUX21X1 U575 ( .IN1(in2[9]), .IN2(N56), .S(in2[31]), .Q(xin2[9]) );
  MUX21X1 U576 ( .IN1(in1[9]), .IN2(N23), .S(in1[31]), .Q(xin1[9]) );
  INVX0 U577 ( .INP(xin2[10]), .ZN(n167) );
  MUX21X1 U578 ( .IN1(in2[10]), .IN2(N57), .S(in2[31]), .Q(xin2[10]) );
  MUX21X1 U579 ( .IN1(in1[10]), .IN2(N24), .S(in1[31]), .Q(xin1[10]) );
  INVX0 U580 ( .INP(xin2[11]), .ZN(n165) );
  MUX21X1 U581 ( .IN1(in2[11]), .IN2(N58), .S(in2[31]), .Q(xin2[11]) );
  MUX21X1 U582 ( .IN1(in1[11]), .IN2(N25), .S(in1[31]), .Q(xin1[11]) );
  INVX0 U583 ( .INP(xin2[12]), .ZN(n163) );
  MUX21X1 U584 ( .IN1(in2[12]), .IN2(N59), .S(in2[31]), .Q(xin2[12]) );
  MUX21X1 U585 ( .IN1(in1[12]), .IN2(N26), .S(in1[31]), .Q(xin1[12]) );
  INVX0 U586 ( .INP(xin2[13]), .ZN(n161) );
  MUX21X1 U587 ( .IN1(in2[13]), .IN2(N60), .S(in2[31]), .Q(xin2[13]) );
  MUX21X1 U588 ( .IN1(in1[13]), .IN2(N27), .S(in1[31]), .Q(xin1[13]) );
  INVX0 U589 ( .INP(xin2[14]), .ZN(n159) );
  MUX21X1 U590 ( .IN1(in2[14]), .IN2(N61), .S(in2[31]), .Q(xin2[14]) );
  MUX21X1 U591 ( .IN1(in1[14]), .IN2(N28), .S(in1[31]), .Q(xin1[14]) );
  INVX0 U592 ( .INP(xin2[15]), .ZN(n157) );
  MUX21X1 U593 ( .IN1(in2[15]), .IN2(N62), .S(in2[31]), .Q(xin2[15]) );
  MUX21X1 U594 ( .IN1(in1[15]), .IN2(N29), .S(in1[31]), .Q(xin1[15]) );
  INVX0 U595 ( .INP(xin2[16]), .ZN(n155) );
  MUX21X1 U596 ( .IN1(in2[16]), .IN2(N63), .S(in2[31]), .Q(xin2[16]) );
  MUX21X1 U597 ( .IN1(in1[16]), .IN2(N30), .S(in1[31]), .Q(xin1[16]) );
  INVX0 U598 ( .INP(xin2[17]), .ZN(n153) );
  MUX21X1 U599 ( .IN1(in2[17]), .IN2(N64), .S(in2[31]), .Q(xin2[17]) );
  MUX21X1 U600 ( .IN1(in1[17]), .IN2(N31), .S(in1[31]), .Q(xin1[17]) );
  INVX0 U601 ( .INP(xin2[18]), .ZN(n151) );
  MUX21X1 U602 ( .IN1(in2[18]), .IN2(N65), .S(in2[31]), .Q(xin2[18]) );
  MUX21X1 U603 ( .IN1(in1[18]), .IN2(N32), .S(in1[31]), .Q(xin1[18]) );
  INVX0 U604 ( .INP(xin2[19]), .ZN(n149) );
  MUX21X1 U605 ( .IN1(in2[19]), .IN2(N66), .S(in2[31]), .Q(xin2[19]) );
  MUX21X1 U606 ( .IN1(in1[19]), .IN2(N33), .S(in1[31]), .Q(xin1[19]) );
  INVX0 U607 ( .INP(xin2[20]), .ZN(n147) );
  MUX21X1 U608 ( .IN1(in2[20]), .IN2(N67), .S(in2[31]), .Q(xin2[20]) );
  MUX21X1 U609 ( .IN1(in1[20]), .IN2(N34), .S(in1[31]), .Q(xin1[20]) );
  INVX0 U610 ( .INP(xin2[21]), .ZN(n145) );
  MUX21X1 U611 ( .IN1(in2[21]), .IN2(N68), .S(in2[31]), .Q(xin2[21]) );
  MUX21X1 U612 ( .IN1(in1[21]), .IN2(N35), .S(in1[31]), .Q(xin1[21]) );
  INVX0 U613 ( .INP(xin2[22]), .ZN(n143) );
  MUX21X1 U614 ( .IN1(in2[22]), .IN2(N69), .S(in2[31]), .Q(xin2[22]) );
  MUX21X1 U615 ( .IN1(in1[22]), .IN2(N36), .S(in1[31]), .Q(xin1[22]) );
  INVX0 U616 ( .INP(xin2[23]), .ZN(n141) );
  MUX21X1 U617 ( .IN1(in2[23]), .IN2(N70), .S(in2[31]), .Q(xin2[23]) );
  MUX21X1 U618 ( .IN1(in1[23]), .IN2(N37), .S(in1[31]), .Q(xin1[23]) );
  INVX0 U619 ( .INP(xin2[24]), .ZN(n139) );
  MUX21X1 U620 ( .IN1(in2[24]), .IN2(N71), .S(in2[31]), .Q(xin2[24]) );
  MUX21X1 U621 ( .IN1(in1[24]), .IN2(N38), .S(in1[31]), .Q(xin1[24]) );
  INVX0 U622 ( .INP(xin2[25]), .ZN(n137) );
  MUX21X1 U623 ( .IN1(in2[25]), .IN2(N72), .S(in2[31]), .Q(xin2[25]) );
  MUX21X1 U624 ( .IN1(in1[25]), .IN2(N39), .S(in1[31]), .Q(xin1[25]) );
  INVX0 U625 ( .INP(xin2[26]), .ZN(n135) );
  MUX21X1 U626 ( .IN1(in2[26]), .IN2(N73), .S(in2[31]), .Q(xin2[26]) );
  MUX21X1 U627 ( .IN1(in1[26]), .IN2(N40), .S(in1[31]), .Q(xin1[26]) );
  INVX0 U628 ( .INP(xin2[27]), .ZN(n133) );
  MUX21X1 U629 ( .IN1(in2[27]), .IN2(N74), .S(in2[31]), .Q(xin2[27]) );
  MUX21X1 U630 ( .IN1(in1[27]), .IN2(N41), .S(in1[31]), .Q(xin1[27]) );
  INVX0 U631 ( .INP(xin2[28]), .ZN(n131) );
  MUX21X1 U632 ( .IN1(in2[28]), .IN2(N75), .S(in2[31]), .Q(xin2[28]) );
  MUX21X1 U633 ( .IN1(in1[28]), .IN2(N42), .S(in1[31]), .Q(xin1[28]) );
  INVX0 U634 ( .INP(xin2[29]), .ZN(n129) );
  MUX21X1 U635 ( .IN1(in2[29]), .IN2(N76), .S(in2[31]), .Q(xin2[29]) );
  MUX21X1 U636 ( .IN1(in1[29]), .IN2(N43), .S(in1[31]), .Q(xin1[29]) );
  INVX0 U637 ( .INP(xin2[30]), .ZN(n127) );
  MUX21X1 U638 ( .IN1(in2[30]), .IN2(N77), .S(in2[31]), .Q(xin2[30]) );
  MUX21X1 U639 ( .IN1(in1[30]), .IN2(N44), .S(in1[31]), .Q(xin1[30]) );
  OR2X1 U640 ( .IN1(diff[4]), .IN2(n189), .Q(exp_diff[4]) );
  OR2X1 U641 ( .IN1(diff[3]), .IN2(n189), .Q(exp_diff[3]) );
  OR2X1 U642 ( .IN1(diff[2]), .IN2(n189), .Q(exp_diff[2]) );
  OR2X1 U643 ( .IN1(diff[1]), .IN2(n189), .Q(exp_diff[1]) );
  OR2X1 U644 ( .IN1(diff[0]), .IN2(n189), .Q(exp_diff[0]) );
  OR3X1 U645 ( .IN1(diff[7]), .IN2(diff[6]), .IN3(diff[5]), .Q(n189) );
  OR2X1 U646 ( .IN1(add_m[31]), .IN2(add_m[32]), .Q(LOD_in_31_) );
  MUX21X1 U647 ( .IN1(DSR_left_out_t[8]), .IN2(DSR_left_out_t[9]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[9]) );
  MUX21X1 U648 ( .IN1(DSR_left_out_t[7]), .IN2(DSR_left_out_t[8]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[8]) );
  MUX21X1 U649 ( .IN1(DSR_left_out_t[6]), .IN2(DSR_left_out_t[7]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[7]) );
  MUX21X1 U650 ( .IN1(DSR_left_out_t[5]), .IN2(DSR_left_out_t[6]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[6]) );
  MUX21X1 U651 ( .IN1(DSR_left_out_t[4]), .IN2(DSR_left_out_t[5]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[5]) );
  MUX21X1 U652 ( .IN1(DSR_left_out_t[3]), .IN2(DSR_left_out_t[4]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[4]) );
  MUX21X1 U653 ( .IN1(DSR_left_out_t[2]), .IN2(DSR_left_out_t[3]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[3]) );
  MUX21X1 U654 ( .IN1(DSR_left_out_t[29]), .IN2(DSR_left_out_t[30]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[30]) );
  MUX21X1 U655 ( .IN1(DSR_left_out_t[1]), .IN2(DSR_left_out_t[2]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[2]) );
  MUX21X1 U656 ( .IN1(DSR_left_out_t[28]), .IN2(DSR_left_out_t[29]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[29]) );
  MUX21X1 U657 ( .IN1(DSR_left_out_t[27]), .IN2(DSR_left_out_t[28]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[28]) );
  MUX21X1 U658 ( .IN1(DSR_left_out_t[26]), .IN2(DSR_left_out_t[27]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[27]) );
  MUX21X1 U659 ( .IN1(DSR_left_out_t[25]), .IN2(DSR_left_out_t[26]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[26]) );
  MUX21X1 U660 ( .IN1(DSR_left_out_t[24]), .IN2(DSR_left_out_t[25]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[25]) );
  MUX21X1 U661 ( .IN1(DSR_left_out_t[23]), .IN2(DSR_left_out_t[24]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[24]) );
  MUX21X1 U662 ( .IN1(DSR_left_out_t[22]), .IN2(DSR_left_out_t[23]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[23]) );
  MUX21X1 U663 ( .IN1(DSR_left_out_t[21]), .IN2(DSR_left_out_t[22]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[22]) );
  MUX21X1 U664 ( .IN1(DSR_left_out_t[20]), .IN2(DSR_left_out_t[21]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[21]) );
  MUX21X1 U665 ( .IN1(DSR_left_out_t[19]), .IN2(DSR_left_out_t[20]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[20]) );
  MUX21X1 U666 ( .IN1(DSR_left_out_t[0]), .IN2(DSR_left_out_t[1]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[1]) );
  MUX21X1 U667 ( .IN1(DSR_left_out_t[18]), .IN2(DSR_left_out_t[19]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[19]) );
  MUX21X1 U668 ( .IN1(DSR_left_out_t[17]), .IN2(DSR_left_out_t[18]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[18]) );
  MUX21X1 U669 ( .IN1(DSR_left_out_t[16]), .IN2(DSR_left_out_t[17]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[17]) );
  MUX21X1 U670 ( .IN1(DSR_left_out_t[15]), .IN2(DSR_left_out_t[16]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[16]) );
  MUX21X1 U671 ( .IN1(DSR_left_out_t[14]), .IN2(DSR_left_out_t[15]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[15]) );
  MUX21X1 U672 ( .IN1(DSR_left_out_t[13]), .IN2(DSR_left_out_t[14]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[14]) );
  MUX21X1 U673 ( .IN1(DSR_left_out_t[12]), .IN2(DSR_left_out_t[13]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[13]) );
  MUX21X1 U674 ( .IN1(DSR_left_out_t[11]), .IN2(DSR_left_out_t[12]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[12]) );
  MUX21X1 U675 ( .IN1(DSR_left_out_t[10]), .IN2(DSR_left_out_t[11]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[11]) );
  MUX21X1 U676 ( .IN1(DSR_left_out_t[9]), .IN2(DSR_left_out_t[10]), .S(
        DSR_left_out_t[31]), .Q(DSR_left_out[10]) );
  AND2X1 U677 ( .IN1(DSR_left_out_t[31]), .IN2(DSR_left_out_t[0]), .Q(
        DSR_left_out[0]) );
endmodule


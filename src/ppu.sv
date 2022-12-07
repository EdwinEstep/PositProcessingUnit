/* ----------------- Posit Processing Unit  -----------------
* 
*  Author:  Edwin Estep
*  Class:   CPE 527
*  
*  This is SystemVerilog implementation for a posit arithmetic unit.
*  Posit standard:  https://posithub.org/docs/posit_standard-2.pdf
*
*
*  Design considerations were taken from:
*  1. https://github.com/manish-kj/PACoGen/tree/master/add
*  2. https://ieeexplore.ieee.org/document/8875154?arnumber=8875154
*/
`timescale 1ns / 1ps


module ppu #(
    N = 32,
    es = 2
) (
    input  logic [N-1:0] in1, in2,
    output logic [N-1:0] out,
    output logic inf, zero,
);
    localparam Bs = $clog2(N); // bit width of 


    logic s1 = in1[N-1];
    logic s2 = in2[N-1];

    //Data Extraction
    logic rc1, rc2;
    logic [Bs-1:0] regime1, regime2;
    logic [es-1:0] e1, e2;
    logic [N-es-1:0] mant1, mant2;
    logic [N-1:0] xin1 = s1 ? -in1 : in1;
    logic [N-1:0] xin2 = s2 ? -in2 : in2;

endmodule
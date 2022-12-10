# PositProcessingUnit
Open-source SystemVerilog HDL model for a Posit-compatible arithmetic unit. HDL in this repository, as well as the associated testbench, was modified from [PACoGen](https://github.com/manish-kj/PACoGen).

Currently, the only change has been to make addition and subtraciton explicitly use carry lookahead logic. The carry lookahead module was borrowed from [nandland's design](https://github.com/nandland/nandland/tree/master/Carry%20Lookahead%20Adder).

`pending synthesis...`

<br>

## Resources
Posit standard:
https://posithub.org/docs/posit_standard-2.pdf

Talk by Posit creator John Gustafson explaining the reasoning and operation:
https://www.youtube.com/watch?v=aP0Y1uAA-2Y

Source contributions for posits:
https://posithub.org/khub_community

PACoGen Parameterized Verilog Hardware generator for posit arithmetic:
https://github.com/manish-kj/PACoGen

The wikipedia page on Unums has a wonderful table of implementations:
https://en.wikipedia.org/wiki/Unum_(number_format)#Unum_III

The logo for Next Generation Arithmetic (credit:  https://posithub.org/images/nga_logo_web.png)


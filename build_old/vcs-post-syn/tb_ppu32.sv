// /* ----------------- Posit Processing Unit Testbench  -----------------
// * 
// *  Author:  Edwin Estep
// *  Class:   CPE 527
// *  
// *  This is a testbench to send simple operands through the PPU and
// *  collect the results.
// */
// `timescale 1ns / 1ps

`timescale 1ns / 1ps
module tb_ppu;
    localparam N=32;
    localparam es=2;

logic [N-1:0] in1, in2;
logic start; 
logic [N-1:0] out;

logic clk;
integer outfile;


// Instantiate the Unit Under Test (UUT)
    ppu #(
        .N(N), 
        .es(es)
    ) uut (
        .in1 (in1 ), 
        .in2 (in2 ), 
        .out (out ), 
        .inf (inf ), 
        .zero(zero)
    );

logic [N-1:0] data1 [1:256];
logic [N-1:0] data2 [1:256];
initial $readmemb("Pin1_32bit.txt",data1);
initial $readmemb("Pin2_32bit.txt",data2);

logic [15:0] i;
	
	initial begin
		// Initialize Inputs
		in1 = 0;
		in2 = 0;
		clk = 0;
		start = 0;
	
		
		// Wait 100 ns for global reset to finish
		#100 i=0;
		#20 start = 1;
			#25600 start = 0;
		#100;
		
		$fclose(outfile);
		$finish;
	end
	
 always #5 clk=~clk;

  always @(posedge clk) begin			
 	in1=data1[i];	
	in2=data2[i];
	if(i==16'hffff)
  	      $finish;
	else i = i + 1;
 end

initial outfile = $fopen("error_32bit.txt", "wb");

logic [N-1:0] result [1:256];
initial $readmemb("Pout_32bit_ES2.txt",result);
logic [N-1:0] diff;
always @(negedge clk) begin
	if(start)begin
     	diff = (result[i-1] > out) ? result[i-1]-out : out-result[i-1];
     	//$fwrite(outfile, "%h\t%h\t%h\t%h\t%d\n",in1, in2, out,result[i-1],diff);
     	$fwrite(outfile, "%d\n",diff);
     	end
end
endmodule





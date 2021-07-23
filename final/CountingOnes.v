`timescale 1 ns/1 ns

module CountingOnes(
input [7:0] in,
output [3:0]glycemicIndex
    );
	 
	
 
 //https://stackoverflow.com/questions/46721548/in-verilog-counting-and-outputting-the-number-of-1s-in-an-8bit-input
 assign  glycemicIndex = in[0] +in[1] + in[2] + in[3] + in[4] + in[5] + in[6] + in[7];
 
 
 

endmodule


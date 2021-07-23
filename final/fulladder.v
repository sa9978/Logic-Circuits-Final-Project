`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:49:15 07/22/2021 
// Design Name: 
// Module Name:    fulladder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module full_adder(
	input a ,
	input b ,
	input ci ,
	output s ,
	output co
    );
	wire w0,w1,w2;
	
	xor  g0(w0,a,b);
	xor  g1(s,w0,ci);
	
	and  g2(w2,a,b);
	and  g3(w1,w0,ci);
	
	or   g4(co,w1,w2);

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:38:26 07/22/2021 
// Design Name: 
// Module Name:    adder_4bit 
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
module adder_4bit(
input [2:0]A , [2:0]B , c,
	output [2:0]S , c3
    );
    wire c1 , c2 ;
	 full_adder f0(A[0],B[0],c,S[0] ,c1);
	 full_adder f1(A[1],B[1],c1 ,S[1],c2);
	 full_adder f2(A[2],B[2],c2 ,S[2],c3);
	 

endmodule

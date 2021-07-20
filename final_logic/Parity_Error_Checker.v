`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:58:23 07/19/2021 
// Design Name: 
// Module Name:    Parity_Error_Checker 
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
module Parity_Error_Checker(
input [5:0]Data,
output error
    );
wire z;
 xnor g1(z,Data[0],Data[1],Data[2],Data[3],Data[4]);
	 
	 assign error = (z==Data[5])? 0 : 1;
	 
endmodule

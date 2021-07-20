`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:17:05 07/19/2021 
// Design Name: 
// Module Name:    GlycemiclndexCalculator 
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
module GlycemiclndexCalculator(
input [7:0]bloodSensor,
output [3:0]glycemicIndex
    );
	//wire[7:0]o;
	reg [7:0]o;
	
	  AbsoluteCalculator m(bloodSensor,o);
	  CountingOnes n(o,glycemicIndex);
	 
	 




endmodule

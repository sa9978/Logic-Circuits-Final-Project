`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:26:05 07/19/2021 
// Design Name: 
// Module Name:    FallingDetector 
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
module FallingDetector(
input [7:0]fdSensorValue,
input [7:0]fdFactoryValue,
output fallDetected
    );
	 
	 wire lt,eq,gt;
	 wire l,e,g;
	 assign l=1;
	 assign e=1;
	 assign g=1;
	 
	 comparator8 s(fdSensorValue,fdFactoryValue,l,e,g,lt,et,gt);
	 
	 or
	 g1(fallDetected,eq,gt);
	 


endmodule

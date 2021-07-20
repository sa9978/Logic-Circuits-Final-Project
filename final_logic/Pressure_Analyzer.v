`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:05:19 07/19/2021 
// Design Name: 
// Module Name:    Pressure_Analyzer 
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
module Pressure_Analyzer(
input [5:0]pData,
output pWarning
    );


 wire s1,s2,s3,s4;
 wire [5:0] NOT_pressureData;
 
 assign NOT_pressureData=~(pData);
  and
   g1(s1,NOT_pressureData[0],pData[1]),
	g2(s2,pData[0],NOT_pressureData[1],NOT_pressureData[3]),
	g3(s3,pData[0],NOT_pressureData[1],NOT_pressureData[4]),
	g4(s4,pData[0],NOT_pressureData[1],NOT_pressureData[2]);
	
	or
	 g5(pWarning,s1,s2,s3,s4);
	
endmodule



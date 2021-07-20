`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:11:04 07/19/2021 
// Design Name: 
// Module Name:    pressureAbnormalityDetector 
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
module pressureAbnormalityDetector( 
input [5:0]pressureData,
output presureAbnormality
    );
wire a,b;

 Parity_Error_Checker s(pressureData,a);
 Pressure_Analyzer(pressureData,b);
 assign presureAbnormality = a&b ;
  
endmodule

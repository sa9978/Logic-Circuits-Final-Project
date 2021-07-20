`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:04:02 07/19/2021 
// Design Name: 
// Module Name:    AbsoluteCalculator 
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
module AbsoluteCalculator(
input [7:0]bloodSensor,
output[7:0]o
    );
assign o =bloodSensor[7] ? -bloodSensor : bloodSensor;

endmodule

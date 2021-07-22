`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:10:51 07/22/2021 
// Design Name: 
// Module Name:    register 
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
module register (

	input        rst ,
	input        clk ,
	input        en ,
	input  [6:0] din ,
	output [6:0] qout
);

	reg [6:0] qout;
	
	always @ (posedge clk or negedge rst)
		begin 
			if(rst == 0)
				qout <= 4'b0000000;
			else if(en)
				qout <= din;
		end

endmodule


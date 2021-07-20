`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:23:17 07/19/2021 
// Design Name: 
// Module Name:    comparator8 
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
module comparator8 (input [7:0] p ,
	input [8:0] q ,
	input l ,
	input e ,
	input g ,
	output lt ,
	output et ,
	output gt
);


	wire [2:0] x;
	wire [2:0] y;

	assign x[1:0] = p[7:6];
	assign y[1:0] = q[7:6];
	assign x[2] = 1'b0;
	assign y[2] = 1'b0;

wire w1,w2,w3,w4,w5,w6;
	comparator3 c1(p[2:0],q[2:0],l,e,g,w1,w2,w3);
	comparator3 c2(p[5:3],q[5:3],w1,w2,w3,w4,w5,w6);
	comparator3 c3(x[2:0],y[2:0],w3,w4,w5,lt,et,gt);

endmodule

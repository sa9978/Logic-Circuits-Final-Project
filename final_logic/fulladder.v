`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:51:18 07/20/2021 
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
module fulladder(
 	input a ,
	input b ,
	input ci ,
	output s ,
	output co
); 

	/* write your code here */
	
	/* write your code here */
	
	wire x,y,z;
	xor g1(x,a,b);
	xor g2(s,x,ci);
	and g3(y,a,b);
	and g4(z,x,ci);
	or  g5(co,y,z);

endmodule

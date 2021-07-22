`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:11:30 07/22/2021
// Design Name:   EightBitRippleCarryAdder
// Module Name:   D:/term 4/final logic git/final-logic-project/final/TBEightBitRippleCarryAdder.v
// Project Name:  module2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: EightBitRippleCarryAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TBEightBitRippleCarryAdder;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	wire [7:0]S ;
	wire c8;

	// Instantiate the Unit Under Test (UUT)
	EightBitRippleCarryAdder uut (
		.A(A) , .B(B) , .S(S) , .c8(c8)
	);

	initial begin
		A = 8'b10101010;
		B = 8'b01010100;
		#10
		
		A = 8'b10010010;
		B = 8'b10001001;
		#10
	
		$finish;

	end
      
endmodule


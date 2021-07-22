`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:47:31 07/22/2021
// Design Name:   Multiplier4x4
// Module Name:   D:/term 4/final logic git/final-logic-project/final/TBMultiplier4x4.v
// Project Name:  module2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Multiplier4x4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TBMultiplier4x4;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	wire [7:0]R;

	// Instantiate the Unit Under Test (UUT)
	Multiplier4x4 uut (
		.A(A) , .B(B) , .R(R)
	);

	initial begin
		A = 4'b0000;
		B = 4'b1010;
		#10
		
		A = 4'b0101;
		B = 4'b1010;
		#10
		
		A = 4'b0110;
		B = 4'b1001;
		#10
		
		$finish;
	end
      
endmodule


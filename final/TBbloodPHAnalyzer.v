`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:22:40 07/22/2021
// Design Name:   bloodPHAnalyzer
// Module Name:   D:/term 4/final logic git/final-logic-project/final/TBbloodPHAnalyzer.v
// Project Name:  module2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bloodPHAnalyzer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TBbloodPHAnalyzer;

	// Inputs
	reg [3:0] bloodPH;

	// Outputs
	wire abnormalityP;
	wire abnormalityQ;

	// Instantiate the Unit Under Test (UUT)
	bloodPHAnalyzer uut (
		.bloodPH(bloodPH), 
		.abnormalityP(abnormalityP), 
		.abnormalityQ(abnormalityQ)
	);

	initial begin
		// Initialize Inputs
		bloodPH = 4'b0000;
		#10
		bloodPH = 4'b0110;
		#10
		bloodPH = 4'b0111;
		#10
		bloodPH = 4'b1000;
		#10
		bloodPH = 4'b1001;
		#10
		bloodPH = 4'b1111;
		#10
		$finish;

	end
      
endmodule


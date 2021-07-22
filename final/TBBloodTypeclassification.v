`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:15:41 07/22/2021
// Design Name:   BloodTypeclassification
// Module Name:   D:/term 4/final logic git/final-logic-project/final/TBBloodTypeclassification.v
// Project Name:  module2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BloodTypeclassification
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TBBloodTypeclassification;

	// Inputs
	reg [2:0] blood_type;

	// Outputs
	wire blood_output;

	// Instantiate the Unit Under Test (UUT)
	BloodTypeclassification uut (
		.blood_type(blood_type), 
		.blood_output(blood_output)
	);

	initial begin
		// Initialize Inputs
		blood_type = 3'b000;
		#20
		blood_type = 3'b001;
		#20
		blood_type = 3'b010;
		#20
		blood_type = 3'b011;
		#20
		blood_type = 3'b100;
		#20
		blood_type = 3'b101;
		#20
		blood_type = 3'b110;
		#20
		blood_type = 3'b111;
		#20
		$finish;
		end
      
endmodule


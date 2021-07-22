`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:04:35 07/22/2021
// Design Name:   bloodAbnormalityDetector
// Module Name:   D:/term 4/final logic git/final-logic-project/final/TBbloodAbnormalityDetector.v
// Project Name:  module2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bloodAbnormalityDetector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TBbloodAbnormalityDetector;

	// Inputs
	reg [3:0] bloodPH;
	reg [2:0] bloodType;

	// Outputs
	wire bloodAbnormality;

	// Instantiate the Unit Under Test (UUT)
	bloodAbnormalityDetector uut (
		.bloodPH(bloodPH), 
		.bloodType(bloodType), 
		.bloodAbnormality(bloodAbnormality)
	);

	initial begin
		bloodType = 3'b000; //AB+
		bloodPH = 4'b0111; //7 normal
		#10
		bloodType = 3'b000; //AB+
		bloodPH = 4'b0110; //6 abnormal
		#10
		
		bloodType = 3'b010; //A+
		bloodPH = 4'b0111; //7 normal
		#10
		bloodType = 3'b010; //A+
		bloodPH = 4'b0110; //6 abnormal
		#10
		
		bloodType = 3'b100; //B+
		bloodPH = 4'b0111; //7 normal
		#10
		bloodType = 3'b100; //B+
		bloodPH = 4'b0101; //5 abnormal
		#10
		
		bloodType = 3'b110; //B+
		bloodPH = 4'b0111; //7 normal
		#10
		bloodType = 3'b110; //B+
		bloodPH = 4'b0101; //5 abnormal
		#10
		
		$finish;
		
	end
      
endmodule


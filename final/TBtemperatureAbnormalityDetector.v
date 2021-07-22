`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:45:00 07/22/2021
// Design Name:   temperatureAbnormalityDetector
// Module Name:   D:/term 4/final logic git/final-logic-project/final/TBtemperatureAbnormalityDetector.v
// Project Name:  module2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: temperatureAbnormalityDetector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TBtemperatureAbnormalityDetector;

	// Inputs
	reg [4:0] factotyBaseTemp;
	reg [3:0] factotyTempCoef;
	reg [3:0] tempSensorValue;

	// Outputs
	wire lowTempAbnormality;
	wire highTempAbnormality;

	// Instantiate the Unit Under Test (UUT)
	temperatureAbnormalityDetector uut (
		.factotyBaseTemp(factotyBaseTemp), 
		.factotyTempCoef(factotyTempCoef), 
		.tempSensorValue(tempSensorValue), 
		.lowTempAbnormality(lowTempAbnormality), 
		.highTempAbnormality(highTempAbnormality)
	);

	initial begin
		// Initialize Inputs
	factotyBaseTemp = 5'b11111;
	factotyTempCoef = 4'b1111;
	tempSensorValue = 4'b1111;
	#10
	
	factotyBaseTemp = 5'b10000;
	factotyTempCoef = 4'b1000;
	tempSensorValue = 4'b1000;
	#10
	
	factotyBaseTemp = 5'b00000;
	factotyTempCoef = 4'b0000;
	tempSensorValue = 4'b0000;
	#10

		
	$finish;
	end
      
endmodule


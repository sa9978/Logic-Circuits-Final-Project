`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:16:24 07/22/2021
// Design Name:   temperatureCalculator
// Module Name:   D:/term 4/final logic git/final-logic-project/final/TBtemperatureCalculator.v
// Project Name:  module2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: temperatureCalculator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TBtemperatureCalculator;

	// Inputs
	reg [4:0] factotyBaseTemp;
	reg [3:0] factotyTempCoef;
	reg [3:0] tempSensorValue;

	// Outputs
	wire [7:0] temperature;

	// Instantiate the Unit Under Test (UUT)
	temperatureCalculator uut (
		.factotyBaseTemp(factotyBaseTemp), 
		.factotyTempCoef(factotyTempCoef), 
		.tempSensorValue(tempSensorValue), 
		.temperature(temperature)
	);

	initial begin
		// Initialize Inputs
		factotyBaseTemp = 0;
		factotyTempCoef = 0;
		tempSensorValue = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


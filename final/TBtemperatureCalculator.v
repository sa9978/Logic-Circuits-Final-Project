`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:26:35 07/22/2021
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
	factotyBaseTemp = 5'b10101;
	factotyTempCoef = 4'b1111;
	tempSensorValue = 4'b1100;
	#10
	
	factotyBaseTemp = 5'b10011;
	factotyTempCoef = 4'b1011;
	tempSensorValue = 4'b1010;
	#10
	
	$finish;
	end
      
endmodule


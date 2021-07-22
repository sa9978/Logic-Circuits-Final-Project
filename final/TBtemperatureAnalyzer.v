`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:39:57 07/22/2021
// Design Name:   temperatureAnalyzer
// Module Name:   D:/term 4/final logic git/final-logic-project/final/TBtemperatureAnalyzer.v
// Project Name:  module2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: temperatureAnalyzer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TBtemperatureAnalyzer;

	// Inputs
	reg [7:0] temperature;

	// Outputs
	wire lowTempAbnormality;
	wire highTempAbnormality;

	// Instantiate the Unit Under Test (UUT)
	temperatureAnalyzer uut (
		.temperature(temperature), 
		.lowTempAbnormality(lowTempAbnormality), 
		.highTempAbnormality(highTempAbnormality)
	);

	initial begin
		temperature = 8'b00100000; //32
		#10
		
		temperature = 8'b00100101; //37
		#10
		
		temperature = 8'b00101000; //40
		#10
		$finish;

	end
      
endmodule


`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:01:16 07/22/2021
// Design Name:   HealthcareSystemPhase1
// Module Name:   D:/term 4/final logic git/final-logic-project/final/TBHealthcareSystemPhase1.v
// Project Name:  module2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: HealthcareSystemPhase1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TBHealthcareSystemPhase1;

	// Inputs
	reg [5:0] pressureData;
	reg [3:0] bloodPH;
	reg [2:0] bloodType;
	reg [7:0] fdSensorValue;
	reg [7:0] fdFactoryValue;
	reg [7:0] bloodSensor;
	reg [4:0] factotyBaseTemp;
	reg [3:0] factotyTempCoef;
	reg [3:0] tempSensorValue;

	// Outputs
	wire presureAbnormality;
	wire bloodAbnormality;
	wire [3:0] glycemicIndex;
	wire lowTempAbnormality;
	wire highTempAbnormality;

	// Instantiate the Unit Under Test (UUT)
	HealthcareSystemPhase1 uut (
		.pressureData(pressureData), 
		.bloodPH(bloodPH), 
		.bloodType(bloodType), 
		.fdSensorValue(fdSensorValue), 
		.fdFactoryValue(fdFactoryValue), 
		.bloodSensor(bloodSensor), 
		.factotyBaseTemp(factotyBaseTemp), 
		.factotyTempCoef(factotyTempCoef), 
		.tempSensorValue(tempSensorValue), 
		.presureAbnormality(presureAbnormality), 
		.bloodAbnormality(bloodAbnormality), 
		.glycemicIndex(glycemicIndex), 
		.lowTempAbnormality(lowTempAbnormality), 
		.highTempAbnormality(highTempAbnormality)
	);

	initial begin
		// Initialize Inputs
		pressureData = 0;
		bloodPH = 0;
		bloodType = 0;
		fdSensorValue = 0;
		fdFactoryValue = 0;
		bloodSensor = 0;
		factotyBaseTemp = 0;
		factotyTempCoef = 0;
		tempSensorValue = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


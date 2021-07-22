`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:53:50 07/22/2021
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
	wire fallDetected;

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
		.highTempAbnormality(highTempAbnormality), 
		.fallDetected(fallDetected)
	);

	initial begin
		// Initialize Inputs
		pressureData=6'b001000;
		bloodPH = 4'b0000;
		bloodType = 3'b000;
		fdSensorValue= 8'b00001000;
		fdFactoryValue=8'b00100000;
		factotyBaseTemp = 5'b10101;
	   factotyTempCoef = 4'b1111;
	   tempSensorValue = 4'b1100;
		#10
		
		
		pressureData=6'b010000;
		bloodPH = 4'b0110;
		bloodType = 3'b001;
		fdSensorValue= 8'b00100000;
      fdFactoryValue =8'b00100000;
		factotyBaseTemp = 5'b10011;
	   factotyTempCoef = 4'b1011;
	   tempSensorValue = 4'b1010;
		bloodSensor = 8'b10101010;
		#10
		
		
		pressureData=6'b010101;
		bloodPH = 4'b0111;
		bloodType = 3'b010;
		fdSensorValue =8'b00101000;
		fdFactoryValue=8'b00100000;
		factotyBaseTemp = 5'b11011;
	   factotyTempCoef = 4'b1111;
	   tempSensorValue = 4'b1110;
		bloodSensor = 8'b00010010;
		#10

		$finish;

	end
      
endmodule


`timescale 1 ns/1 ns
module temperatureAbnormalityDetector(
 factotyBaseTemp,
 factotyTempCoef,
 tempSensorValue,
 temperatureAbnormality);
	input [4:0] factotyBaseTemp;
	input [3:0] factotyTempCoef;
	input [3:0] tempSensorValue;
	output lowTempAbnormality;
	output highTempAbnormality;
	
	wire [7:0] temperature;
	temperatureCalculator t1(.factotyBaseTemp(factotyBaseTemp) , .factotyTempCoef(factotyTempCoef) , .tempSensorValue(tempSensorValue) , .temperature(temperature) );
	
	temperatureAnalyzer t2(.temperature(temperature) , .lowTempAbnormality(lowTempAbnormality) , .highTempAbnormality(highTempAbnormality) );
	
endmodule

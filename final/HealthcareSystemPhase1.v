`timescale 1 ns/1 ns
`timescale 1 ns/1 ns
module HealthcareSystemPhase1(
 input [5:0] pressureData,
input [3:0] bloodPH,
input [2:0] bloodType,
input [7:0] fdSensorValue,
input [7:0] fdFactoryValue,
input [7:0] bloodSensor,
input [4:0] factotyBaseTemp,
input [3:0] factotyTempCoef,
input [3:0] tempSensorValue,
output presureAbnormality,
output bloodAbnormality,
output [3:0] glycemicIndex,
output lowTempAbnormality , highTempAbnormality);


	pressureAbnormalityDetector o1 (.pressureData ( pressureData ) , .presureAbnormality ( presureAbnormality ));

	bloodAbnormalityDetector o2(.bloodPH( bloodPH ) , .bloodType ( bloodType ) , .bloodAbnormality ( bloodAbnormality ));
 
	FallingDetector o3(.fdSensorValue ( fdSensorValue ) ,.fdFactoryValue ( fdFactoryValue ) ,.fallDetected ( fallDetected ));
 
	temperatureAbnormalityDetector o4(.factotyBaseTemp ( factotyBaseTemp),.factotyTempCoef ( factotyTempCoef ) , .tempSensorValue ( tempSensorValue ) , .lowTempAbnormality( lowTempAbnormality ), .highTempAbnormality ( highTempAbnormality ));
 
 	GlycemiclndexCalculator o5 (.bloodSensor ( bloodSensor ),.glycemicIndex ( glycemicIndex ));

endmodule

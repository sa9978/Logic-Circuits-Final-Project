`timescale 1 ns/1 ns
module fallingDetector(
 fdSensorValue,
 fdFactoryValue,
 fallDetected);
input [7:0] fdSensorValue;
input [7:0] fdFactoryValue;
output fallDetected;
	 
	 wire lt,eq,gt;
	 
	 comparator8 s(fdSensorValue,fdFactoryValue,lt,eq,gt);
	 
	 or
	 g1(fallDetected,eq,gt);
	 


endmodule

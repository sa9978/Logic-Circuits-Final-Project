`timescale 1 ns/1 ns
module FallingDetector(
input [7:0]fdSensorValue,
input [7:0]fdFactoryValue,
output fallDetected
    );
	 
	 wire lt,eq,gt;
	 wire l,e,g;
	 assign l=1;
	 assign e=1;
	 assign g=1;
	 
	 comparator8 s(fdSensorValue,fdFactoryValue,l,e,g,lt,et,gt);
	 
	 or
	 g1(fallDetected,eq,gt);
	 


endmodule

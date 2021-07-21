`timescale 1 ns/1 ns

module GlycemiclndexCalculator(
input [7:0]bloodSensor,
output [3:0]glycemicIndex
    );
	//wire[7:0]o;
	reg [7:0]o;
	
	  AbsoluteCalculator m(bloodSensor,o);
	  CountingOnes n(o,glycemicIndex);
	 
	 

endmodule


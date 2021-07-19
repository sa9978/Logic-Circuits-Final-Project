`timescale 1 ns/1 ns
module bloodAbnormalityDetector(
 bloodPH,
 bloodType,
 bloodAbnormality);
input [3:0] bloodPH;
input [2:0] bloodType;
output bloodAbnormality;
wire p , q , c;
   bloodPHAnalyzer b0(.bloodPH ( bloodPH ) , .abnormalityP ( p ) , .abnormalityQ ( q ) );
	
   BloodTypeclassification b1(.bloodType ( bloodType ) , .bloodClass ( c ) );
	
	MUX2x1 b2(.sel ( c ) , .in0 ( p ) , .in1 ( q ) , .y ( bloodAbnormality ) );
endmodule

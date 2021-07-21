`timescale 1 ns/1 ns
module bloodPHAnalyzer(
 bloodPH,
 abnormalityP,
 abnormalityQ);
input [3:0] bloodPH;
output abnormalityP;
output abnormalityQ;

	wire [15:0] w , p , q;
	decoder4x16 d(.i(bloodPH) , .o(w) );
	
	nor o1(abnormalityP , w[7] , w[8]);
	nor o2(abnormalityQ , w[6] , w[7] , w[8] , w[9]);
		

endmodule

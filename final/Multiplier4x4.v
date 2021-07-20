`timescale 1ns / 1ps
module Multiplier4x4(
	input [3:0]A , [3:0]B ,
	output [7:0]R
    );
	wire [14:0]w;
	 and
		g0(R[0] , A[0] , B[0]),
		
		g1(w[0] , A[0] , B[1]),
		g2(w[1] , A[0] , B[2]),   
		g3(w[2] , A[0] , B[3]),
		
		g4(w[3] , A[1] , B[0]),
		g5(w[4] , A[1] , B[1]),
		g6(w[5] , A[1] , B[2]),
		g7(w[6] , A[1] , B[3]),
		
		g8(w[7] , A[2] , B[0]),
		g9(w[8] , A[2] , B[1]),
		g10(w[9] , A[2] , B[2]),
		g11(w[10] , A[2] , B[3]),
		
		g12(w[11] , A[3] , B[0]),
		g13(w[12] , A[3] , B[1]),
		g14(w[13] , A[3] , B[2]),
		g15(w[14] , A[3] , B[3]);
		
		wire [3:0]wa0 ;
		wire[3:0]s0;
		wire c40;
		assign wa0[2:0] = w[2:0];
		assign wa0[3] = 0;
		FourBitRippleCarryAdder f0(.A(wa0) , .B(w[6:3]) , .c(1'b0) , .S(s0) , .c4(c40) );
		assign R[1] = s0[0];
		
		wire [3:0]wa1 ;
		wire [3:0]s1;
		wire c41;
		assign wa1[2:0] = s0[3:1];
		assign wa1[3] = c40;
		FourBitRippleCarryAdder f1(.A(wa1) , .B(w[10:7]) , .c(1'b0) , .S(s1) , .c4(c41) );
		assign R[2] = s1[0];
		
		wire [3:0]wa2 ;
		wire [3:0]s2;
		wire c42;
		assign wa2[2:0] = s1[3:1];
		assign wa2[3] = c41;
		FourBitRippleCarryAdder f2(.A(wa2) , .B(w[14:11]) , .c(1'b0) , .S(s2) , .c4(c42) );
		assign R[3:6] = s2[3:0];
		assign R[7] = c42;		
	
endmodule

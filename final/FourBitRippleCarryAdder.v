`timescale 1 ns/1 ns
module FourBitRippleCarryAdder(
	input [3:0]A , [3:0]B , c,
	output [3:0]S , c4
    );
	 wire c1 , c2 , c3;
	 FulAdder f0(.A(A[0]) , .B(B[0]) , .cl(c) , .S(S[0]) , .C(c1) );
	 FulAdder f1(.A(A[1]) , .B(B[1]) , .cl(c1) , .S(S[1]) , .C(c2) );
	 FulAdder f2(.A(A[2]) , .B(B[2]) , .cl(c2) , .S(S[2]) , .C(c3) );
	 FulAdder f3(.A(A[3]) , .B(B[3]) , .cl(c3) , .S(S[3]) , .C(c4) );
	 

endmodule

`timescale 1 ns/1 ns
module EightBitRippleCarryAdder(
input [7:0]A , [7:0]B ,
	output [7:0]S , c8
    );
	 wire c1 , c2 , c3 , c4 , c5 , c6 , c7 , c;
	 assign c = 1'b0;
	 FulAdder f0(.A(A[0]) , .B(B[0]) , .cl(c) , .S(S[0]) , .C(c1) );
	 FulAdder f1(.A(A[1]) , .B(B[1]) , .cl(c1) , .S(S[1]) , .C(c2) );
	 FulAdder f2(.A(A[2]) , .B(B[2]) , .cl(c2) , .S(S[2]) , .C(c3) );
	 FulAdder f3(.A(A[3]) , .B(B[3]) , .cl(c3) , .S(S[3]) , .C(c4) );
	 FulAdder f4(.A(A[4]) , .B(B[4]) , .cl(c4) , .S(S[4]) , .C(c5) );
	 FulAdder f5(.A(A[5]) , .B(B[5]) , .cl(c5) , .S(S[5]) , .C(c6) );
	 FulAdder f6(.A(A[6]) , .B(B[6]) , .cl(c6) , .S(S[6]) , .C(c7) );
	 FulAdder f7(.A(A[7]) , .B(B[7]) , .cl(c7) , .S(S[7]) , .C(c8) );
	 


endmodule

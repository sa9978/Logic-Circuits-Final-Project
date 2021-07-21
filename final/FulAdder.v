`timescale 1 ns/1 ns
module FulAdder(
	input A , B , cl,
	output S , C
    );
	wire AxB , AdB , d1 , d2;
	xor
		g0(AxB , A , B),
		g1(S , cl , AxB);
		
	and
		g2(AdB , A , B),
		g3(d1 , cl , AdB),
		g4(d2 , A , B);
		
	or
		g5(C , d1 , d2);


endmodule

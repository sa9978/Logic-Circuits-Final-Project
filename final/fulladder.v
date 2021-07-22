`timescale 1 ns/1 ns



module full_adder(
	input a ,
	input b ,
	input ci ,
	output s ,
	output co
    );
	wire w0,w1,w2;
	
	xor  g0(w0,a,b);
	xor  g1(s,w0,ci);
	
	and  g2(w2,a,b);
	and  g3(w1,w0,ci);
	
	or   g4(co,w1,w2);

endmodule

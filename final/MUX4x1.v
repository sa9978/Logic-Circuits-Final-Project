`timescale 1 ns/1 ns
module MUX4x1(
	input a , b , c , d , [1:0]sel,
	output y
    );
	 wire ns0 , ns1;
	 assign ns0 = ~sel[0];
	 assign ns1 = ~sel[1];
	 
	 wire p0 , p1 , p2 , p3;
	 and
		g0( p0 , a , ns0 , ns1),
		g1( p1 , b , sel[0] , ns1),
		g2( p2 , c , ns0 , sel[1]),
		g3( p3 , d , sel[0] , sel[1]);
		
	or
		g4(y , p0 , p1 , p2 , p3);
		

endmodule

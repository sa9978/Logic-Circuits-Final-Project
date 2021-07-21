`timescale 1 ns/1 ns

module fulladder(
 	input a ,
	input b ,
	input ci ,
	output s ,
	output co
); 

	/* write your code here */
	
	/* write your code here */
	
	wire x,y,z;
	xor g1(x,a,b);
	xor g2(s,x,ci);
	and g3(y,a,b);
	and g4(z,x,ci);
	or  g5(co,y,z);

endmodule


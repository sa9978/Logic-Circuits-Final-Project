`timescale 1 ns/1 ns
module adder_3bit(
A , B , C_in ,Sum ,C_out);
	input [2:0] A,B;
	input C_in;
	output [2:0] Sum;
	output C_out;	
	
	wire C1,C2;
	//C3;
	
	fulladder bit1 (Sum[0], C1, A[0], B[0],C_in);
	fulladder bit2 (Sum[1], C2, A[1], B[1],C1 );
	//fulladder bit3 (Sum[2], C3, A[2], B[2],C2 );
	fulladder bit4 (Sum[2], C_out, A[2], B[2],C2 );


endmodule

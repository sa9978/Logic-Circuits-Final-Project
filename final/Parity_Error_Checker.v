`timescale 1 ns/1 ns
module parityErrorChecker(
 data,
 error);
input [5:0] data;
output error;


wire z;
 xnor g1(z,data[0],data[1],data[2],data[3],data[4]);
	 
	 assign error = (z==data[5])? 1 : 0;
	


endmodule

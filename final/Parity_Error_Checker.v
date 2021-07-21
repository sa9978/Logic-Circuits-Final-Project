`timescale 1 ns/1 ns
module Parity_Error_Checker(
input [5:0]Data,
output error
    );
wire z;
 xnor g1(z,Data[0],Data[1],Data[2],Data[3],Data[4]);
	 
	 assign error = (z==Data[5])? 0 : 1;
	 

endmodule

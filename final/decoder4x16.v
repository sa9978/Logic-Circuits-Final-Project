`timescale 1 ns/1 ns
module decoder4x16(
	input [3:0]i ,
	output [15:0]o
    );
	 wire i3 , i2 , i1 , i0;
	 assign i3 = ~i[3];
	 assign i2 = ~i[2];
	 assign i1 = ~i[1];
	 assign i0 = ~i[0];
	 
	 and
	 de0(o[0] , i3 , i2 , i1 , i0),
	 de1(o[1] , i3 , i2 , i1 , i[0]),
	 de2(o[2] , i3 , i2 , i[1] , i0),
	 de3(o[3] , i3 , i2 , i[1] , i[0]),
	 de4(o[4] , i3 , i[2] , i1 , i0),
	 de5(o[5] , i3 , i[2] , i1 , i[0]),
	 de6(o[6] , i3 , i[2] , i[1] , i0),
	 de7(o[7] , i3 , i[2] , i[1] , i[0]),
	 de8(o[8] , i[3] , i2 , i1 , i0),
	 de9(o[9] , i[3] , i2 , i1 , i[0]),
	 de10(o[10] , i[3] , i2 , i[1] , i0),
	 de11(o[11] , i[3] , i2 , i[1] , i[0]),
	 de12(o[12] , i[3] , i[2] , i1 , i0),
	 de13(o[13] , i[3] , i[2] , i1 , i[0]),
	 de14(o[14] , i[3] , i[2] , i[1] , i0),
	 de15(o[15] , i[3] , i[2] , i[1] , i[0]);
	 
endmodule

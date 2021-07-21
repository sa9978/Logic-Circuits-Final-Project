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
	 de0(o[0] , i0 , i1 , i2 , i3),
	 de1(o[1] , i0 , i1 , i2 , i[3]),
	 de2(o[2] , i0 , i1 , i[2] , i3),
	 de3(o[3] , i0 , i1 , i[2] , i[3]),
	 de4(o[4] , i0 , i[1] , i2 , i3),
	 de5(o[5] , i0 , i[1] , i2 , i[3]),
	 de6(o[6] , i0 , i[1] , i[2] , i3),
	 de7(o[7] , i0 , i[1] , i[2] , i[3]),
	 de8(o[8] , i[0] , i1 , i2 , i3),
	 de9(o[9] , i[0] , i1 , i2 , i[3]),
	 de10(o[10] , i[0] , i1 , i[2] , i3),
	 de11(o[11] , i[0] , i1 , i[2] , i[3]),
	 de12(o[12] , i[0] , i[1] , i2 , i3),
	 de13(o[13] , i[0] , i[1] , i2 , i[3]),
	 de14(o[14] , i[0] , i[1] , i[2] , i3),
	 de15(o[15] , i[0] , i[1] , i[2] , i[3]);
	 
endmodule

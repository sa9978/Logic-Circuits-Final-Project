`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:21:48 07/19/2021 
// Design Name: 
// Module Name:    comparator3 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
module comparator3 (
	input [2:0] A ,
	input [2:0] B ,
	input l ,
	input e ,
	input g ,
	output lt ,
	output et ,
	output gt
);

	/* write your code here */
	
	/* write your code here */
	 
	
	wire e1,e2,e3,etotal;
	xnor
	g1(e1,A[0],B[0]),
	g2(e2,A[1],B[1]),
	g3(e3,A[2],B[2]);
	and
	g4(etotal,e1,e2,e3),
	g5(et,etotal,e);
	not 
	g6(a0_not,A[0]),
	g7(a1_not,A[1]),
   g8(a2_not,A[2]),
   g9(b0_not,B[0]),
   g10(b1_not,B[1]),
   g11(b2_not,B[2]);
	
	wire y1,y2,y3,y4,ytotal;
	
	and
	g12(y1,A[2],b2_not),
	g13(y2,A[1],b1_not,e3),
	g14(y3,A[0],b0_not,e2,e3);
	
	or
	g15(ytotal,y1,y2,y3),
	g17(gt,y4,ytotal);
	and
	g16(y4,g,etotal);
	
	wire x1,x2,x3,x4,xtotal;
	
	and
	g177(x1,a2_not,B[2]),
	g18(x2,a1_not,B[1],e3),
	g19(x3,a0_not,B[0],e3,e2);
	
	
	or
	g20(xtotal,x1,x2,x3),
	g22(lt,x4,xtotal);
	and
	g21(x4,l,etotel);

endmodule



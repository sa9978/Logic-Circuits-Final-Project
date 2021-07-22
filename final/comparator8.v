`timescale 1 ns/1 ns
module comparator8 (input [7:0] p ,
	input [7:0] q ,
	
	output lt ,
	output et ,
	output gt
);
wire l,e,g;

 assign l=1'b0;
 assign e=1'b1;
 assign g=1'b0;
 wire [2:0] x;
	wire [2:0] y;

	assign x[1:0] = p[7:6];
	assign y[1:0] = q[7:6];
	assign x[2] = 1'b0;
	assign y[2] = 1'b0;

wire w1,w2,w3,w4,w5,w6;
	comparator3 c1(p[2:0],q[2:0],l,e,g,w1,w2,w3);
	comparator3 c2(p[5:3],q[5:3],w1,w2,w3,w4,w5,w6);
	comparator3 c3(x[2:0],y[2:0],w4,w5,w6,lt,et,gt);

endmodule

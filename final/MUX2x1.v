`timescale 1 ns/1 ns
module MUX2x1(
  input in0 , in1 , sel,
  output y
);
	wire [1:0]w , sn;
	assign sn = ~sel;
	and
		(w[0],in0,sn),
		(w[1],in1,sel);
	or
		(y,w[0],w[1]);

endmodule

`timescale 1 ns/1 ns

module BloodTypeclassification(
	input [2:0]blood_type,
	output blood_output
    );
	 MUX4x1 m( .a(blood_type[2]) , .b( blood_type[2]) ,.c( blood_type[2]) , .d (blood_type[2]) , .sel (blood_type[1:0]) , .y( blood_output ));
	 // a , b , c , d , sel , y


endmodule

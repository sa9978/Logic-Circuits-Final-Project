`timescale 1 ns/1 ns

module BloodTypeclassification(
	input [2:0]bloodType,
	output bloodClass
    );
	 MUX4x1 m( .a(bloodType[2]) , .b( bloodType[2]) ,.c( bloodType[2]) , .d (bloodType[2]) , .sel (bloodType[1:0]) , .y( bloodClass ));
	 // a , b , c , d , sel , y


endmodule

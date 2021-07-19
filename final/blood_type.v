`timescale 1ns / 1ps

module BloodTypeclassification(
	input [2:0]blood_type,
	output blood_output
    );
	 MUX4x1 m( blood_type[2] , blood_type[2] , blood_type[2] , blood_type[2] , blood_type[1:0] , blood_output);
	 // a , b , c , d , sel , y


endmodule

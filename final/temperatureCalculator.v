`timescale 1 ns/1 ns
module temperatureCalculator(
 factotyBaseTemp,
 factotyTempCoef,
 tempSensorValue,
 temperature);
input [4:0] factotyBaseTemp;
input [3:0] factotyTempCoef;
input [3:0] tempSensorValue;
output [7:0] temperature;

	wire [7:0]w0;
	wire [7:0]w1;
	wire [7:0]w2;
	wire c;
	assign w2[7:5]=3'b000;
	assign w2[4:0]=factotyBaseTemp;

	Multiplier4x4 m(.A(tempSensorValue) , .B(factotyTempCoef) , .R(w0) );
	assign w1[7:5]=3'b000;
	assign w1[4:0]= w0[7:3];


	EightBitRippleCarryAdder e(.A(w2) , .B(w1) , .S(temperature) , .c8(c));

endmodule

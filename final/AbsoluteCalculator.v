`timescale 1 ns/1 ns
module AbsoluteCalculator(
input [7:0]bloodSensor,
output[7:0]o
    );

//https://www.fpgarelated.com/showthread/comp.arch.fpga/92410-1.php
assign o = bloodSensor[7]?(~bloodSensor+1'b1):bloodSensor;
endmodule

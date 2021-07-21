`timescale 1 ns/1 ns
module AbsoluteCalculator(
input [7:0]bloodSensor,
output[7:0]o
    );
assign o =bloodSensor[7] ? -bloodSensor : bloodSensor;

endmodule

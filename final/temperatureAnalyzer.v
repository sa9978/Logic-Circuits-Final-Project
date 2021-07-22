`timescale 1 ns/1 ns
module temperatureAnalyzer(
 temperature,
 lowTempAbnormality , highTempAbnormality);
input [7:0] temperature;
output lowTempAbnormality;
output highTempAbnormality;
 assign lowTempAbnormality = (temperature < 35);
 assign highTempAbnormality = (temperature > 39);
endmodule

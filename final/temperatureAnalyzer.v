`timescale 1 ns/1 ns
module temperatureAnalyzer(
 input [7:0] temperature,
 output lowTempAbnormality , highTempAbnormality
 );
	
	assign highTempAbnormality = ( temperature > 39) ? 1'b1 : 1'b0;
	assign lowTempAbnormality = ( temperature < 35) ? 1'b1 : 1'b0;
	
	//assign Z = (condition) ? A   :   B  ;
	 //                       true   false
endmodule

`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:16:42 07/22/2021 
// Design Name: 
// Module Name:    TBfallingDetector 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module TBfallingDetector;

 reg [7:0] fdSensorValue;
 reg [7:0] fdFactoryValue;
 
 wire fallDetected;
 
 fallingDetector a(.fdSensorValue(fdSensorValue),.fdFactoryValue(fdFactoryValue),.fallDetected(fallDetected));
  
  
  initial 
     begin
		fdSensorValue= 8'b00001000;
		fdFactoryValue=8'b00100000;
		#10
		
		fdSensorValue= 8'b00100000;
     fdFactoryValue =8'b00100000;
		#10
		
		fdSensorValue =8'b00101000;
		fdFactoryValue=8'b00100000;
		#10
		
		$finish;
	end
      


endmodule

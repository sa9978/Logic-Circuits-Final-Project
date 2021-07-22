`timescale 1 ns/1 ns
module pressureAbnormalityDetector(
 pressureData,
 presureAbnormality);
input [5:0] pressureData;
output presureAbnormality;
 // write your code here, please.
 wire presureAbnormality;
 
   
	wire a,b;
	wire [4:0] pressureData1;
	
	assign pressureData1[0]=pressureData[1];
	assign pressureData1[1]=pressureData[2];
	assign pressureData1[2]=pressureData[3];
	assign pressureData1[3]=pressureData[4];
	assign pressureData1[4]=pressureData[5];

 parityErrorChecker s(pressureData,a);
 pressureAnalyzer f(pressureData1,b);
 assign presureAbnormality = a&b ;
 
 
endmodule

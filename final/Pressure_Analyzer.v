`timescale 1 ns/1 ns
module pressureAnalyzer(
 pData,
 pWarning);
input [4:0] pData;
output pWarning;

 wire s1,s2,s3,s4;
 wire [5:0] NOT_pressureData;
 wire pWarning; 
 
 assign NOT_pressureData=~(pData);
  and
   g1(s1,NOT_pressureData[4],NOT_pressureData[3]),
	g2(s2,pData[4],pData[3]),
	g3(s3,pData[4],pData[2],pData[1],pData[0]);
	or
	 g5(pWarning,s1,s2,s3);
	 
 
endmodule


`timescale 1 ns/1 ns
module pressureAbnormalityDetector( 
input [5:0]pressureData,
output presureAbnormality
    );
wire a,b;

 Parity_Error_Checker s1(pressureData,a);
 Pressure_Analyzer s2(pressureData,b);
 assign presureAbnormality = a&b ;
  
endmodule


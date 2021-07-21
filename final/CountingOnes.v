`timescale 1 ns/1 ns

module CountingOnes(
input [7:0] in,
output [3:0]glycemicIndex
    );
	 
	 wire [0:2]test1;
	 wire [0:2]test2;
	 wire [0:2]test3;
    wire [0:2]test4;
	 wire [0:2]test5;
	 wire [0:2]test6;
	 wire [0:2]test7;
    wire [0:2]test8;
	 	
 assign test1[0]=0;	
 assign test1[1]=0;	
 assign test2[0]=0;	
 assign test2[1]=0;	
 assign test3[0]=0;	
 assign test3[1]=0;	
 assign test4[0]=0;	
 assign test4[1]=0;	
 assign test5[0]=0;	
 assign test5[1]=0;	
 assign test6[0]=0;	
 assign test6[1]=0;	
 assign test7[0]=0;	
 assign test7[1]=0;	
 assign test8[0]=0;
 assign test8[1]=0;	


assign test1[2]=in[0];	
assign test2[2]=in[1];	
assign test3[2]=in[2];	
assign test4[2]=in[3];	
assign test5[2]=in[4];	
assign test6[2]=in[5];	
assign test7[2]=in[6];	
assign test8[2]=in[7];

   wire c1,c2,c3,c4,c5,c6,c7,c8;
	wire s1,s2,s3,s4,s5,s6;
  assign c1=0;	

	 adder_3bit m1(test1,test2,c1,s1,c2);
	 adder_3bit m2(test3,s1,c2,s2,c3);
	 adder_3bit m3(test4,s2,c3,s3,c4);
	 adder_3bit m4(test5,s3,c4,s4,c5);
	 adder_3bit m5(test6,s4,c5,s5,c6);
	 adder_3bit m6(test7,s5,c6,s6,c7);
	 adder_3bit m7(test8,s6,c7,glycemicIndex,c8);
	 
 
 //assign glycemicIndex = in[0] + in[1] + in[2] + in[3] + in[4] + in[5] + in[6] + in[7];
 
 
 

endmodule


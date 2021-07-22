`timescale 1 ns/1 ns

module CountingOnes(
input [7:0] in,
output [3:0]glycemicIndex
    );
	 
	/* wire [2:0]test1;
	 wire [2:0]test2;
	 wire [2:0]test3;
    wire [2:0]test4;
	 wire [2:0]test5;
	 wire [2:0]test6;
	 wire [2:0]test7;
    wire [2:0]test8;
	 	
 assign test1[0]=0;	
 assign test1[1]=0;	
// assign test1[2]=0;	

 assign test2[0]=0;	
 assign test2[1]=0;
 //assign test2[2]=0;	
 
 assign test3[0]=0;	
 assign test3[1]=0;
 //assign test3[2]=0;	
 
 assign test4[0]=0;	
 assign test4[1]=0;
 //assign test4[2]=0;	
 
 assign test5[0]=0;	
 assign test5[1]=0;
 //assign test5[2]=0;	
 
 assign test6[0]=0;	
 assign test6[1]=0;
 //assign test6[2]=0;	
 
 assign test7[0]=0;	
 assign test7[1]=0;
 //assign test7[2]=0;	
 
 assign test8[0]=0;
 assign test8[1]=0;
 //assign test8[2]=0;	
	


assign test1[2]=in[0];	
assign test2[2]=in[1];	
assign test3[2]=in[2];	
assign test4[2]=in[3];	
assign test5[2]=in[4];	
assign test6[2]=in[5];	
assign test7[2]=in[6];	
assign test8[2]=in[7];

   wire c1,c2,c3,c4,c5,c6,c7,c8;
	wire [2:0]s1;
	wire [2:0]s2;
	wire [2:0]s3;
	wire [2:0]s4;
	wire [2:0]s5;
	wire [2:0]s6;
	wire [2:0]s7;
	
  assign c1=0;	

	 adder_3bit m1(test1,test2,c1,s1,c2);
	 adder_3bit m2(test3,s1,c2,s2,c3);
	 adder_3bit m3(test4,s2,c3,s3,c4);
	 adder_3bit m4(test5,s3,c4,s4,c5);
	 adder_3bit m5(test6,s4,c5,s5,c6);
	 adder_3bit m6(test7,s5,c6,s6,c7);
	 adder_3bit m7(test8,s6,c7,s7,c8);
	 
 assign glycemicIndex[3]=c8;
 assign glycemicIndex[2]=s7[2];
 assign glycemicIndex[1]=s7[1];
 assign glycemicIndex[0]=s7[0];
 
 
 
 */
  /*wire c1,c2,c3,c4,
  assign c1=0;
  
 
   fulladder f0(in[0],in[1],c1,s1,c2);
	fulladder f1(in[2],s1,c2,s2,c3);
   fulladder f2(in[3],s2,c3,s4,c2);
   fulladder f0(in[0],s3,c1,s1,c2);
	fulladder f0(in[0],s4,c1,s1,c2);
   fulladder f0(in[0],s5,c1,s1,c2);
	
 */
 
 
 assign  glycemicIndex = in[0] +in[1] + in[2] + in[3] + in[4] + in[5] + in[6] + in[7];
 
 
 

endmodule


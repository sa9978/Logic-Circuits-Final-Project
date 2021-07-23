`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:38:16 07/22/2021 
// Design Name: 
// Module Name:    TBHeading 
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
module TBHeading;

   reg rst ;
   reg clk ;
   reg confirm ;
	reg  [7:0] inputData;
	reg  [2:0]din;
	wire [6:0] dataP ;
	wire [6:0] dataQ;
	wire [2:0]state;

Heading e(
    rst ,
    clk ,
    confirm ,
	  inputData ,
	 din,
	 dataP ,
     dataQ,
	 state
    );

initial
		  begin
		  clk = 0;
				repeat (50)
			#10 clk = ~clk;
		  end



initial 
		begin
		//reset
		#5
		rst = 0;
		#20
		confirm = 1;
		
		
		rst = 1;
		#20
		din = 3'b111;
		#20
		inputData = 8'b10101111;
		#55
		
		
		rst = 0;
		#20
		
		
		rst = 1;
		din = 3'b111;
		#40
		inputData = 8'b10110001;
		#60
		
		
		
		
		rst = 0;
		#20
		
		
		rst = 1;
		#20
		din = 3'b111;
		#20
		inputData = 8'b00101111;
		#55
		
		
		rst = 0;
		#20
		
		
		rst = 1;
		#20
		din = 3'b111;
		#20
		inputData = 8'b00100001;
		#60
		
		
		$finish;
	
	end
	
endmodule










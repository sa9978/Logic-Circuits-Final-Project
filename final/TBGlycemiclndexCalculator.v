`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:30:29 07/22/2021 
// Design Name: 
// Module Name:    TBGlycemiclndexCalculator 
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
module TBGlycemiclndexCalculator;
reg [7:0]bloodSensor;
wire [3:0]glycemicIndex;

GlycemiclndexCalculator q(.bloodSensor,.glycemicIndex);


initial 
   begin
		bloodSensor = 8'b10101010;
	
		#10
		
		bloodSensor = 8'b00010010;
		
		#10
		
		bloodSensor = 8'b10011111;
		
		#10
		
		bloodSensor = 8'b01110001;
		
		#10
	
		$finish;

	end
      
endmodule


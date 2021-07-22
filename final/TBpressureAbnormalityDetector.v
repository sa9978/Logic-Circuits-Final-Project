`timescale 1ns / 1ns

module TBpressureAbnormalityDetector;

	// Inputs
	reg [5:0] pressureData;

	// Outputs
	wire presureAbnormality;

	// Instantiate the Unit Under Test (UUT)
	pressureAbnormalityDetector uut (
		.pressureData(pressureData), 
		.presureAbnormality(presureAbnormality)
	);

	initial begin
		// Initialize Inputs
		pressureData = 6'b000001;

		// Wait 100 ns for global reset to finish
		#100;
		
		pressureData=6'b001000;
		
      #100;
		
		pressureData=6'b010000;
		
		#100;
		
		pressureData=6'b010101;
		
		#100;
		
		pressureData=6'b011001;
		
		#100;
		
		pressureData=6'b100000;
		
		#100;
		
		pressureData=6'b100101;
		
		#100;
		
		pressureData=6'b101001;
		
		#100;
		
		pressureData=6'b110001;
		
		#100;
		// Add stimulus here

	end
      
endmodule


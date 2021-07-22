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
		pressureData = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


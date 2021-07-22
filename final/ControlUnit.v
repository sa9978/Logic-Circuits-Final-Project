`timescale 1 ns/1 ns

/*`define AAA 3'b001 // IDLE
`define BBB 3'b010 // ACTIVE
`define CCC 3'b011 // REQUEST
`define DDD 3'b100 // STORE
`define EEE 3'b101 // TRAP
`define FFF 3'b111 // FFF

`define STATE_IDLE    3'b001
`define STATE_ACTIVE  3'b010
`define STATE_REQUEST 3'b011
`define STATE_STORE   3'b100
`define STATE_TRAP    3'b101
`define STATE_OTHERS  3'b111*/


module ContolUnit(
  input     rst ,
	input    clk ,
	input    confirm ,
	input  [2:0] password ,
	output  en_left ,
	output  en_right ,
	input  [7:0]user,
	output [6:0] dout
    );


	parameter reset = 3'b000;
	parameter active = 3'b001;
	parameter request = 3'b101;
	parameter save = 3'b110;
	parameter trap = 3'b111;
	parameter correct_pass = 3'b111;

   reg [2:0] state;
	reg [6:0] dout;
	reg en_right, en_left;
	
	always @(posedge clk)
		begin
			
			if(rst == 0)
				state = reset;
			else case(state)
				reset : state = active;
				
				active : 
					begin
						if(confirm && password == correct_pass)
							state = request;
						else if(confirm && password != correct_pass)
							state = trap;
						else
							state = active;
					end
					
				trap : state = trap;
				
				request: 
					begin
						if(user[7] && confirm)
							begin
								en_left = 0;
								state = save;
								dout[0] = user[0];
								dout[1] = user[1];
								dout[2] = user[2];
								dout[3] = user[3];
								dout[4] = user[4];
								dout[5] = user[5];
								dout[6] = user[6];
								en_right = 1;
							end
						else if(user[7] == 0 && confirm)
							begin
								en_right = 0;
								state = save;
								dout[0] = user[0];
								dout[1] = user[1];
								dout[2] = user[2];
								dout[3] = user[3];
								dout[4] = user[4];
								dout[5] = user[5];
								dout[6] = user[6];
								en_left = 1;
							end
						else
							state = request;
					end
					
				save : state = save;
				
			endcase
		end
					
endmodule

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


`timescale 1ns / 1ps


module Timer_test;

	// Inputs
	reg [3:0] Value;
	reg oneHz_enable;
	reg start_timer;
	reg clk;
	reg Reset_Sync;

	// Outputs
	wire expired;

	Timer uut (
		.Value(Value), 
		.oneHz_enable(oneHz_enable), 
		.start_timer(start_timer),
		.clk(clk),
		.expired(expired),
		.Reset_Sync(Reset_Sync)
	);

	initial begin

		Value = 0;
		oneHz_enable = 0;
		start_timer = 0;
		Reset_Sync = 0;

		#5;
      Value=4'b0110;
		start_timer=1;
		#5;
		start_timer=0;
		#30;

		

	end
	
		initial begin 
			oneHz_enable=0;
			forever begin
				#5 oneHz_enable = ~oneHz_enable;
					  end 
					end
      initial begin 
			clk=0;
			forever begin
				#5 clk = ~clk;
					  end 
					end
endmodule


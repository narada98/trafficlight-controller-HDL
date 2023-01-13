`timescale 1ns / 1ps



module TimeParameter_test;

	// Inputs
	reg [1:0] Selector;
	reg [3:0] Time_value;
	reg Prog_Sync;
	reg [1:0] interval;
	reg clk;

	// Outputs
	wire [3:0] value;

	TimeParameter uut (
		.Selector(Selector), 
		.Time_value(Time_value), 
		.Prog_Sync(Prog_Sync), 
		.interval(interval), 
		.clk(clk), 
		.value(value)
	);

	initial begin

		Selector = 2'b00;
		Time_value = 4'b0000;
		Prog_Sync = 0;
		// send tBase
		interval = 2'b00;
		
		#10;
		//send tEXT
		 interval = 2'b01;

        //change tBase to 10
		#10;
		 Time_value = 4'b1010;
		 Selector = 2'b01;
		 
		#5
		Prog_Sync = 1;
		
		// check tBase
        #5
        interval = 2'b00;

	end
	
	initial begin
	clk = 0;
	forever begin
	 #5 clk = ~clk;
	end 
	end
      
endmodule


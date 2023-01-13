`timescale 1ns / 1ps

module WalkRegister_test;

	// Inputs
	reg WR_Sync;
	reg WR_Reset;
    reg clk;
	// Outputs
	wire WR;


	WalkRegister uut (
		.WR_Sync(WR_Sync), 
		.WR_Reset(WR_Reset),
		.WR(WR),
		.clk(clk)
	);

	initial begin

		WR_Sync = 0;
		WR_Reset = 0;

		#100;
      WR_Sync = 1;
		#10;
		WR_Sync = 0;
		#500;
		WR_Reset = 1;

	end
	initial begin
        clk = 0;
        forever begin
         #5 clk = ~clk;
        end 
    end	

      
endmodule


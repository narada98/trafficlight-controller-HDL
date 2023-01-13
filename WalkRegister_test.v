`timescale 1ns / 1ps

module WalkRegister_test;

	// Inputs
	reg WR_Sync;
	reg WR_Reset;
	// Outputs
	wire WR;


	WalkRegister uut (
		.WR_Sync(WR_Sync), 
		.WR_Reset(WR_Reset),
		.WR(WR)
	);

	initial begin

		WR_Sync = 0;
		WR_Reset = 0;

		#10;
      WR_Sync = 1;
		#10;
		WR_Sync = 0;
		#20;
		WR_Reset = 1;
		#5
		WR_Reset = 0;

	end

      
endmodule


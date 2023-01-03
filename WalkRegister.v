`timescale 1ns / 1ps

module WalkRegister(
    input WR_Sync,
    input WR_Reset,
    input clk,
    output reg WR
    );
    
 //posedge WR_Sync ,posedge WR_Reset   
	 always@(posedge clk) begin
		if (WR_Sync) WR = 1;
		if (WR_Reset) WR = 0;
	 end
	
	 


endmodule

`timescale 1ns / 1ps



module TrafficControllerMain_test;

	// Inputs
	reg Reset;
	reg Sensor;
	reg Walk_Request;
	reg Reprogram;
	reg [1:0] Time_Parameter_Selector;
	reg [3:0] Time_Value;
	reg clk;
	reg expired;

	// Outputs
	wire [6:0] LEDs;
	
	reg [3:0] Value;
    reg oneHz_enable;
    reg start_timer;
    reg clk;
    reg Reset_Sync;

    // Outputs
    wire expired;
	/*wire start_timer; //for visual purposes only
	wire Reset_Sync;
//	wire expired;
	wire oneHz_enable;
	wire [3:0] value;
	wire [1:0] interval;*/
	
	
	// Instantiate the Unit Under Test (UUT)
	TrafficControllerMain uut (
		.Reset(Reset), 
		.Sensor(Sensor), 
		.Walk_Request(Walk_Request), 
		.Reprogram(Reprogram), 
		.Time_Parameter_Selector(Time_Parameter_Selector), 
		.Time_Value(Time_Value), 
		.clk(clk), 
		.LEDs(LEDs)
//		.expired(expired)/*, //Visual pourpose only
//		.start_timer(start_timer),
//		.Reset_Sync(Reset_Sync),
//		.expired(expired),
//		.oneHz_enable(oneHz_enable),
//		.value(value),
//		.interval(interval)*/
	);
	
		Timer timer (
        .Value(value), 
        .oneHz_enable(oneHz_enable), 
        .start_timer(start_timer),
        .clk(clk),
        .expired(expired),
        .Reset_Sync(Reset_Sync)
    );

	initial begin
		// Initialize Inputs
		Reset = 0;
		Sensor = 0;
		Walk_Request = 0;
		Reprogram = 0;
		Time_Parameter_Selector = 0;
		Time_Value = 0;
		clk = 0;
		#20
		// Wait 100 ns for global reset to finish
		#5
		Reset = 1;
		#5
		Reset = 0;
		#5
		expired = 1;
		//#100
		//walk request
		//Walk_Request = 1;
		//#20
		//Walk_Request = 0;
		// Vehicle sensor request
		//Sensor = 1;
		
		

        
		// Add stimulus here

	end
	
	initial begin
	forever begin
	 #5 clk = ~clk;
	end 
	end
	
      
endmodule


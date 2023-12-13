`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:30:56 11/25/2023 
// Design Name: 
// Module Name:    The_sum 
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
module The_sum(
			input
							START,
			[2:0] 		A,
			[2:0] 		B,
			output
			wire[7:0]	LED			
			);
		assign {LED[7], LED[5:3]} = START? {'b1000}: {'b0, A};
		assign {LED[6], LED[2:0]} = START? A + B: {0, B};

endmodule

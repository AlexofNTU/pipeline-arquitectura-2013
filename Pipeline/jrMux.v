`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:37:26 01/14/2014 
// Design Name: 
// Module Name:    jrMux 
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
module jrMux(
			input [31:0] opCode,dirReg,dirJump,
			output reg [31:0] dir
    );

always @*
	begin
		if((opCode[31:26] == 6'b000000) && (opCode[5:0] == 6'b001000))
			dir = dirReg;
		else
			dir = dirJump;
		end
endmodule

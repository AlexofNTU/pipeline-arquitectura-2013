`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:35:28 12/09/2013 
// Design Name: 
// Module Name:    MEM_WB 
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
module MEM_WB(
			input clk,
			input MemtoRegIN, RegWriteIN, finIN,
			input [31:0] dataIN, ALU_IN,
			input [4:0] DestinoIN,
			output reg MemtoRegOUT, RegWriteOUT, finOUT,		
			output reg [31:0] dataOUT, ALU_OUT,
			output reg [4:0] DestinoOUT
    );

always @ (posedge clk)
begin
	MemtoRegOUT <= MemtoRegIN;
	RegWriteOUT <= RegWriteIN;
	dataOUT <= dataIN;
	ALU_OUT <= ALU_IN;
	DestinoOUT <= DestinoIN;
	finOUT <= finIN;
end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:35:05 12/09/2013 
// Design Name: 
// Module Name:    EX_MEM 
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
module EX_MEM(
			input clk,
			input BranchIN, MemReadIN, MemtoRegIN, MemWriteIN, RegWriteIN, zeroIN,
			input [31:0] /*ALUsaltoIN,*/ ALU_IN, readData2IN,
			input [4:0] DestinoIN,
			input [5:0] tipoLoadIN,
			output reg BranchOUT, MemReadOUT, MemtoRegOUT, MemWriteOUT, RegWriteOUT, zeroOUT,		
			output reg [31:0] /*ALUsaltoOUT,*/ ALU_OUT, readData2OUT,
			output reg [4:0] DestinoOUT,
			output reg [5:0] tipoLoadOUT
    );

always @ (posedge clk)
begin
 	BranchOUT <= BranchIN; 
	MemReadOUT <= MemReadIN;
	MemtoRegOUT <= MemtoRegIN;
	MemWriteOUT <= MemWriteIN;
	RegWriteOUT <= RegWriteIN;
	zeroOUT <= zeroIN;
	//ALUsaltoOUT <= ALUsaltoIN;
	ALU_OUT <= ALU_IN;
	readData2OUT <= readData2IN;
	DestinoOUT <= DestinoIN;
	tipoLoadOUT <= tipoLoadIN;
end

endmodule

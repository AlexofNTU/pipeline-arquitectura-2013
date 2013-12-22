`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:37:15 12/06/2013 
// Design Name: 
// Module Name:    ID_EX 
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
module ID_EX(
			input clk,
			input RegDstIN, BranchIN, MemReadIN, MemtoRegIN, MemWriteIN, ALUSrcIN, RegWriteIN,
			input [1:0] ALUOpIN,		
			input [31:0] /*nextPcIN,*/ readData1IN, readData2IN, signExtIN,
			input [4:0] ins20_16IN, ins15_11IN,ins25_21IN,
			output reg RegDstOUT,BranchOUT, MemReadOUT, MemtoRegOUT, MemWriteOUT, ALUSrcOUT, RegWriteOUT,
			output reg [1:0] ALUOpOUT,		
			output reg [31:0] /*nextPcOUT,*/ readData1OUT, readData2OUT, signExtOUT,
			output reg [4:0] ins20_16OUT, ins15_11OUT,ins25_21OUT
					
	 );
	 
always @ (posedge clk)
begin
	RegDstOUT <= RegDstIN;
 	BranchOUT <= BranchIN; 
	MemReadOUT <= MemReadIN;
	MemtoRegOUT <= MemtoRegIN;
	MemWriteOUT <= MemWriteIN;
	ALUSrcOUT <= ALUSrcIN;
	RegWriteOUT <= RegWriteIN;
	ALUOpOUT <= ALUOpIN;
	//nextPcOUT <= nextPcIN;
	readData1OUT <= readData1IN;
	readData2OUT <= readData2IN;
	signExtOUT <= signExtIN;
	ins20_16OUT <= ins20_16IN;
	ins15_11OUT <= ins15_11IN;	
	ins25_21OUT <= ins25_21IN;
end

endmodule

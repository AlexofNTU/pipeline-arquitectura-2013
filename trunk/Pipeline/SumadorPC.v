`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:49:04 11/28/2013 
// Design Name: 
// Module Name:    SumadorPC 
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
module SumadorPC(
				input [31:0] actualPC,
				output [31:0] proximoPC
						);
						
reg [31:0] aux;

always @*
	begin
		aux = actualPC + 3'b001;
	end

assign proximoPC = aux;

endmodule

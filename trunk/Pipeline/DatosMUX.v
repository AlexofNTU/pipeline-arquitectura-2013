`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:55:13 11/29/2013 
// Design Name: 
// Module Name:    DatosMUX 
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
module DatosMUX(
			input [31:0] ALUresult, ReadData,
			input MemtoReg,
			output reg [31:0] resultado
    );

always @*
	begin
		if(MemtoReg)
			resultado = ReadData;
		else
			resultado = ALUresult;
	end


endmodule

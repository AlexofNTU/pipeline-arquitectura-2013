`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:45:17 11/28/2013 
// Design Name: 
// Module Name:    AluMUX 
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
module AluMUX(
			input [31:0] sigExt, ReadData2,
			input ALUSrc,
			output reg [31:0] resultado
    );

always @*
	begin
		if(ALUSrc)
			resultado = sigExt;
		else
			resultado = ReadData2;
	end

endmodule

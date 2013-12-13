`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:44:44 11/28/2013 
// Design Name: 
// Module Name:    SaltosALU 
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
module SaltosALU(
			input [31:0] ShiftLeft, pc,
			output reg [31:0] ALUResult
    );

reg [31:0] aux;
always @*
	begin
		aux = ShiftLeft;
		ALUResult <= pc + (ShiftLeft << 2);
	end


endmodule

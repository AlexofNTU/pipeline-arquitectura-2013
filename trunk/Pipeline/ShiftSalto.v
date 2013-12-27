`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:36:48 12/27/2013 
// Design Name: 
// Module Name:    ShiftSalto 
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
module ShiftSalto(
				input [25:0] instruccion,
				input [3:0] pc4,
				output reg [31:0] saltoNC
						);

always @*
	begin
		saltoNC[27:0] = instruccion << 2;
		saltoNC[31:28] = pc4;
	end

endmodule
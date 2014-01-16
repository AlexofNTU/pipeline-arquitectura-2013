`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:36:06 01/15/2014 
// Design Name: 
// Module Name:    muxJumpReg 
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
module muxJumpReg(
				input sel,
				input [4:0] pc,registro,
				output reg [4:0] resultado
    );
always @*
	begin
		if(sel)
			resultado = 6'b011111; //31
		else
			resultado = registro;
		end

endmodule

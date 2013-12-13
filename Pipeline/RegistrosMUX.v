`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:45:32 11/28/2013 
// Design Name: 
// Module Name:    RegistrosMUX 
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
module RegistrosMUX( 
			input [4:0] rt, rd,
			input RegDst,
			output reg [4:0] wReg
    );

always @*
	begin
		if(RegDst)
			wReg = rd;
		else
			wReg = rt;
	end

endmodule

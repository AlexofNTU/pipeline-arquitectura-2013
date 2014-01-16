`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:56:35 01/15/2014 
// Design Name: 
// Module Name:    EscRegMux 
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
module EscRegMux(
					input sel,
					input senial,
					output reg salida 
    );
	 
always @*
	begin
		if(sel)
			salida = 1; 
		else
			salida = senial;
		end

endmodule
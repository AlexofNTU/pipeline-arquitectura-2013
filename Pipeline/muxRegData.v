`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:45:31 01/15/2014 
// Design Name: 
// Module Name:    muxRegData 
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
module muxRegData(
				input [31:0] pc,registro,
				input sel,
				output reg [31:0] resultado
    );
always @*
	begin
		if(sel)
			resultado = pc; //31
		else
			resultado = registro;
		end

endmodule
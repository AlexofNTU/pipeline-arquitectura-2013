`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:41:13 11/28/2013 
// Design Name: 
// Module Name:    ExtensionSigno 
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
module ExtensionSigno( input [15:0] valEntrada,
							  output reg [31:0] valExtendido
    );

always @*
	begin
		if(valEntrada[15] == 0)
			valExtendido = valEntrada;
		else
			valExtendido = valEntrada + 32'hFFFF0000;
	end	
endmodule

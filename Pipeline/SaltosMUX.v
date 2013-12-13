`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:45:02 11/28/2013 
// Design Name: 
// Module Name:    SaltosMUX 
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
module SaltosMUX(
			input [31:0] pc, ALUResult,
			input Branch,
			output reg [31:0] resultado
    );
	 
always @*
	begin
		if(Branch)
			resultado = ALUResult;
		else
			resultado = pc;
		end
		
endmodule

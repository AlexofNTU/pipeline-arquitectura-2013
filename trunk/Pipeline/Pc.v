`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:38:45 11/28/2013 
// Design Name: 
// Module Name:    Pc 
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
module Pc(
		input clk,
		input [31:0] dirEntrada,
		output reg [31:0]  dirSalida
    );

reg aux;
initial begin
aux=1;
end

always @ (negedge clk)
	begin
		if(aux)
			begin
				aux=0;
				dirSalida <= 0;
			end
		else
			begin
		dirSalida <= dirEntrada;
			end
	end
	

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:20:18 12/20/2013 
// Design Name: 
// Module Name:    Cortocircuito 
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
module Cortocircuito(
				input [4:0] Rt,Rs, //valores de los registros en etapa de Ejecucion
				input [4:0] RdWb,RdMem, //valores de los registros en Memoria y en Wb
				output reg [1:0] forA,forB, //
				input EscWb,EscMem
				
    );

always @*
begin
	if( (EscMem==1) && (RdMem == Rt ) && (RdMem != 0))
		begin
			forB = 2'b10;
		end

	if( (EscWb==1) && (RdWb == Rt ) && (RdWb != 0))
		begin
			forB = 2'b01;
		end
		
	if( (EscMem==1) && (RdMem == Rs ) && (RdMem != 0))
		begin
			forA = 2'b10;
		end

	if( (EscWb==1) && (RdWb == Rs ) && (RdWb != 0))
		begin
			forA = 2'b01;
		end
	

end


endmodule

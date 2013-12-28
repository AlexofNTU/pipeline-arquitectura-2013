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
				input [4:0] RdWb,RdMem,RdEx, //valores de Rd en Memoria y en Wb y Ex
				input [4:0] RtD,RsD, //valores de los registros en etapa de Decodificacion
				output reg [1:0] forA,forB, //
				output reg forAD,forBD,
				input EscWb,EscMem,EscMemEx
				
    );

always @*
begin
		
		
	if( (EscWb==1) && (RdWb == Rt ) && (RdWb != 0) && ((RdMem != Rt)|| ((RdMem == Rt) && (EscMem==0))))
		begin
			forB = 2'b01;
		end
	else if( (EscMem==1) && (RdMem == Rt ) && (RdMem != 0) )
		begin
			forB = 2'b10;
		end
	else
		begin
			forB = 2'b00;
		end
		
	if( (EscWb==1) && (RdWb == Rs ) && (RdWb != 0) && ((RdMem != Rs)|| ((RdMem == Rs) && (EscMem==0))))
		begin
			forA = 2'b01;
		end

	else if( (EscMem==1) && (RdMem == Rs ) && (RdMem != 0) )
		begin
			forA = 2'b10;
		end
	else
		begin
			forA = 2'b00;
		end
	
	if( (EscMemEx==1) && (RdEx == RsD ) && (RdEx != 0) )
		begin
			forAD = 2'b01;
		end
	else
		begin
			forAD = 2'b00;
		end
		
	if( (EscMemEx==1) && (RdEx == RtD ) && (RdEx != 0) )
		begin
			forBD = 2'b01;
		end
	else
		begin
			forBD = 2'b00;
		end

end


endmodule

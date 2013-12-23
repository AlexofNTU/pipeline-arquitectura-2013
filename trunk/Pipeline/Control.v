`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:38:29 11/28/2013 
// Design Name: 
// Module Name:    Control 
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
module Control(
			input [5:0] instruccion,
			input enable,
			output reg RegDst,Branch,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite,
			output reg [1:0] ALUOp
    );

always @*
	begin
		if(enable)
		begin
				case(instruccion)
						6'b000000: //instruccion tipo R
							begin
								RegDst = 1;
								Branch = 0;
								MemRead = 0;
								MemtoReg = 0;
								MemWrite = 0;
								ALUSrc = 0;
								RegWrite = 1;
								ALUOp = 2'b10;
							end
						6'b100011: //instruccion LW
							begin
								RegDst = 0;
								Branch = 0;
								MemRead = 1;
								MemtoReg = 1;
								MemWrite = 0;
								ALUSrc = 1;
								RegWrite = 1;
								ALUOp = 2'b00;
							end
						6'b101011: //instruccion SW
							begin
								RegDst = 0;
								Branch = 0;
								MemRead = 0;
								MemtoReg = 0;
								MemWrite = 1;
								ALUSrc = 1;
								RegWrite = 0;
								ALUOp = 2'b00;
							end
						6'b000100: //instruccion BEQ
							begin
								RegDst = 0;
								Branch = 1;
								MemRead = 0;
								MemtoReg = 0;
								MemWrite = 0;
								ALUSrc = 0;
								RegWrite = 0;
								ALUOp = 2'b01;
							end
						default: 
							begin
								RegDst = 0;
								Branch = 0;
								MemRead = 0;
								MemtoReg = 0;
								MemWrite = 0;
								ALUSrc = 0;
								RegWrite = 0;
								ALUOp = 2'b00;
							end				
					endcase
			end
		else
			begin
			RegDst = 0;
								Branch = 0;
								MemRead = 0;
								MemtoReg = 0;
								MemWrite = 0;
								ALUSrc = 0;
								RegWrite = 0;
								ALUOp = 2'b00;
			end

	end

endmodule

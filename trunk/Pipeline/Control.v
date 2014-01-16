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
			input [5:0] instruccion,funcion,
			input enable,
			output reg RegDst,Branch,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite,jump,shiftC,EscJal,
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
								jump = 0;
								EscJal=0;
								ALUOp = 2'b10;
									if((funcion == 6'b000000) || (funcion == 6'b000010) || (funcion == 6'b000011) )
										shiftC=1;
									else
										shiftC=0;
								if(funcion==6'b001000)
									begin
									RegDst = 0;
								Branch = 0;
								MemRead = 0;
								MemtoReg = 0;
								MemWrite = 0;
								ALUSrc = 0;
								RegWrite = 0;
								jump = 1;
								ALUOp = 2'b00;
								shiftC=0;
								EscJal=0;
									end
							end
						6'b100011,6'b100000,6'b100001,6'b100111,6'b100100,6'b100101: //instruccion LW,LB,LH,LWU,LBU,LHU
							begin
								RegDst = 0;
								Branch = 0;
								MemRead = 1;
								MemtoReg = 1;
								MemWrite = 0;
								ALUSrc = 1;
								RegWrite = 1;
								ALUOp = 2'b00;
								jump = 0;
								shiftC=0;
								EscJal=0;
							end
					/*	6'b100000: //instruccion LB
							begin
								RegDst = 0;
								Branch = 0;
								MemRead = 1;
								MemtoReg = 1;
								MemWrite = 0;
								ALUSrc = 1;
								RegWrite = 1;
								ALUOp = 2'b00;
								jump = 0;
								shiftC=0;
							end*/
						6'b101011 , 6'b101001 , 6'b101000: //instruccion SW,SH,SB,
							begin
								RegDst = 0;
								Branch = 0;
								MemRead = 0;
								MemtoReg = 0;
								MemWrite = 1;
								ALUSrc = 1;
								RegWrite = 0;
								ALUOp = 2'b00;
								jump = 0;
								shiftC=0;
								EscJal=0;
							end
						6'b001100,6'b001101,6'b001110,6'b001000,6'b001010,6'b001111: //instruccion tipo ANDI,ORI,XORI,ADDI,SLTI,LUI
							begin
								RegDst = 0;
								Branch = 0;
								MemRead = 0;
								MemtoReg = 0;
								MemWrite = 0;
								ALUSrc = 1;
								RegWrite = 1;
								jump = 0;
								ALUOp = 2'b10;
								shiftC=0;
								EscJal=0;
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
								jump = 0;
								shiftC=0;
								EscJal=0;
							end
						6'b000101: //instruccion BNE
							begin
								RegDst = 0;
								Branch = 1;
								MemRead = 0;
								MemtoReg = 0;
								MemWrite = 0;
								ALUSrc = 0;
								RegWrite = 0;
								ALUOp = 2'b01;
								jump = 0;
								shiftC=0;
								EscJal=0;
							end
						6'b000010: //instruccion J
							begin
								RegDst = 0;
								Branch = 0;
								MemRead = 0;
								MemtoReg = 0;
								MemWrite = 0;
								ALUSrc = 0;
								RegWrite = 0;
								jump = 1;
								ALUOp = 2'b00;
								shiftC=0;
								EscJal=0;
							end
						6'b000011: //instruccion J
							begin
								RegDst = 0;
								Branch = 0;
								MemRead = 0;
								MemtoReg = 0;
								MemWrite = 0;
								ALUSrc = 0;
								RegWrite = 0;
								jump = 1;
								ALUOp = 2'b00;
								shiftC=0;
								EscJal=1;
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
								jump = 0;
								shiftC=0;
								EscJal=0;
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
								jump = 0;
								shiftC=0;
								EscJal=0;
			end

	end

endmodule

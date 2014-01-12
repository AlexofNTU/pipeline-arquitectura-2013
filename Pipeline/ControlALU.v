`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:40:47 11/28/2013 
// Design Name: 
// Module Name:    ControlALU 
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
module ControlALU(
			input [31:0] instruccion,
			input [1:0] ALUOp,
			output reg [3:0] ALUctl
    );
	 
always @*
	begin
	
		if(ALUOp == 0)
				ALUctl <= 4'b0010; 
		else if(ALUOp[0] == 1)
				ALUctl <= 4'b0110;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b100000) && (instruccion[31:26] == 6'b000000)) //ADD
				ALUctl <= 4'b0010;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b100010) && (instruccion[31:26] == 6'b000000)) //SUB
				ALUctl <= 4'b0110;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b100100) && (instruccion[31:26] == 6'b000000)) //AND
				ALUctl <= 4'b0000;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b100101) && (instruccion[31:26] == 6'b000000)) //OR
				ALUctl <= 4'b0001;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b100111) && (instruccion[31:26] == 6'b000000)) //NOR
				ALUctl <= 4'b0011;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b100110) && (instruccion[31:26] == 6'b000000)) //XOR
				ALUctl <= 4'b1000;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b101010) && (instruccion[31:26] == 6'b000000)) //SLT
				ALUctl <= 4'b0111;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b000000) && (instruccion[31:26] == 6'b000000)) //SLL
				ALUctl <= 4'b0100;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b000010) && (instruccion[31:26] == 6'b000000)) //SRL
				ALUctl <= 4'b0101;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b000011) && (instruccion[31:26] == 6'b000000)) //SRA
				ALUctl <= 4'b1010;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b000110) && (instruccion[31:26] == 6'b000000)) //SRLV
				ALUctl <= 4'b1001;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b000111) && (instruccion[31:26] == 6'b000000)) //SRAV
				ALUctl <= 4'b1010;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b000100) && (instruccion[31:26] == 6'b000000)) //SLLV
				ALUctl <= 4'b0100;
		else if((ALUOp[1] == 1) && (instruccion[31:26] == 6'b001000)) //ADDI
				ALUctl <= 4'b0010;
		else if((ALUOp[1] == 1) && (instruccion[31:26] == 6'b001100)) //ANDI
				ALUctl <= 4'b0000;
		else if((ALUOp[1] == 1) && (instruccion[31:26] == 6'b001101)) //ORI
				ALUctl <= 4'b0001;
		else if((ALUOp[1] == 1) && (instruccion[31:26] == 6'b001110)) //XORI
				ALUctl <= 4'b1000;
		else if((ALUOp[1] == 1) && (instruccion[31:26] == 6'b001010)) //SLTI
				ALUctl <= 4'b0111;
		else
				ALUctl <= 4'b0000;
	end


endmodule

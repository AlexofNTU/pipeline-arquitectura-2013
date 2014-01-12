`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:41:44 11/28/2013 
// Design Name: 
// Module Name:    ALU 
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
module ALU( input [3:0] ALUctl,
				input shiftC,
				input [4:0] shiftV,
				input [31:0] A,B, 
				output reg [31:0] ALUOut,
				output zero
    );

always @(ALUctl, A, B,shiftC,shiftV) 
	if(shiftC == 1)
		begin
			 case (ALUctl)
				4'b0100: ALUOut <= B <<< shiftV ;  	//SLL        
				 4'b0101: ALUOut <= B >>> shiftV ; 		//SRL
				 4'b1010: ALUOut <= B >> shiftV;  		//SRA 
				 default: ALUOut <= 0;
			 endcase
		end
	else
		begin
			case (ALUctl)
				 4'b0000: ALUOut <= A & B;			//ADD
				 4'b0001: ALUOut <= A | B;		//OR
				 4'b0010: ALUOut <= A + B; 		//ADD
				 4'b0011: ALUOut <= ~(A | B); 	//NOR
				 4'b0100: ALUOut <= B >>> A;  	//SLLV        
				 //4'b0101: ALUOut <= B >> A; 	//SRL
				 4'b0110: ALUOut <= A - B; 		//SUB
				 4'b0111: ALUOut <= A < B ? 1:0; //SLT
				 4'b1000: ALUOut <= A ^ B; 		//XOR
				 4'b1001: ALUOut <= A >>> B; 		//SRLV         
				 4'b1010: ALUOut <= A >> B;  		//SRAV 
				 default: ALUOut <= 0;
			 endcase
		end
		

assign zero = (ALUOut==0);
 
endmodule

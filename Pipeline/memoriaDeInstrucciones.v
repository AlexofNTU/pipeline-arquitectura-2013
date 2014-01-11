`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:43:53 11/28/2013 
// Design Name: 
// Module Name:    memoriaDeInstrucciones 
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
module memoriaDeInstrucciones(
			input [9:0] direccion,
			output [31:0] instruccion,
			input clk
    );
	 
	integer i; 
	reg [31:0] rom [1023:0];
	reg [31:0] auxData;
	
initial begin
		
		//codigo para probar la HDU
		/*rom[0] = 32'h8C010001; // LW 1,1(0) 
		rom[1] = 32'h00231020; // ADD 2,1,3
		rom[2] = 32'h00441820; // ADD 3,2,4
		rom[3] = 32'h00622020; // ADD 4,3,2
		*/
		
		//codigo para probar la SCU y J
		/*
		rom[0] = 32'h00210820; // ADD 1,1,1  
		rom[1] = 32'h00210820; // ADD 1,1,1  
		rom[2] = 32'h00210820; // ADD 1,1,1  
		rom[3] = 32'h00210820; // ADD 1,1,1  
		rom[4] = 32'h08000000; // J 0
		*/
		
		//el mismo codigo de arriba pero echo con jump 
		/*
		rom[0] = 32'h00210820; // ADD 1,1,1 
		rom[1] = 32'h08000000; // J 0		
		*/
		
		//codigo para probar la SCU y J
		/*
		rom[0] = 32'h00210820; // ADD 1,1,1  
		rom[1] = 32'h00431022; // SUB 2,2,3  
		rom[2] = 32'h14440007; // BNE 2,4,32 nose si es 32, salta a esa dir  
		rom[32] = 32'h08000000; // J 0 poner dps del for		
		*/
		rom[0] = 32'h000208C0;
		//00010 00001 00011 
		for (i=1; i < 1024; i = i + 1)  // llenamos la memoria con 0
			begin
				rom[i] = 32'h00000000; //HLT				
			end
					
		
end

always @ (posedge clk)
begin
		auxData = rom [direccion];
end

assign instruccion = auxData;

endmodule

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
		
		/*rom[0] = 32'h00210820; // ADD 1,1,1  
		rom[1] = 32'h00210820; // ADD 1,1,1  
		rom[2] = 32'h00210820; // ADD 1,1,1  
		rom[3] = 32'h00210820; // ADD 1,1,1  
		//rom[4] = 32'h0C00000F; // J 0
		rom[4] = 32'h0C000008;
		rom[5] = 32'h00210820; // ADD 1,1,1  
		rom[6] = 32'h00210820; // ADD 1,1,1  
		rom[7] = 32'h00210820; // ADD 1,1,1  
		rom[8] = 32'h00210820; // ADD 1,1,1  */
		
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
		
		//codigo para probar .....
		/*rom[0] = 32'h00020880;
		rom[1] = 32'h00011882;
		rom[2] = 32'h00030843;
		rom[3] = 32'h80050001;
		rom[4] = 32'h20860010; 
		*/
		 
		/*
		rom[0] = 32'h2042000C; //ADDI
		rom[1] = 32'h3042000C;	//ANDI
		rom[2] = 32'h34420000;	//ORI
		*/
		//rom[0]=32'h3C0280FF; SRLV
		/*rom[0] = 32'h00421020;
		rom[1] = 32'h00421026;
		rom[2] = 32'h00421822;*/
rom[0] = 32'h20420005;
rom[1] = 32'h20630007;
rom[2] = 32'h00432020;
rom[3] = 32'h00800008;
rom[4] = 32'h00432020;
rom[5] = 32'h00432020;
rom[6] = 32'h00432020;
rom[7] = 32'h00432020;
rom[8] = 32'h00432020;
rom[9] = 32'h00432020;
rom[10] = 32'h00432020;
rom[11] = 32'h00432020;
rom[12] = 32'hA0030000;
rom[13] = 32'h8C050000;
rom[14] = 32'h00432020;
rom[15] = 32'h00432020;
		for (i=16; i < 1024; i = i + 1)  // llenamos la memoria con 0
			begin
				rom[i] = 32'h00000000; //HLT				
			end
		//rom[56] = 32'h08000000;		
		
end

always @ (posedge clk)
begin
		auxData = rom [direccion];
end

assign instruccion = auxData;

endmodule

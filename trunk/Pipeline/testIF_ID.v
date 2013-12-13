`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:09:26 12/06/2013
// Design Name:   IF_ID
// Module Name:   D:/Facultad/Arquitectura de Computadoras 2013/Practico/TPF/Pipeline Simple/Pipeline/testIF_ID.v
// Project Name:  DataPath
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IF_ID
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testIF_ID;

	// Inputs
	reg clk;
	reg [31:0] nextPcIN;
	reg [31:0] instruccionIN;

	// Outputs
	wire [31:0] nextPcOUT;
	wire [31:0] instruccionOUT;

	// Instantiate the Unit Under Test (UUT)
	IF_ID uut (
		.clk(clk), 
		.nextPcIN(nextPcIN), 
		.instruccionIN(instruccionIN), 
		.nextPcOUT(nextPcOUT), 
		.instruccionOUT(instruccionOUT)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		nextPcIN = 32'b1;
		instruccionIN = 32'b1;

		// Wait 100 ns for global reset to finish
		#100;
       nextPcIN = 32'b0;
		instruccionIN = 32'b0;
		#100;
       nextPcIN = 32'h0000FFFF;
		instruccionIN = 32'h11110000; 
		#100;
       nextPcIN = 32'hFFFF0000;
		instruccionIN = 32'hFFFF0000; 
		#100;
       nextPcIN = 32'b0;
		instruccionIN = 32'b0;
		#100;
       nextPcIN = 32'h0000FFFF;
		instruccionIN = 32'h11110000; 
		#100;
       nextPcIN = 32'hFFFF0000;
		instruccionIN = 32'hFFFF0000; 
		#100;
       nextPcIN = 32'b0;
		instruccionIN = 32'b0;
		#100;
       nextPcIN = 32'h0000FFFF;
		instruccionIN = 32'h11110000; 
		#100;
       nextPcIN = 32'hFFFF0000;
		instruccionIN = 32'hFFFF0000; 
		#100;
       nextPcIN = 32'b0;
		instruccionIN = 32'b0;
		#100;
       nextPcIN = 32'h0000FFFF;
		instruccionIN = 32'h11110000; 
		#100;
       nextPcIN = 32'hFFFF0000;
		instruccionIN = 32'hFFFF0000; 
		 
		// Add stimulus here

	end
  always #50 clk = ~clk;    
endmodule


`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:44:49 12/06/2013
// Design Name:   pipeline
// Module Name:   D:/Facultad/Arquitectura de Computadoras 2013/Practico/TPF/Pipeline Simple/Pipeline/testP.v
// Project Name:  DataPath
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipeline
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testP;

	// Inputs
	reg clk;
	reg [31:0] insi;
	reg [31:0] diri;

	// Outputs
	wire [31:0] ins;
	wire [31:0] dir;

	// Instantiate the Unit Under Test (UUT)
	pipeline uut (
		.clk(clk), 
		.ins(ins), 
		.dir(dir), 
		.insi(insi), 
		.diri(diri)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		insi = 0;
		diri = 0;

		// Wait 100 ns for global reset to finish
		#100;
       diri = 32'b0;
		insi = 32'b0;
		#100;
      diri = 32'h0000FFFF;
		insi = 32'h00110011; 
		#100;
       diri = 32'hFFFF0000;
		insi = 32'h00010001; 
		#100;
       diri = 32'b0;
		insi = 32'b0;
		#100;
      diri = 32'h0000FFFF;
		insi = 32'h00100010; 
		#100;
       diri = 32'hFFFF0000;
		insi = 32'h10001000; 
		#100;
       diri = 32'b0;
		insi = 32'b0;
		#100;
      diri = 32'h0000FFFF;
		insi = 32'h00010001; 
		#100;
       diri = 32'hFFFF0000;
		insi = 32'h01000100; 
		
        
		// Add stimulus here

	end
   always #50 clk = ~clk;   
endmodule


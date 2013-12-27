`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:41:25 11/28/2013 
// Design Name: 
// Module Name:    MemoriaDeDatos 
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
module MemoriaDeDatos(
		input read,write,clk,
		input [31:0] din,
		input [9:0] direccion,
		output wire [31:0] dout
    );
	 
reg [31:0] data;
reg [31:0] ram [1023:0];
integer i;

initial begin
		
		for (i = 0; i < 1024; i=i+1)
			begin
				ram[i] = 32'b00000000000000000000000000000100;
			end
end
	
always @ (negedge clk)
begin
		if(read == 1)
			data = ram[direccion];
		if(write == 1)
			ram[direccion] = din;
end

assign dout = data;


endmodule

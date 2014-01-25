`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:08:19 01/21/2014 
// Design Name: 
// Module Name:    baud_gen 
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
module baud_gen
	#(
		parameter N = 8,
					 M = 163
	 )
	(
		input clk,
		output max_tick,
		output [N-1:0] q
    );

reg [N-1:0] r_reg;
wire [N-1:0] r_next;
reg aux;

initial begin
aux=1;
end

always @(negedge clk)
 begin	
	if(aux)
		begin
			aux=0;
			r_reg <= 0;
		end
	else
			r_reg <= r_next;
 end
 
assign r_next = (r_reg==(M-1)) ? 0 : r_reg + 1;

assign q = r_reg;
assign max_tick = (r_reg==(M-1)) ? 1 : 0;

endmodule

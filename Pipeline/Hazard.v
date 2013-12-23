`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:51:37 12/20/2013 
// Design Name: 
// Module Name:    Hazard 
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
module Hazard(
				output reg pcEnable,controlEnable,ifEnable,
				input [4:0] Rt,Rs,RtEx,
				input isLoad
    );

initial begin
pcEnable <= 1;
controlEnable <= 1;
ifEnable <= 1;
end	 

always @*
begin
	if( ((Rt == RtEx) || (Rs == RtEx) ) && (isLoad==1) )
		begin
			pcEnable <= 0;
			controlEnable <= 0;
			ifEnable <= 0;
		end
	else
		begin
			pcEnable <= 1;
			controlEnable <= 1;
			ifEnable <= 1;
		end
end


endmodule

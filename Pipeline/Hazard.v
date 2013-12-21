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
				output reg pcEnable,mux,ifEnable,
				input [4:0] Rt,Rs,Rd,
				input isRead
    );
	 
always @*
begin
	if( ((Rt == Rs) || (Rt == Rd) ) && (isRead==1) )
		begin
			pcEnable <= 0;
			mux <= 0;
			ifEnable <= 0;
		end
	else
		begin
			pcEnable <= 1;
			mux <= 1;
			ifEnable <= 1;
		end
end


endmodule

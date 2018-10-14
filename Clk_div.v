`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2018 16:07:43
// Design Name: 
// Module Name: clock
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module clock(
    input inclk,
    output  out1
    );
     reg out1=0;
    reg[29:0] a = 0;
    wire c,b;
    parameter karam = 50000000;
    
    always @(posedge inclk)
        begin
        a <= a+1;
        if(a==karam-1)
        begin
            a <= 0;
            out1 <= !out1;
        end
        
    end
        
endmodule

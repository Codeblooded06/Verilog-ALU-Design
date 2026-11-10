`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2026 23:16:10
// Design Name: 
// Module Name: ALU_4_tb
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


module ALU_4_tb;
reg[3:0]P;
reg [3:0]Q;
reg [3:0]ALU_SEL;
wire CARRY;
wire [3:0] ALU_OUT;
ALU_4 UUT(P,Q,ALU_SEL,CARRY,ALU_OUT);

initial begin

P=4'b0100; //4
Q = 4'b0010; //2
ALU_SEL = 4'b0000;
#50;

P=4'b0100; //4
Q = 4'b0010; //2
ALU_SEL = 4'b0001;
#50;

P=4'b0100; //4
Q = 4'b0010; //2
ALU_SEL = 4'b0010;
#50;

P=4'b0100; //4
Q = 4'b0010; //2
ALU_SEL = 4'b0011;
#50;

P=4'b0100; //4
Q = 4'b0010; //2
ALU_SEL = 4'b0100;
#50;

P=4'b0100; //4
Q = 4'b0010; //2
ALU_SEL = 4'b0101;
#50;

P=4'b0100; //4
Q = 4'b0010; //2
ALU_SEL = 4'b0110;
#50;

P=4'b0100; //4
Q = 4'b0010; //2
ALU_SEL = 4'b0111;
#50;

P=4'b0100; //4
Q = 4'b0010; //2
ALU_SEL = 4'b1000;
#50;

P=4'b0100; //4
Q = 4'b0010; //2
ALU_SEL = 4'b1001;
#50;

P=4'b0100; //4
Q = 4'b0010; //2
ALU_SEL = 4'b1010;
#50;

P=4'b0100; //4
Q = 4'b0010; //2
ALU_SEL = 4'b1011;
#50;

P=4'b0100; //4
Q = 4'b0010; //2
ALU_SEL = 4'b1100;
#50;

P=4'b0100; //4
Q = 4'b0010; //2
ALU_SEL = 4'b1101;
#50;

P=4'b0100; //4
Q = 4'b0010; //2
ALU_SEL = 4'b1110;
#50;

P=4'b0100; //4
Q = 4'b0010; //2
ALU_SEL = 4'b1111;
#50;

end
endmodule











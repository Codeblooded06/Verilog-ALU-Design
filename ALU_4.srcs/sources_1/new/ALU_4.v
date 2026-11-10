`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2026 22:59:07
// Design Name: 
// Module Name: ALU_4
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


module ALU_4(
    input [3:0] P,
    input [3:0] Q,
    input [3:0] ALU_SEL,
    output [3:0] ALU_OUT,
    output CARRY
    );
    reg [3:0] ALU_RESULT;
    wire [4:0] temp;
    assign ALU_OUT = ALU_RESULT;
    assign tmp = {1'b0,P} +{1'b0,Q};
    assign carry = temp [4];
    
    always @(*)
    begin 
    case (ALU_SEL)
    4'b0000: ALU_RESULT = P+Q; // ADDITION
    4'b0001: ALU_RESULT = P-Q; // SUBTRACTION
    4'b0010: ALU_RESULT = P*Q; // PRODUCT
    4'b0011: ALU_RESULT = P/Q; // DIVISION
    4'b0100: ALU_RESULT = P<<Q; // SHIFT LEFT BY 1
    4'b0101: ALU_RESULT = P>>Q; // SHIFT RIGHT BY 1
    4'b0110: ALU_RESULT = {P[2:0],P[3]}; // ROTATE LEFT
    4'b0111: ALU_RESULT = {P[0],P[3:1]}; // ROTATE LEFT
    4'b1000: ALU_RESULT = P&Q; // LOGIC AND
    4'b1001: ALU_RESULT = P|Q; // LOGICAL OR
    4'b1010: ALU_RESULT = P^Q; // LOGICAL XOR
    4'b1011: ALU_RESULT = ~(P|Q); // LOGICAL NOR
    4'b1100: ALU_RESULT = ~(P&Q); // LOGICAL NAND
    4'b1101: ALU_RESULT = ~(P^Q); // LOGICAL XNOR
    4'b1110: ALU_RESULT = (P>Q)?4'd1:4'd0; // GREATER COMPARISON
    4'b1111: ALU_RESULT = (P==Q)?4'd1:4'd0; // EQUAL COMPARISION
    default : ALU_RESULT = P+Q;
    endcase
    end

endmodule

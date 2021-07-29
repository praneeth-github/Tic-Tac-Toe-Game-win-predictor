`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:31:43 03/19/2021 
// Design Name: 
// Module Name:    tic_tac_toe 
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
module tic_tac_toe(X1, X2, X3, X4, X5, X6, X7, X8, X9, F);
	input [0:7] X1;
    input [0:7] X2;
    input [0:7] X3;
    input [0:7] X4;
    input [0:7] X5;
    input [0:7] X6;
    input [0:7] X7;
    input [0:7] X8;
    input [0:7] X9;

	 output reg F;

	wire X_one, X_two, X_three, X_four, X_five, X_six, X_seven, X_eight, X_nine;

	//these wires keep a track of whether the input is X or O
	 assign X_one = (X1=="X");
    assign X_two = (X2=="X");
    assign X_three = (X3=="X");
    assign X_four = (X4=="X");
    assign X_five = (X5=="X");
    assign X_six = (X6=="X");
    assign X_seven = (X7=="X");
    assign X_eight = (X8=="X");
    assign X_nine = (X9=="X");

	always @(X_one, X_two, X_three, X_four, X_five, X_six, X_seven, X_eight, X_nine)
    begin
			//uncomplemented terms are for predicting winning chance for the participant who marks 'X' and complemented terms are for the partcipant who marks 'O' 
        F <= (((X_one && X_two && X_three) || (X_four && X_five && X_six) || (X_seven && X_eight && X_nine) || ((~X_one && ~X_two && ~X_three) || (~X_four && ~X_five && ~X_six) || (~X_seven && ~X_eight && ~X_nine) || (X_one && X_four && X_seven) || (X_two && X_five && X_eight) || (X_three && X_six && X_nine)) || (~X_one && ~X_four && ~X_seven) || (~X_two && ~X_five && ~X_eight) || (~X_three && ~X_six && ~X_nine)) || (X_one && X_five && X_nine) || (X_three && X_five && X_seven) ||(~X_one && ~X_five && ~X_nine) || (~X_three && ~X_five && ~X_seven));
		  
    end
endmodule

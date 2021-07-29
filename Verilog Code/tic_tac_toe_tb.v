`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:32:51 03/19/2021
// Design Name:   tic_tac_toe
// Module Name:   D:/4th Semester/CS203 lab/Mini-Project/mini-project/tic_tac_toe_tb.v
// Project Name:  mini-project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: tic_tac_toe
//
// Dependencies:
//  
// Revision:
// Revision 0.01 - File Created
// Additional Comments: 
// 
////////////////////////////////////////////////////////////////////////////////

module tic_tac_toe_tb_v;

	// Inputs
	reg [0:7] X1;
	reg [0:7] X2;
	reg [0:7] X3;
	reg [0:7] X4;
	reg [0:7] X5;
	reg [0:7] X6;
	reg [0:7] X7;
	reg [0:7] X8;
	reg [0:7] X9;

	// Outputs
	wire F;

	// Instantiate the Unit Under Test (UUT)
	tic_tac_toe uut (
		.X1(X1), 
		.X2(X2), 
		.X3(X3), 
		.X4(X4), 
		.X5(X5), 
		.X6(X6), 
		.X7(X7), 
		.X8(X8), 
		.X9(X9), 
		.F(F)
	);

	initial begin
		// Initialize Inputs
		X1 = "X"; X2 = "O"; X3 = "X"; X4 = "O"; X5 = "X"; X6 = "O"; X7= "O"; X8 = "X"; X9 = "O";

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100;
		$monitor("X1 %s, X2 %s, X3 %s, X4 %s, X5 %s, X6 %s, X7 %s, X8 %s, X9 %s F %b",X1,X2,X3,X4,X5,X6,X7,X8,X9,F);
		#100;
        /*
        XOX
        XOO
        OOX
        */
        X1 = "X"; X2 = "O"; X3 = "X"; X4 = "X"; X5 = "O"; X6 = "O"; X7= "O"; X8 = "O"; X9 = "X";
        $monitor("X1 %s, X2 %s, X3 %s, X4 %s, X5 %s, X6 %s, X7 %s, X8 %s, X9 %s F %b",X1,X2,X3,X4,X5,X6,X7,X8,X9,F);
        #100;
        X1 = "X"; X2 = "O"; X3 = "X"; X4 = "X"; X5 = "X"; X6 = "O"; X7= "O"; X8 = "O"; X9 = "X";
        $monitor("X1 %s, X2 %s, X3 %s, X4 %s, X5 %s, X6 %s, X7 %s, X8 %s, X9 %s F %b",X1,X2,X3,X4,X5,X6,X7,X8,X9,F);
        #100;
        X1 = "X"; X2 = "O"; X3 = "O"; X4 = "X"; X5 = "O"; X6 = "O"; X7= "O"; X8 = "X"; X9 = "O"; 
        $monitor("X1 %s, X2 %s, X3 %s, X4 %s, X5 %s, X6 %s, X7 %s, X8 %s, X9 %s F %b",X1,X2,X3,X4,X5,X6,X7,X8,X9,F);
		  #100;
		  /*XXO
		    OOX
			 XXO*/
        X1 = "X"; X2 = "X"; X3 = "O"; X4 = "O"; X5 = "O"; X6 = "X"; X7= "X"; X8 = "X"; X9 = "O";
		  $monitor("X1 %s, X2 %s, X3 %s, X4 %s, X5 %s, X6 %s, X7 %s, X8 %s, X9 %s F %b",X1,X2,X3,X4,X5,X6,X7,X8,X9,F);
		  #100;
        X1 = "X"; X2 = "X"; X3 = "O"; X4 = "O"; X5 = "X"; X6 = "X"; X7= "O"; X8 = "O"; X9 = "X";
		  $monitor("X1 %s, X2 %s, X3 %s, X4 %s, X5 %s, X6 %s, X7 %s, X8 %s, X9 %s F %b",X1,X2,X3,X4,X5,X6,X7,X8,X9,F);

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here

	end 
      
endmodule


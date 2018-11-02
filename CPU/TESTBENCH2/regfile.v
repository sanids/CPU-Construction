/*
Register Module
writes and read values from registers 0-7

Name: Varunraj Rana
Date: October 22nd, 2018
*/

module regfile(data_in,writenum,write,readnum,clk,data_out);
    input [15:0] data_in;
    input [2:0] writenum, readnum;
    input write,clk;
    output [15:0] data_out;

    wire [15:0] R0, R1, R2, R3, R4, R5, R6, R7;
    wire [7:0] write_decout, read_decout, ANDed_out;

	//Decode writenum and readnum --> 1 hot codes
    Dec #(3,8) write_dec(writenum,write_decout); 

	//And 'write' and 'write decoder
    ANDed andss(write_decout,write,ANDed_out);

    vDFFE #(16) writeR0(clk,ANDed_out[0],data_in,R0);
    vDFFE #(16) writeR1(clk,ANDed_out[1],data_in,R1);
    vDFFE #(16) writeR2(clk,ANDed_out[2],data_in,R2);
    vDFFE #(16) writeR3(clk,ANDed_out[3],data_in,R3);
    vDFFE #(16) writeR4(clk,ANDed_out[4],data_in,R4);
    vDFFE #(16) writeR5(clk,ANDed_out[5],data_in,R5);
    vDFFE #(16) writeR6(clk,ANDed_out[6],data_in,R6);
	vDFFE #(16) writeR7(clk,ANDed_out[7],data_in,R7);   
	
	Dec #(3,8) read_dec(readnum,read_decout);

    
    Mux8 #(16) MuxR(R0, R1, R2, R3, R4, R5, R6, R7, read_decout, data_out);

endmodule
	
module Dec(a, b);

 parameter n=3 ;
 parameter m=8 ;

 input [n-1:0] a ;
 output [m-1:0] b ;
 
 wire [m-1:0] b = 1<<a ;

endmodule

//D-Flip Flop Module
module vDFFE(clk,ANDed_out, in, out) ;
	parameter n=1;
	input clk,ANDed_out;
	input [n-1:0] in;
	output reg [n-1:0] out;

	wire [n-1:0] next_out;
	assign next_out = ANDed_out ? in:out;	
	
	always @(posedge clk)
		out=next_out;
endmodule

//Each output of decoder is ANDed with write as per instructions.
//Writing it as a separate function to improve code format.
module ANDed(in,write,out);
 input [7:0] in;
 input write;
 output [7:0] out;

 assign out[0] = in[0] & write;
 assign out[1] = in[1] & write;
 assign out[2] = in[2] & write;
 assign out[3] = in[3] & write;
 assign out[4] = in[4] & write;
 assign out[5] = in[5] & write;
 assign out[6] = in[6] & write;
 assign out[7] = in[7] & write;

endmodule

module Mux8(R0,R1,R2,R3,R4,R5,R6,R7,load,out);
  	parameter k=1;
	input [k-1:0] R0,R1,R2,R3,R4,R5,R6,R7;
	input [7:0] load;
	output wire [k-1:0] out;
	
	assign out = 	({k{load[0]}} & R0) |
					({k{load[1]}} & R1) |
					({k{load[2]}} & R2) |
					({k{load[3]}} & R3) |
					({k{load[4]}} & R4) |
					({k{load[5]}} & R5) |
					({k{load[6]}} & R6) |
					({k{load[7]}} & R7);
endmodule
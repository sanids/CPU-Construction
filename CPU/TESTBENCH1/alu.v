/*
Arithmetic Logic Unit
decides what arithmentic operation to perform

ALU
00--> addition
01-->subtraction
10--> anded
11--> not B

also detects overflow
overflow code for ss6

Name: Varunraj Rana
Date: October 22nd, 2018
*/

module ALU(Ain,Bin,ALUop,out,Z);
    input [15:0] Ain,Bin;
    input [1:0] ALUop;
    output [15:0] out;
    output [2:0] Z;

    reg [15:0] out;
    wire ovf;
    wire[15:0] sout;

    AddSub #(16) overflow(Ain,Bin,1'b1,sout,ovf);
    assign Z= {((out==16'b0) ? 1'b1 : 1'b0),ovf,out[15]};    //zero flag, overflow flag, negative flag
    
    always @(*) begin
        case (ALUop)
            2'b00 : out = Ain + Bin;
            2'b01 : out = Ain - Bin;
            2'b10 : out = Ain & Bin;
            2'b11 : out = ~Bin;
        endcase
    end
endmodule

//Adder from ss6
module AddSub(a,b,sub,s,ovf);
  parameter n = 8;
  input [n-1:0] a, b; //inputs 
  input sub ; //subtract if sub = 1, add otherwise 
  output [n-1:0] s;
  output ovf;  //ovf is 1 if overflow 
  wire c1, c2;

  assign ovf = c1 ^ c2; //overflow if signs don't match 

  //add non sign bits
  Adder1 #(n-1) ai(a[n-2:0],b[n-2:0]^{n-1{sub}},sub,c1,s[n-2:0]);
  //add sign bits
  Adder1 #(1) as(a[n-1],b[n-1]^sub,c1,c2,s[n-1]);
endmodule 

//Adder from ss6
module Adder1(a,b,cin,cout,s);
  parameter n = 8;
  input [n-1:0] a, b;
  input cin ;
  output [n-1:0] s;
  output cout;

  assign {cout, s} = a + b + cin;
endmodule
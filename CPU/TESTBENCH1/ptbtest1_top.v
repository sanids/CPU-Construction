/*
Lab7 top module


*/

module ptbtest1_top(KEY,SW,LEDR,HEX0,HEX1,HEX2,HEX3,HEX4,HEX5);
    input [3:0] KEY;
    input [9:0] SW;
    output [9:0] LEDR;
    output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;


    wire Z, N, V;
    wire [15:0] read_data,dout,out,hout;
    wire[8:0] mem_addr,PC;
    wire[1:0] mem_cmd;
    wire msel,led,write,switch,anded;
    wire mread=1;
    wire mwrite=1;

    assign msel= (mem_addr[8]==1'b0);
    assign write= (mem_cmd[0]==mwrite) & msel;
    assign anded= (mem_cmd[1] & mread) & msel;

    assign read_data= anded ? dout : 16'bz;
    
    cpu CPU(~KEY[0],~KEY[1],read_data,out,N,V,Z,mem_addr,mem_cmd);

    RAM MEM(~KEY[0], mem_addr[7:0], mem_addr[7:0], write, out, dout);

    vDFFtop #(8) ledout(~KEY[0],led,out[7:0],LEDR[7:0]);
    assign LEDR[8]=out[8];
    assign LEDR[9]=switch;

    assign switch = ((mem_addr == 9'h140) & mem_cmd[1]); //determine load
    assign led    = ((mem_addr == 9'h100) & mem_cmd[0]); //determine load

    assign read_data= switch ? SW[7:0] : 16'bz;

    assign hout = SW[9] ? out : dout;
    // fill in sseg to display 4-bits in hexidecimal 0,1,2...9,A,B,C,D,E,F
    sseg H0(mem_addr[3:0],   HEX0);
    sseg H1(mem_addr[7:4],   HEX1);
    sseg H2(hout[3:0],   HEX2);
    sseg H3(hout[7:4],   HEX3);
    sseg H4(hout[11:8],  HEX4);
    sseg H5(hout[15:12], HEX5);
   
endmodule

module RAM(clk, read_address, write_address, write, din, dout);
  parameter data_width = 16;
  parameter addr_width = 8; 
  parameter filename = "ptbtest1.txt";

  input clk; 
  input [addr_width - 1:0] read_address, write_address;
  input write;
  input [data_width - 1:0] din;
  output reg [data_width - 1:0] dout;

  reg[data_width - 1:0] mem [2**addr_width-1:0];
  
  initial $readmemb(filename, mem);
  
  always@(posedge clk)begin
    if(write)
      mem[write_address] <= din;
    dout <= mem[read_address];
  end
endmodule 

module vDFFtop(clk,load,in, out) ;
	parameter n=1;
    input clk;
    input load;
	input [n-1:0] in;
	output reg [n-1:0] out;

    wire[n-1:0] next_out;
    assign next_out= load ? in:out;

	always @(posedge clk) begin
        out=next_out;
    end
endmodule

// The sseg module below can be used to display the value of datpath_out on
// the hex LEDS the input is a 4-bit value representing numbers between 0 and
// 15 the output is a 7-bit value that will print a hexadecimal digit.  You
// may want to look at the code in Figure 7.20 and 7.21 in Dally but note this
// code will not work with the DE1-SoC because the order of segments used in
// the book is not the same as on the DE1-SoC (see comments below).

module sseg(in,segs);
  input [3:0] in;
  output reg[6:0] segs;

    always@(*) begin
      case(in)
      4'b0: segs = 7'b1000000; //displays 0
      4'b0001: segs = 7'b1111001; //displays 1
      4'b0010: segs = 7'b0100100; //displays 2
      4'b0011: segs = 7'b0110000; //displays 3
      4'b0100: segs = 7'b0011001; //displays 4
      4'b0101: segs = 7'b0010010; //displays 5
      4'b0110: segs = 7'b0000010; //displays 6
      4'b0111: segs = 7'b1111000; //displays 7
      4'b1000: segs = 7'b0000000; //displays 8
      4'b1001: segs = 7'b0010000; //displays 9
      4'b1010: segs = 7'b0001000; //displays A
      4'b1011: segs = 7'b0000011; //displays b
      4'b1100: segs = 7'b1000110; //displays C
      4'b1101: segs = 7'b0100001; //displays d
      4'b1110: segs = 7'b0000110; //displays E
      4'b1111: segs = 7'b0001110; //displays F
      default: segs = 7'b1111111; //nothing
      endcase
    end
endmodule

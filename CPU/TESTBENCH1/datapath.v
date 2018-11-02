/*
Datapath module
Instantiates all parts of the cicuit and outputs to lab5_top
Name: Varunraj Rana
Date: October 22nd, 2018
*/
/*
module datapath(clk,readnum,vsel, loada, loadb, shift,
                asel, bsel, ALUop, loadc, loads, writenum,
                write, Z_out, datapath_out, sximm8, mdata, PC,sximm5);
*/
module datapath(clk,readnum,vsel,loada,loadb,shift,asel,bsel,ALUop,
loadc,loads,writenum,write,Z_out,mdata,sximm8,sximm5,PC,datapath_out,shiftavoid);
    //inputs
    input clk,write,loada,loadb,asel,bsel,loadc,loads,shiftavoid;
    input[1:0] shift,ALUop;
    input[3:0] vsel;
    input[2:0] writenum,readnum;
    input[15:0] mdata,sximm8,sximm5;    //no more datapath in
    input[8:0] PC;

    //outputs
    output[2:0] Z_out;
    output [15:0] datapath_out;

    //define all internal wires
    wire[2:0] Z;
    wire [15:0] 
    data_in,            //to regfile
    data_out,           //regfile results
    data_A,              //datapath signals. pipeline registers 3,4,5
    data_B,
    data_C,
    sout,               //shifter result
    Ain,                //output mux 6 and 7 affected by asel,bsel
    Bin,
    ALUout,
    check;             //ALU output


    MUX4 #(16) multi(mdata,sximm8,{7'b0,PC},datapath_out,vsel,data_in);

    regfile REGFILE(data_in,writenum,write,readnum,clk,data_out);    //reg 1 u0

    //assign caseA = loada ? data_out : data_A;    //based on loada 
    vDFFdata #(16) pipeA(clk,loada,data_out,data_A);      //flip flop instantiation

    vDFFdata #(16) pipeB(clk,loadb,data_out,data_B);      //flip flop instantiation

    shifter sft(data_B,shift,sout);   //shifter 8 u1
    
    assign Bin = bsel ? sximm5 : check;

    assign Ain = asel ? 16'b0 : data_A;
    assign check = shiftavoid?data_B:sout;


    ALU logic(Ain,Bin,ALUop,ALUout,Z);   //ALU 
  
    vDFFdata #(16) pipeC(clk,loadc,ALUout,data_C);      //flip flop instantiation

    vDFFdata #(3) pipeS(clk,loads,Z,Z_out);      //flip flop instantiation

    assign datapath_out=data_C;

endmodule


//D-Flip Flop Module
module vDFFdata(clk,load,in, out) ;
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

module MUX4(a0,a1,a2,a3,s,b);//used in muxb

	parameter k =1;
	input [k-1:0] a3,a2,a1,a0;
	input [3:0] s;
	output [k-1:0] b;
	wire [k-1:0] b = ({k{s[0]}} & a0)|({k{s[1]}} & a1)|({k{s[2]}} & a2)|({k{s[3]}} & a3);
	
endmodule
/*
cpu module
datapath controller with instruction register, decoder and FSM.
Outputs to lab6_top

Name: Varunraj Rana
Date: October 22nd, 2018
*/


module cpu(clk,reset,in,out,N,V,Z,mem_addr,mem_cmd);
    //  I/O
    input clk,reset;
    input[15:0] in;
    output[15:0] out;
    output N, V, Z;
    output[1:0] mem_cmd;
    output[8:0] mem_addr;

    //internal wires
    wire[15:0] instout,C;
    wire[15:0] sximm5,sximm8,mdata,addr_out;
    wire[8:0] PC,nPC,mem_addr;
    wire loada,loadb,loadc,loads,load_pc,load_ir,write,asel,bsel,shiftavoid;
    wire[2:0] opcode,readnum,writenum,nsel,Z_out;
    wire[1:0] op,ALUop,shift;
    wire[3:0] vsel;
    assign out=C;

	assign shiftavoid = ({opcode,op}==5'b10000|{opcode,op}|5'b01100); // to avoid shift if STR or LDR state

    vDFFcpu #(16) instreg(clk,load_ir,in,instout); //instruction register
    vDFFcpu #(9) Pc(clk,load_pc,nPC,PC);
    vDFFcpu #(16) addrout(clk,load_addr,C,addr_out);

	instdecoder dec(instout,nsel,opcode,op,ALUop,sximm5,sximm8,shift,readnum,writenum);

    FSM state(  clk,reset,opcode,op,nsel,vsel,loada,loadb,loadc,loads,asel,bsel,
                write,load_pc,reset_pc,addr_sel,mem_cmd,load_ir,load_addr       );

    //assign shiftavoid= 
    datapath DP(clk,readnum,vsel, loada, loadb, shift,
                asel, bsel, ALUop, loadc, loads, writenum,
                write, Z_out,mdata,sximm8,sximm5,PC,C,shiftavoid);

    assign mdata=in;
    assign nPC= reset_pc ? 9'b0: PC +1;
    assign mem_addr= addr_sel ? PC : addr_out;
    
    assign N = Z_out[0];
    assign V = Z_out[1];
    assign Z = Z_out[2];

endmodule

module instdecoder(in,nsel,opcode,op,ALUop,sximm5,sximm8,shift,readnum,writenum);
        input [15:0] in;
        input [2:0] nsel;

        output [1:0] ALUop;
        output [15:0] sximm5,sximm8;
        output [1:0] shift;
        output [2:0] readnum,writenum;
        output [2:0] opcode;
        output [1:0] op;

        //define wires
        wire [2:0] Rm, Rd, Rn;
        wire [4:0] imm5;
        wire [7:0] imm8;

        //Assign wires
        assign  imm5 = in[4:0];
        assign  imm8 = in[7:0];
        assign  Rn = in[10:8];
        assign  Rd = in[7:5];
        assign  Rm = in[2:0];
        assign ALUop = in[12:11];
        assign shift = in[4:3];
        assign op = in[12:11];
        assign opcode = in[15:13];

        //Extended sign for sximm5 and sximm8
        assign sximm5 = {{11{imm5[4]}},imm5[4:0]};
        assign sximm8 = {{8{imm8[7]}},imm8[7:0]};

        Mux3 #(3) ReadMux(in[2:0],in[7:5],in[10:8],nsel,readnum);
        assign writenum = readnum;//has to be identical

endmodule

module Mux3(a0,a1,a2,s,b);//used in muxb
	parameter k =1;
	input [k-1:0] a2,a1,a0;
	input [2:0] s;
	output [k-1:0] b;
	wire [k-1:0] b = ({k{s[0]}} & a0)|({k{s[1]}} & a1)|({k{s[2]}} & a2);
	
endmodule


module FSM( clk,reset,opcode,op,nsel,vsel,loada,loadb,loadc,loads,asel,bsel,
            write,load_pc,reset_pc,addr_sel,mem_cmd,load_ir,load_addr);

    input clk, reset;
    input [2:0] opcode;
    input [1:0] op;
    
    output loada,loadb,loadc,loads,asel,bsel,write,load_pc,reset_pc,addr_sel,load_ir,load_addr;
    output [3:0] vsel;
    output[1:0] mem_cmd;
    output [2:0] nsel;

    wire [3:0] cstate,nstate,resetstate;
    reg [24:0] next;

    `define Reset       4'b0000    //0
    `define IF1		    4'b0001    //1
    `define IF2		    4'b0010    //2
    `define UpdatePC    4'b0011    //3
    `define Dec         4'b0100    //4
    `define getA        4'b0101    //5
    `define getB        4'b0110    //6
    `define ADD         4'b0111    //7
    `define AND         4'b1000    //8
    `define CMP         4'b1001    //9
    `define MVN         4'b1010    //10
    `define MOV         4'b1011    //11
    `define LDR         4'b1100    //12
    `define STR         4'b1101    //13
    `define writereg    4'b1111    //14
    `define HALT        4'b1110    //15


    assign resetstate = reset ? `Reset:nstate;
    vDFFcpu2 #(4) STATE( clk,resetstate,cstate);


    assign {nstate,vsel,nsel,loada,loadb,asel,bsel,loadc,loads,write,load_pc,
            reset_pc,addr_sel,mem_cmd,load_ir,load_addr}                        = next;


    always @(*) begin
        casex({cstate,opcode,op})
        //nstate,vsel,nsel,{loada,loadb,asel,bsel,loadc,loads,write},{load_pc,reset_pc,addr_sel,mem_cmd,load_ir,load_addr}
            //Wait
            {`Reset,5'bx}:     next=   {`IF1,      4'b0,3'b0,7'b0,7'b1100000 }; //reset->IF1
            {`IF1,  5'bx}:     next=   {`IF2,      4'b0,3'b0,7'b0,7'b0011000 }; //IF1->IF2
            {`IF2,  5'bx}:     next=   {`UpdatePC, 4'b0,3'b0,7'b0,7'b0011010 }; //IF2->UpdatePC
            {`UpdatePC,5'bx}:  next=   {`Dec,      4'b0,3'b0,7'b0,7'b1000000 }; //UpdatePC->Dec

            //MOV
            {`Dec,5'b11010}: next ={`writereg, 4'b0010,3'b100,7'b0000001,7'b0000000};//MOV
            
            //MOV shift
            {`Dec,  5'b11000}: next =   {`getB,     4'b0000,3'b001,7'b0100000,7'b0000000};//get val1
            {`getB, 5'b11000}: next =   {`MOV,      4'b0000,3'b000,7'b0010100,7'b0000000};//move val
            {`MOV,  5'b11000}: next =   {`writereg, 4'b1000,3'b010,7'b0000001,7'b0000000};//write val
            
            //ADD
            {`Dec, 5'b10100}: next =    {`getA,     4'b0000,3'b100,7'b1000000,7'b0000000}; //get val1 
            {`getA,5'b10100}: next =    {`getB,     4'b0000,3'b001,7'b0100000,7'b0000000}; //get val2 
            {`getB,5'b10100}: next =    {`ADD,      4'b0000,3'b000,7'b0000100,7'b0000000}; //add val1,val2
            {`ADD, 5'b10100}: next =    {`writereg, 4'b1000,3'b010,7'b0000001,7'b0000000}; //write new val

            //AND
            {`Dec, 5'b10110}: next =    {`getA,     4'b0000,3'b100,7'b1000000,7'b0000000};//get val1 
            {`getA,5'b10110}: next =    {`getB,     4'b0000,3'b001,7'b0100000,7'b0000000};//get val2 
            {`getB,5'b10110}: next =    {`AND,      4'b0000,3'b000,7'b0000100,7'b0000000};//and val,val2
            {`AND, 5'b10110}: next =    {`writereg, 4'b1000,3'b010,7'b0000001,7'b0000000};//write new val
            
            //CMP 
            {`Dec, 5'b10101}: next =    {`getA,     4'b0000,3'b100,7'b1000000,7'b0000000}; //get val1 
            {`getA,5'b10101}: next =    {`getB,     4'b0000,3'b001,7'b0100000,7'b0000000}; //get val2 
            {`getB,5'b10101}: next =    {`writereg, 4'b0000,3'b000,7'b0000010,7'b0000000}; //cmp val1,val2

            //MVN
            {`Dec, 5'b10111}: next =    {`getB,     4'b0000,3'b001,7'b0100000,7'b0000000}; //get val
            {`getB,5'b10111}: next =    {`MVN,      4'b0000,3'b000,7'b0010100,7'b0000000}; //sx
            {`MVN, 5'b10111}: next =    {`writereg, 4'b1000,3'b010,7'b0000001,7'b0000000};//write new val
            
            //LDR
            {`Dec,     5'b01100}: next =    {`getA,     4'b0000,3'b100,7'b1000000,7'b0000000};//reads contents of rn register 
            {`getA,    5'b01100}: next =    {`ADD,      4'b0000,3'b000,7'b0001100,7'b0000000};//adds rn and sxim5 and outputs to data address
            {`ADD,     5'b01100}: next =    {`LDR,      4'b0001,3'b000,7'b0000000,7'b0001001};//stores rn+sxim5 in data address
            {`LDR,     5'b01100}: next =    {`writereg, 4'b0001,3'b010,7'b0000001,7'b0001001};//does memory read and saves in rn
            {`writereg,5'b01100}: next =    {`IF1,      4'b0001,3'b010,7'b0000001,7'b0001001};
            
            //STR
            {`Dec, 5'b10000}: next =    {`getA,     4'b0000,3'b100,7'b1000000,7'b0000000};//reads contents of rn register 
            {`getA,5'b10000}: next =    {`ADD,      4'b0000,3'b000,7'b0001100,7'b0000000};//adds rn and sxim5 and outputs to data address
            {`ADD, 5'b10000}: next =    {`STR,      4'b0000,3'b000,7'b0000000,7'b0000001};//stores into data address
            {`STR, 5'b10000}: next =    {`getB,     4'b0000,3'b010,7'b0100000,7'b0000000};//reads contents of rd register 
            {`getB,5'b10000}: next =    {`MOV,      4'b0000,3'b000,7'b0010100,7'b0000000};//outputs rd from datapath
            {`MOV, 5'b10000}: next =    {`writereg, 4'b0000,3'b000,7'b0000000,7'b0000100};//stores using write command into mem

            {`writereg,5'bx}: next = {`IF1,  21'b0}; //writereg->IF1 always
	        {`HALT,5'bx}:     next = {`HALT, 21'b0};
            default:          next = {`Reset,21'b0};
        endcase
    end
endmodule
	


//flip-flop module
module vDFFcpu(clk,load,in, out) ;
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

//load enable flip flop
module vDFFcpu2(clk,in,next_out);
	parameter n=1;
	input clk;
	input [n-1:0] in;
	output reg [n-1:0] next_out;
	
	always @(posedge clk)
		next_out = in;	
endmodule

//Finite State Machine
/*
module FSM( clk,reset,opcode,op,nsel,vsel,loada,loadb,loadc,loads,asel,bsel,
            write,load_pc,reset_pc,addr_sel,mem_cmd,load_ir,load_addr);

    input clk, reset;
    input [2:0] opcode;
    input [1:0] op;
    
    output loada,loadb,loadc,loads,asel,bsel,write,load_pc,reset_pc,addr_sel,load_ir,load_addr;
    output [3:0] vsel;
    output[1:0] mem_cmd;
    output [2:0] nsel;

    wire [3:0] cstate,nstate,resetstate;
    reg [24:0] next;

    `define Reset       4'b0000    //0
    `define IF1		    4'b0001    //1
    `define IF2		    4'b0010    //2
    `define UpdatePC    4'b0011    //3
    `define Dec         4'b0100    //4
    `define getA        4'b0101    //5
    `define getB        4'b0110    //6
    `define ADD         4'b0111    //7
    `define AND         4'b1000    //8
    `define CMP         4'b1001    //9
    `define MVN         4'b1010    //10
    `define MOV         4'b1011    //11
    `define LDR         4'b1100    //12
    `define STR         4'b1101    //13
    `define writereg    4'b1111    //14
    `define HALT        4'b1110    //15


    assign resetstate = reset ? `Reset:nstate;
    vDFFcpu2 #(4) STATE( clk,resetstate,cstate);


    assign {nstate,vsel,nsel,loada,loadb,asel,bsel,loadc,loads,write,load_pc,
            reset_pc,addr_sel,mem_cmd,load_ir,load_addr}                        = next;


    always @(*) begin
        casex({cstate,opcode,op})
        //nstate,vsel,nsel,{loada,loadb,asel,bsel,loadc,loads,write},{load_pc,reset_pc,addr_sel,mem_cmd,load_ir,load_addr}
            //Wait
            {`Reset,5'bx}:     next=   {`IF1,      4'b0,3'b0,7'b0,7'b1100000 }; //reset->IF1
            {`IF1,  5'bx}:     next=   {`IF2,      4'b0,3'b0,7'b0,7'b0011000 }; //IF1->IF2
            {`IF2,  5'bx}:     next=   {`UpdatePC, 4'b0,3'b0,7'b0,7'b0011010 }; //IF2->UpdatePC
            {`UpdatePC,5'bx}:  next=   {`Dec,      4'b0,3'b0,7'b0,7'b1000000 }; //UpdatePC->Dec

            //MOV
            {`Dec,5'b11010}: next ={`writereg, 4'b0010,3'b100,7'b0000001,7'b0000000};//MOV
            
            //MOV shift
            {`Dec,  5'b11000}: next =   {`getB,     4'b0000,3'b001,7'b0100000,7'b0000000};//get val1
            {`getB, 5'b11000}: next =   {`MOV,      4'b0000,3'b000,7'b0010100,7'b0000000};//move val
            {`MOV,  5'b11000}: next =   {`writereg, 4'b1000,3'b010,7'b0000001,7'b0000000};//write val
            
            //ADD
            {`Dec, 5'b10100}: next =    {`getA,     4'b0000,3'b100,7'b1000000,7'b0000000}; //get val1 
            {`getA,5'b10100}: next =    {`getB,     4'b0000,3'b001,7'b0100000,7'b0000000}; //get val2 
            {`getB,5'b10100}: next =    {`ADD,      4'b0000,3'b000,7'b0000100,7'b0000000}; //add val1,val2
            {`ADD, 5'b10100}: next =    {`writereg, 4'b1000,3'b010,7'b0000001,7'b0000000}; //write new val

            //AND
            {`Dec, 5'b10110}: next =    {`getA,     4'b0000,3'b100,7'b1000000,7'b0000000};//get val1 
            {`getA,5'b10110}: next =    {`getB,     4'b0000,3'b001,7'b0100000,7'b0000000};//get val2 
            {`getB,5'b10110}: next =    {`AND,      4'b0000,3'b000,7'b0000100,7'b0000000};//and val,val2
            {`AND, 5'b10110}: next =    {`writereg, 4'b1000,3'b010,7'b0000001,7'b0000000};//write new val
            
            //CMP 
            {`Dec, 5'b10101}: next =    {`getA,     4'b0000,3'b100,7'b1000000,7'b0000000}; //get val1 
            {`getA,5'b10101}: next =    {`getB,     4'b0000,3'b001,7'b0100000,7'b0000000}; //get val2 
            {`getB,5'b10101}: next =    {`writereg, 4'b0000,3'b000,7'b0000010,7'b0000000}; //cmp val1,val2

            //MVN
            {`Dec, 5'b10111}: next =    {`getB,     4'b0000,3'b001,7'b0100000,7'b0000000}; //get val
            {`getB,5'b10111}: next =    {`MVN,      4'b0000,3'b000,7'b0010100,7'b0000000}; //sx
            {`MVN, 5'b10111}: next =    {`writereg, 4'b1000,3'b010,7'b0000001,7'b0000000};//write new val
            
            //LDR
            {`Dec,     5'b01100}: next =    {`getA,     4'b0000,3'b100,7'b1000000,7'b0000000};//reads contents of rn register 
            {`getA,    5'b01100}: next =    {`ADD,      4'b0000,3'b000,7'b0001100,7'b0000000};//adds rn and sxim5 and outputs to data address
            {`ADD,     5'b01100}: next =    {`LDR,      4'b0001,3'b000,7'b0000000,7'b0001001};//stores rn+sxim5 in data address
            {`LDR,     5'b01100}: next =    {`writereg, 4'b0001,3'b010,7'b0000001,7'b0001001};//does memory read and saves in rn
            {`writereg,5'b01100}: next =    {`IF1,      4'b0001,3'b010,7'b0000001,7'b0001001};
            
            //STR
            {`Dec, 5'b10000}: next =    {`getA,     4'b0000,3'b100,7'b1000000,7'b0000000};//reads contents of rn register 
            {`getA,5'b10000}: next =    {`ADD,      4'b0000,3'b000,7'b0001100,7'b0000000};//adds rn and sxim5 and outputs to data address
            {`ADD, 5'b10000}: next =    {`STR,      4'b0000,3'b000,7'b0000000,7'b0000001};//stores into data address
            {`STR, 5'b10000}: next =    {`getB,     4'b0000,3'b010,7'b0100000,7'b0000000};//reads contents of rd register 
            {`getB,5'b10000}: next =    {`MOV,      4'b0000,3'b000,7'b0010100,7'b0000000};//outputs rd from datapath
            {`MOV, 5'b10000}: next =    {`writereg, 4'b0000,3'b000,7'b0000000,7'b0000100};//stores using write command into mem

            {`writereg,5'bx}: next = {`IF1,  21'b0}; //writereg->IF1 always
	        {`HALT,5'bx}:     next = {`HALT, 21'b0};
            default:          next = {`Reset,21'b0};
        endcase
    end
endmodule
*/
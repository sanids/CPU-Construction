/*
Shifter module
input gets shifted to the left, right or to the right while keeping the most significant bit the same.
shift
00-->same
01-->shift left
10-->shift right
11-->msb=msb and shift right

Name: Varunraj Rana
Date: October 15th, 2018

*/
module shifter(in,shift,sout);
    input [15:0] in;
    input [1:0] shift;
    output reg [15:0] sout;

    always @* begin
        case(shift)
            2'b00 : sout = in;
            2'b01 : sout = in << 1;
            2'b10 : sout = in >> 1;
            2'b11 : sout = {in[15],in[15:1]};
            default: sout= 16'bx;
        endcase
    end
endmodule
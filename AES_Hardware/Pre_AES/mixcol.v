module mixcol(col,mixcolumns);
  input [31:0]col;
  output [31:0]mixcolumns;
  wire [7:0]temp1,temp2,temp3,temp;
  mul2 inst(col[31:24], temp);
  mul2 inst1(col[23:16],temp1);
  mul2 inst2(col[15:8],temp2);
  mul2 inst3(col[7:0], temp3);
 
  assign mixcolumns [31:24] = temp ^ temp1 ^ col[23:16] ^ col[15:8] ^ col[7:0];
  assign mixcolumns [23:16] = col[31:24] ^ temp1 ^ temp2 ^ col[15:8] ^ col[7:0];
  assign mixcolumns [15:8]  = col[31:24] ^ col[23:16] ^ temp2 ^ temp3 ^ col[7:0];
  assign mixcolumns [7:0]   = temp ^ col[31:24] ^ col[23:16] ^ col[15:8] ^ temp3;

endmodule
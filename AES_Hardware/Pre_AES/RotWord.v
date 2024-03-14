module RotWord(IN,word);
  input wire [31:0] IN;
  output wire [31:0] word;
  assign word[7:0] = IN[31:24];
  assign word[15:8] = IN[7:0];
  assign word[23:16] = IN[15:8];
  assign word[31:24] = IN[23:16];
endmodule
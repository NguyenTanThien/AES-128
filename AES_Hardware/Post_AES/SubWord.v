module SubWord(IN, word);
  input wire [31:0] IN;
  output wire [31:0] word;
  S_box inst(IN[7:0],word[7:0]);
  S_box inst1(IN[15:8],word[15:8]);
  S_box inst2(IN[23:16],word[23:16]);
  S_box inst3(IN[31:24],word[31:24]);
endmodule
module AddRoundKey(PlainText, Key, ARK);
  input wire [127:0] PlainText, Key;
  output wire [127:0] ARK;
  assign ARK = PlainText ^ Key;
endmodule
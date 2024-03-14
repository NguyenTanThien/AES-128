module MixColumns(IN, Mix);
  input wire [127:0] IN;
  output wire [127:0] Mix;
  mixcol inst(IN[127:96],Mix[127:96]);
  mixcol inst1(IN[95:64],Mix[95:64]);
  mixcol inst2(IN[63:32],Mix[63:32]);
  mixcol inst3(IN[31:0],Mix[31:0]);
endmodule

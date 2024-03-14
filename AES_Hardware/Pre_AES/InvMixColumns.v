module InvMixColumns(IN, OUT);
  input wire [127:0] IN;
  output wire [127:0] OUT;
  InvMixcol inst(IN[31:0],OUT[31:0]);
  InvMixcol inst1(IN[63:32],OUT[63:32]);
  InvMixcol inst2(IN[95:64],OUT[95:64]);
  InvMixcol inst3(IN[127:96],OUT[127:96]);
endmodule
  
  

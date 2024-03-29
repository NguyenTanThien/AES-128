module InvSubBytes(IN,SubByte);
  input wire [127:0] IN;
  output wire [127:0] SubByte;
  InvS_box inst(IN[7:0],SubByte[7:0]);
  InvS_box inst1(IN[15:8],SubByte[15:8]);
  InvS_box inst2(IN[23:16],SubByte[23:16]);
  InvS_box inst3(IN[31:24],SubByte[31:24]);
  InvS_box inst4(IN[39:32],SubByte[39:32]);
  InvS_box inst5(IN[47:40],SubByte[47:40]);
  InvS_box inst6(IN[55:48],SubByte[55:48]);
  InvS_box inst7(IN[63:56],SubByte[63:56]);
  InvS_box inst8(IN[71:64],SubByte[71:64]);
  InvS_box inst9(IN[79:72],SubByte[79:72]);
  InvS_box inst10(IN[87:80],SubByte[87:80]);
  InvS_box inst11(IN[95:88],SubByte[95:88]);
  InvS_box inst12(IN[103:96],SubByte[103:96]);
  InvS_box inst13(IN[111:104],SubByte[111:104]);
  InvS_box inst14(IN[119:112],SubByte[119:112]);
  InvS_box inst15(IN[127:120],SubByte[127:120]);
endmodule
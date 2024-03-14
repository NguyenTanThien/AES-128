module SubBytes(IN, SubByte);
  input wire [127:0] IN;
  output [127:0] SubByte;
  S_box inst(IN[7:0],SubByte[7:0]);
  S_box inst1(IN[15:8],SubByte[15:8]);
  S_box inst2(IN[23:16],SubByte[23:16]);
  S_box inst3(IN[31:24],SubByte[31:24]);
  S_box inst4(IN[39:32],SubByte[39:32]);
  S_box inst5(IN[47:40],SubByte[47:40]);
  S_box inst6(IN[55:48],SubByte[55:48]);
  S_box inst7(IN[63:56],SubByte[63:56]);
  S_box inst8(IN[71:64],SubByte[71:64]);
  S_box inst9(IN[79:72],SubByte[79:72]);
  S_box inst10(IN[87:80],SubByte[87:80]);
  S_box inst11(IN[95:88],SubByte[95:88]);
  S_box inst12(IN[103:96],SubByte[103:96]);
  S_box inst13(IN[111:104],SubByte[111:104]);
  S_box inst14(IN[119:112],SubByte[119:112]);
  S_box inst15(IN[127:120],SubByte[127:120]);
endmodule
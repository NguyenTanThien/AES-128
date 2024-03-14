module ShiftRows(s,s1);
  input wire [127:0] s;
  output wire [127:0] s1;
  assign s1[127:120] = s[127:120];
  assign s1[95:88] = s[95:88];
  assign s1[63:56] = s[63:56];
  assign s1[31:24] = s[31:24];
  
  assign s1[119:112] = s[87:80];
  assign s1[87:80] = s[55:48];
  assign s1[55:48] = s[23:16];
  assign s1[23:16] = s[119:112];
 
  assign s1[111:104] = s[47:40];
  assign s1[79:72] = s[15:8];
  assign s1[47:40] = s[111:104];
  assign s1[15:8] = s[79:72];

  assign s1[103:96] = s[7:0];
  assign s1[71:64] = s[103:96];
  assign s1[39:32] = s[71:64];
  assign s1[7:0] = s[39:32];
  
endmodule

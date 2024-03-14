module KeyExpansion(CLK, rst, select, loop, count, key, w);
  input CLK,rst,select,loop;
  input [127:0]key;
  input [3:0]count;
  output [127:0]w;
  reg temp;
  wire temp1;
  wire [127:0]outtri,adw,aw;
  wire [31:0]inxor1,inxor2,inxor3,inxor4,inrot,word,outsub,rcon;
  always @(*)begin
    if(count == 1 && select == 0) temp = 0;
    else if (count == 10 && select == 1) temp= 0;
    else temp = 1;
  end
  not aa(temp1,temp);
  bufif1 inst1c[127:0](outtri,key,temp1);
  bufif1 inst2e[127:0](outtri,w,temp);
  bufif1 b03[31:0](inxor1,outtri[63:32],select);
  bufif1 b04[31:0](inxor2,outtri[95:64],select);
  bufif1 b05[31:0](inxor3,outtri[127:96],select);
  addW inst(outtri[31:0],inxor1,adw[31:0]);
  addW inst1(outtri[63:32],inxor2,adw[63:32]);
  addW inst2(outtri[95:64],inxor3,adw[95:64]);
  addW inst3(outtri[127:96],inxor4,adw[127:96]);
  bufif1 b06[31:0](inxor1,adw[63:32],!select);
  bufif1 b07[31:0](inxor2,adw[95:64],!select);
  bufif1 b08[31:0](inxor3,adw[127:96],!select);
  bufif1 b09[31:0](inrot,outtri[31:0],!select);
  bufif1 b1[31:0](inrot,adw[31:0],select);
  RotWord inst4(inrot,word[31:0]);
  SubWord inst5(word[31:0],outsub[31:0]);
  AddRcon inst6(count,rcon);
  addW inst7(rcon,outsub,inxor4);
  
  bufif1 b2[127:0](aw[127:0],adw[127:0],loop);// 1 tinhs toans
  bufif1 b3[127:0](aw[127:0],w[127:0],!loop);// 0 laf giu lai
  REG #128 inst11(CLK,rst,aw[127:0],w[127:0]);
endmodule
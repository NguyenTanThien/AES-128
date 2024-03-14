module NEXT(Start, Select, Count, Q, D);
  parameter [3:0] S0 = 4'b0000;
  parameter [3:0] S1 = 4'b0001;
  parameter [3:0] S2 = 4'b0010;
  parameter [3:0] S3 = 4'b0011;
  parameter [3:0] S4 = 4'b0100;
  parameter [3:0] S5 = 4'b0101;
  parameter [3:0] S6 = 4'b0110;
  parameter [3:0] S7 = 4'b0111;
  parameter [3:0] S8 = 4'b1000;
  parameter [3:0] S9 = 4'b1001;
  input [3:0] Q;
  input [3:0] Count;
  input Start, Select;
  output reg [3:0] D;
  always @ (*)
  begin
    case(Q)
      S0: begin if (Start == 1 && Select == 0) D <= S1;
                else if (Start == 1 && Select == 1) D <= S4;
                else D <= S0;
                end
      S1: D <= S2;
      S2: begin if (Count < 10) D <= S2;
                else if (Count == 10) D <= S3;
                end
      S3: D <= S8;
      S4: D <= S5;
      S5: D <= S6;
      S6: begin if (Count > 1 && Count < 10) D <= S6;
                else D <= S7;
                end
      S7: D <= S8;
      S8: D <= S9;
      S9: D <= S0;
    endcase
    end
  endmodule
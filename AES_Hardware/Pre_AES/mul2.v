module mul2(IN, mul2);
    input wire [7:0] IN;
    output wire [7:0] mul2;
    wire [7:0] temp;
    assign temp = IN << 1;
    assign  mul2 = (IN[7]== 1) ?(temp ^ 8'b00011011):temp;
endmodule
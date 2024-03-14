library verilog;
use verilog.vl_types.all;
entity AddRoundKey is
    port(
        PlainText       : in     vl_logic_vector(127 downto 0);
        Key             : in     vl_logic_vector(127 downto 0);
        ARK             : out    vl_logic_vector(127 downto 0)
    );
end AddRoundKey;

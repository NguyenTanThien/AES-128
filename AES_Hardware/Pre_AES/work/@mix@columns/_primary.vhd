library verilog;
use verilog.vl_types.all;
entity MixColumns is
    port(
        \IN\            : in     vl_logic_vector(127 downto 0);
        Mix             : out    vl_logic_vector(127 downto 0)
    );
end MixColumns;

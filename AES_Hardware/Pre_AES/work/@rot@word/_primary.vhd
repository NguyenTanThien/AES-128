library verilog;
use verilog.vl_types.all;
entity RotWord is
    port(
        \IN\            : in     vl_logic_vector(31 downto 0);
        word            : out    vl_logic_vector(31 downto 0)
    );
end RotWord;

library verilog;
use verilog.vl_types.all;
entity mul2 is
    port(
        \IN\            : in     vl_logic_vector(7 downto 0);
        mul2            : out    vl_logic_vector(7 downto 0)
    );
end mul2;

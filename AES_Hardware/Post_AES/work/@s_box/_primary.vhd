library verilog;
use verilog.vl_types.all;
entity S_box is
    port(
        \IN\            : in     vl_logic_vector(7 downto 0);
        sbox            : out    vl_logic_vector(7 downto 0)
    );
end S_box;

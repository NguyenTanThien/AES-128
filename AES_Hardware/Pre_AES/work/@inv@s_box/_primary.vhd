library verilog;
use verilog.vl_types.all;
entity InvS_box is
    port(
        \IN\            : in     vl_logic_vector(7 downto 0);
        sbox            : out    vl_logic_vector(7 downto 0)
    );
end InvS_box;

library verilog;
use verilog.vl_types.all;
entity InvMixcol is
    port(
        \in\            : in     vl_logic_vector(31 downto 0);
        invmixcol       : out    vl_logic_vector(31 downto 0)
    );
end InvMixcol;

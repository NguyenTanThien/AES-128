library verilog;
use verilog.vl_types.all;
entity insmul is
    port(
        \in\            : in     vl_logic_vector(7 downto 0);
        mul09           : out    vl_logic_vector(7 downto 0);
        mul0B           : out    vl_logic_vector(7 downto 0);
        mul0D           : out    vl_logic_vector(7 downto 0);
        mul0E           : out    vl_logic_vector(7 downto 0)
    );
end insmul;

library verilog;
use verilog.vl_types.all;
entity InvSubBytes is
    port(
        \IN\            : in     vl_logic_vector(127 downto 0);
        SubByte         : out    vl_logic_vector(127 downto 0)
    );
end InvSubBytes;
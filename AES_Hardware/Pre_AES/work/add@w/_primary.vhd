library verilog;
use verilog.vl_types.all;
entity addW is
    port(
        IN1             : in     vl_logic_vector(31 downto 0);
        IN2             : in     vl_logic_vector(31 downto 0);
        outW            : out    vl_logic_vector(31 downto 0)
    );
end addW;

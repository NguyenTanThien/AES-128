library verilog;
use verilog.vl_types.all;
entity CURRENT is
    port(
        CLK             : in     vl_logic;
        rst             : in     vl_logic;
        D               : in     vl_logic_vector(3 downto 0);
        Q               : out    vl_logic_vector(3 downto 0)
    );
end CURRENT;

library verilog;
use verilog.vl_types.all;
entity KeyExpansion is
    port(
        CLK             : in     vl_logic;
        rst             : in     vl_logic;
        \select\        : in     vl_logic;
        \loop\          : in     vl_logic;
        count           : in     vl_logic_vector(3 downto 0);
        key             : in     vl_logic_vector(127 downto 0);
        w               : out    vl_logic_vector(127 downto 0)
    );
end KeyExpansion;

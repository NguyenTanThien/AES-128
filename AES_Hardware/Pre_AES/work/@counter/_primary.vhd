library verilog;
use verilog.vl_types.all;
entity Counter is
    port(
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        LOAD            : in     vl_logic;
        ENB             : in     vl_logic;
        Count           : out    vl_logic_vector(3 downto 0)
    );
end Counter;

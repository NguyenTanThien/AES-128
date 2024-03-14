library verilog;
use verilog.vl_types.all;
entity CONTROL is
    port(
        CLK             : in     vl_logic;
        reset           : in     vl_logic;
        Start           : in     vl_logic;
        \Select\        : in     vl_logic;
        Count           : in     vl_logic_vector(3 downto 0);
        LOAD            : out    vl_logic;
        ENB             : out    vl_logic;
        rstc            : out    vl_logic;
        tri_text        : out    vl_logic;
        tri_key         : out    vl_logic;
        tri_keyex       : out    vl_logic;
        tri_shift       : out    vl_logic;
        tri_Mix         : out    vl_logic;
        tri_invMix      : out    vl_logic;
        tri_invshift    : out    vl_logic;
        tri_invSub      : out    vl_logic;
        tri_out_text1   : out    vl_logic;
        tri_out_text2   : out    vl_logic;
        \LOOP\          : out    vl_logic
    );
end CONTROL;

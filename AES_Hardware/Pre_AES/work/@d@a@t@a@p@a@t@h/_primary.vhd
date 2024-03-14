library verilog;
use verilog.vl_types.all;
entity DATAPATH is
    port(
        CLK             : in     vl_logic;
        reset           : in     vl_logic;
        ENB             : in     vl_logic;
        \LOOP\          : in     vl_logic;
        LOAD            : in     vl_logic;
        rst             : in     vl_logic;
        tri_text        : in     vl_logic;
        tri_key         : in     vl_logic;
        tri_keyex       : in     vl_logic;
        tri_shift       : in     vl_logic;
        tri_Mix         : in     vl_logic;
        tri_invMix      : in     vl_logic;
        tri_invshift    : in     vl_logic;
        tri_invSub      : in     vl_logic;
        tri_out_text1   : in     vl_logic;
        tri_out_text2   : in     vl_logic;
        DATA            : in     vl_logic_vector(63 downto 0);
        KEY             : in     vl_logic_vector(63 downto 0);
        Cipher_text     : out    vl_logic_vector(63 downto 0);
        Count           : out    vl_logic_vector(3 downto 0);
        KEY10           : out    vl_logic_vector(63 downto 0)
    );
end DATAPATH;

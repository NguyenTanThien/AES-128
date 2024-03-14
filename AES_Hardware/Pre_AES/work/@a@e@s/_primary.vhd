library verilog;
use verilog.vl_types.all;
entity AES is
    port(
        CLK             : in     vl_logic;
        reset           : in     vl_logic;
        Start           : in     vl_logic;
        \Select\        : in     vl_logic;
        DATA            : in     vl_logic_vector(63 downto 0);
        KEY             : in     vl_logic_vector(63 downto 0);
        Cipher_text     : out    vl_logic_vector(63 downto 0);
        KEY10           : out    vl_logic_vector(63 downto 0)
    );
end AES;

library verilog;
use verilog.vl_types.all;
entity REG is
    generic(
        n               : integer := 128
    );
    port(
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        \IN\            : in     vl_logic_vector;
        \OUT\           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 1;
end REG;

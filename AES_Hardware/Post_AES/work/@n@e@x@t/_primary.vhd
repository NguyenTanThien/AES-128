library verilog;
use verilog.vl_types.all;
entity \NEXT\ is
    generic(
        S0              : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi0, Hi0);
        S1              : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi0, Hi1);
        S2              : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi1, Hi0);
        S3              : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi1, Hi1);
        S4              : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi0, Hi0);
        S5              : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi0, Hi1);
        S6              : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi1, Hi0);
        S7              : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi1, Hi1);
        S8              : vl_logic_vector(3 downto 0) := (Hi1, Hi0, Hi0, Hi0);
        S9              : vl_logic_vector(3 downto 0) := (Hi1, Hi0, Hi0, Hi1)
    );
    port(
        Start           : in     vl_logic;
        \Select\        : in     vl_logic;
        Count           : in     vl_logic_vector(3 downto 0);
        Q               : in     vl_logic_vector(3 downto 0);
        D               : out    vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of S0 : constant is 2;
    attribute mti_svvh_generic_type of S1 : constant is 2;
    attribute mti_svvh_generic_type of S2 : constant is 2;
    attribute mti_svvh_generic_type of S3 : constant is 2;
    attribute mti_svvh_generic_type of S4 : constant is 2;
    attribute mti_svvh_generic_type of S5 : constant is 2;
    attribute mti_svvh_generic_type of S6 : constant is 2;
    attribute mti_svvh_generic_type of S7 : constant is 2;
    attribute mti_svvh_generic_type of S8 : constant is 2;
    attribute mti_svvh_generic_type of S9 : constant is 2;
end \NEXT\;

library verilog;
use verilog.vl_types.all;
entity Rcon is
    port(
        count           : in     vl_logic_vector(3 downto 0);
        Rcon            : out    vl_logic_vector(31 downto 0)
    );
end Rcon;

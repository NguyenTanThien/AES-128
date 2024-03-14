library verilog;
use verilog.vl_types.all;
entity mixcol is
    port(
        col             : in     vl_logic_vector(31 downto 0);
        mixcolumns      : out    vl_logic_vector(31 downto 0)
    );
end mixcol;

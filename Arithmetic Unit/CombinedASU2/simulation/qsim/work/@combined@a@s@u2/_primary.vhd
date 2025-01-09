library verilog;
use verilog.vl_types.all;
entity CombinedASU2 is
    port(
        leds1           : out    vl_logic;
        Cin             : in     vl_logic;
        X               : in     vl_logic_vector(3 downto 0);
        Y               : in     vl_logic_vector(3 downto 0);
        leds2           : out    vl_logic;
        leds3           : out    vl_logic;
        leds4           : out    vl_logic;
        leds5           : out    vl_logic;
        leds6           : out    vl_logic;
        leds7           : out    vl_logic;
        leds21          : out    vl_logic;
        leds22          : out    vl_logic;
        leds23          : out    vl_logic;
        leds24          : out    vl_logic;
        leds25          : out    vl_logic;
        leds26          : out    vl_logic;
        leds27          : out    vl_logic
    );
end CombinedASU2;

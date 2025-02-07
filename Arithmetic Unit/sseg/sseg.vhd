LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY sseg IS
    PORT (
        bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		  sign, neg : IN STD_LOGIC ;
        leds : OUT STD_LOGIC_VECTOR(0 TO 6) ;
		  leds2 : OUT STD_LOGIC_VECTOR(0 TO 6)
    ) ;
END sseg ;

ARCHITECTURE Behavior OF sseg IS
BEGIN
    PROCESS (bcd, sign)
    BEGIN
        CASE bcd IS -- abcdefg
            WHEN "0000" => leds <= "0000001";
				WHEN "0001" => leds <= "1001111";
				WHEN "0010" => leds <= "0010010";
				WHEN "0011" => leds <= "0000110";
				WHEN "0100" => leds <= "1001100";
				WHEN "0101" => leds <= "0100100";
				WHEN "0110" => leds <= "0100000";
				WHEN "0111" => leds <= "0001111";
				WHEN "1000" => leds <= "0000000";
				WHEN "1001" => leds <= "0001100";
				WHEN "1010" => leds <= "0001000";
				WHEN "1011" => leds <= "1100000";
				WHEN "1100" => leds <= "0110001";
				WHEN "1101" => leds <= "1000010";
				WHEN "1110" => leds <= "0110000";
				WHEN "1111" => leds <= "0111000";
				WHEN OTHERS => leds <= "1111111"; -- All segments off for invalid input
        END CASE;
		  IF neg = '1' THEN
		  leds2 <= "1111110"; -- FOR NEGATIVE NUMBERS
		  ELSE 
		  leds2 <= "1111111";
		  END IF;
		  
    END PROCESS;
END Behavior;

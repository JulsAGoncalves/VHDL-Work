LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY ASU IS
PORT (
    Cin, neg : IN STD_LOGIC;
    X, Y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Cout, Overflow, neg2 : OUT STD_LOGIC
);
END ASU;

ARCHITECTURE Behavior OF ASU IS
SIGNAL Sum : STD_LOGIC_VECTOR(4 DOWNTO 0);
BEGIN
    PROCESS(Cin, X, Y, neg)
    BEGIN
        IF Cin = '1' THEN
            -- Subtraction (invert Y and add 1)
            Sum <= ('0' & X) + NOT ('0' & Y) + '1';
            S <= Sum(3 DOWNTO 0);
            Cout <= Sum(4);
            Overflow <= Sum(4) XOR X(3) XOR NOT Y(3) XOR Sum(3);
        ELSE
            -- Addition
            Sum <= ('0' & X) + ('0' & Y);
            S <= Sum(3 DOWNTO 0);
            Cout <= Sum(4);
            Overflow <= Sum(4) XOR X(3) XOR Y(3) XOR Sum(3);
        END IF;
		  IF neg = '1' THEN
				neg2 <= '1';
			ELSE
				neg2 <= '0';
			END IF;
    END PROCESS;
END Behavior;

LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY mux3 IS
PORT ( w4, w5 : IN STD_LOGIC ;
s1 : IN STD_LOGIC ;
f : OUT STD_LOGIC ) ;
END mux3 ;

ARCHITECTURE Behavior OF mux3 IS
BEGIN
WITH s1 SELECT
f <= w4 WHEN '0',
		w5 WHEN '1';
END Behavior ;

LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
PACKAGE mux3_package IS
COMPONENT mux3
PORT ( w4, w5 : IN STD_LOGIC ;
s1 : IN STD_LOGIC ;
f : OUT STD_LOGIC ) ;
END COMPONENT ;
END mux3_package ;
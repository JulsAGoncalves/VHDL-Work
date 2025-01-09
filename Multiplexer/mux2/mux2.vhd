LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY mux2 IS
PORT ( w2, w3 : IN STD_LOGIC ;
s : IN STD_LOGIC ;
f : OUT STD_LOGIC ) ;
END mux2 ;

ARCHITECTURE Behavior OF mux2 IS
BEGIN
WITH s SELECT
f <= w2 WHEN '0',
		w3 WHEN '1';
END Behavior ;

LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
PACKAGE mux2_package IS
COMPONENT mux2
PORT ( w2, w3 : IN STD_LOGIC ;
s : IN STD_LOGIC ;
f : OUT STD_LOGIC ) ;
END COMPONENT ;
END mux2_package ;
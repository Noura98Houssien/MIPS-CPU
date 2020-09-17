library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
ENTITY geniric_adder IS
	GENERIC (	n : NATURAL := 8);
	PORT    (	A : IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
			B : IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
			S : OUT STD_LOGIC_VECTOR (n-1 DOWNTO 0);
			Carry : OUT  STD_LOGIC);
END geniric_adder;

ARCHITECTURE Behavioral OF geniric_adder IS
	SIGNAL Tmp: STD_LOGIC_VECTOR (n DOWNTO 0);
BEGIN
	Tmp <= ('0' & A) + ('0' & B);
	S <= Tmp(n-1 DOWNTO 0) ;
	Carry <= Tmp(n) ;
END Behavioral;
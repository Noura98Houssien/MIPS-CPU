----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:54:26 04/12/2019 
-- Design Name: 
-- Module Name:    regester - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity regester is
    Port ( load,INC,CLK,CLR : in  STD_LOGIC;
           I : in  STD_LOGIC_vector(31 downto 0);
           O : out  STD_LOGIC_vector(31 downto 0));
end regester;

ARCHITECTURE Behavioral OF regester IS
	SIGNAL temp: STD_LOGIC_VECTOR (31 DOWNTO 0);
BEGIN
	PROCESS(CLK)
	BEGIN
	IF rising_edge(CLK)THEN
		IF(load ='1') THEN
			temp <= I;
		ELSIF (INC='1')THEN
			temp <= temp +1;
		ELSIF(CLR='1') THEN
			temp <=(others =>'0');
		END IF;
	END IF;
	END PROCESS;
	O <= temp;
END Behavioral;



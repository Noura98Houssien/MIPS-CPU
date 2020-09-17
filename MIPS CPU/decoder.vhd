----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:09:42 04/12/2019 
-- Design Name: 
-- Module Name:    decoder - Behavioral 
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

entity decoder is
    Port ( En : in  STD_LOGIC;
           input : in  STD_LOGIC_vector(4 downto 0);
           output: out  STD_LOGIC_vector(31 downto 0)
         );
end decoder;

architecture Behavioral of decoder is

begin    
output<="ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ" WHEN En='0' else
        "00000000000000000000000000000001" when input="00000" else
		  "00000000000000000000000000000010" when input="00001" else
		  "00000000000000000000000000000100" when input="00010" else
		  "00000000000000000000000000001000" when input="00011" else
		  "00000000000000000000000000010000" when input="00100" else
		  "00000000000000000000000000100000" when input="00101" else
		  "00000000000000000000000001000000" when input="00110" else
		  "00000000000000000000000010000000" when input="00111" else
		  "00000000000000000000000100000000" when input="01000" else
		  "00000000000000000000001000000000" when input="01001" else
		  
		  "00000000000000000000010000000000" when input="01010" else
		  "00000000000000000000100000000000" when input="01011" else
		  "00000000000000000001000000000000" when input="01100" else
		  "00000000000000000010000000000000" when input="01101" else
		  "00000000000000000100000000000000" when input="01110" else
		  "00000000000000001000000000000000" when input="01111" else
		  "00000000000000010000000000000000" when input="10000" else
		  "00000000000000100000000000000000" when input="10001" else
		  "00000000000001000000000000000000" when input="10010" else
		  "00000000000010000000000000000000" when input="10011" else
		  "00000000000100000000000000000000" when input="10100" else
		  
		  "00000000001000000000000000000000" when input="10101" else
		  "00000000010000000000000000000000" when input="10110" else
		  "00000000100000000000000000000000" when input="10111" else
        "00000001000000000000000000000000" when input="11000" else
		  "00000010000000000000000000000000" when input="11001" else
		  "00000100000000000000000000000000" when input="11010" else
		  "00001000000000000000000000000000" when input="11011" else
		  "00010000000000000000000000000000" when input="11100" else
		  "00100000000000000000000000000000" when input="11101" else
		  "01000000000000000000000000000000" when input="11110" else
		  "10000000000000000000000000000000" when input="11111" else
		  "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";

      









end Behavioral;


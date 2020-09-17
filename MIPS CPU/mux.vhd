----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:28:13 04/12/2019 
-- Design Name: 
-- Module Name:    mux - Behavioral 
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

entity mux is
    Port ( slector : in  STD_LOGIC_vector (4 downto 0);
           i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31: in  STD_LOGIC_vector(31 downto 0);
           output : out  STD_LOGIC_vector(31 downto 0));
end mux;

architecture Behavioral of mux is
--signal tmp :STD_LOGIC_vector(31 downto 0);

begin
output<=    i0 when slector="00000" else
            i1 when slector="00001" else
				i2 when slector="00010" else
				i3 when slector="00011" else
				i4 when slector="00100" else
				i5 when slector="00101" else
				i6 when slector="00110" else
				i7 when slector="00111" else
				i8 when slector="01000" else
				i9 when slector="01001" else
				
				i10 when slector="01010" else
				i11 when slector="01011" else
				i12 when slector="01100" else
				i13 when slector="01101" else
				i14 when slector="01110" else
				i15 when slector="01111" else
				i16 when slector="10000" else
				i17 when slector="10001" else
				i18 when slector="10010" else
				i19 when slector="10011" else
				i20 when slector="10100" else
				
				i21 when slector="10101" else
				i22 when slector="10110" else
				i23 when slector="10111" else
				i24 when slector="11000" else
				i25 when slector="11001" else
				i26 when slector="11010" else
				i27 when slector="11011" else
				i28 when slector="11100" else
				i29 when slector="11101" else
				i30 when slector="11110" else
				i31 when slector="11111" else
				"ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

end Behavioral;


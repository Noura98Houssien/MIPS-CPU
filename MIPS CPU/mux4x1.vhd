----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:10:00 04/15/2019 
-- Design Name: 
-- Module Name:    mux4x1 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux4x1 is
    Port ( i0,i1,i2,i3 : in  STD_LOGIC;
           selector : in  STD_LOGIC_vector(1 downto 0);
           output : out  STD_LOGIC);
end mux4x1;

architecture Behavioral of mux4x1 is

begin
output<=   i0 when selector="00" else
           i1 when selector="01" else
			  i2 when selector="10" else
			  i3 when selector="11" else
			  'Z';

end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:17:53 04/13/2019 
-- Design Name: 
-- Module Name:    adder - Behavioral 
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

entity adder is
    Port ( input1 : in  STD_LOGIC;
           input2 : in  STD_LOGIC;
			  carryin: in std_logic;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end adder;

architecture Behavioral of adder is
signal tmp :std_logic_vector(1 downto 0);

begin
tmp<=('0'& input1) + ('0'& input2)+('0'& carryin);
sum<=tmp(0);
carry<=tmp(1);


end Behavioral;


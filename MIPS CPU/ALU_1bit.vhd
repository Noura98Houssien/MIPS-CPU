----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:22:18 04/15/2019 
-- Design Name: 
-- Module Name:    ALU_1bit - Behavioral 
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
use work.new_package.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_1bit is
    Port ( input1,input2,carryin : in  STD_LOGIC;
           result,carryout : out  STD_LOGIC;
           op : in  STD_LOGIC_VECTOR (3 downto 0);
			  less :in std_logic;
			  set :out std_logic

			  );
end ALU_1bit;

architecture Behavioral of ALU_1bit is
signal sum:STD_LOGIC;
signal tmpoutA: std_logic;
signal tmpoutB: std_logic;

signal tmpout2: std_logic;

signal tmp1: std_logic;
signal tmp2: std_logic;
begin
m2A:mux2x1 port map(input1,not(input1),op(3),tmpoutA); 
m2B:mux2x1 port map(input2,not(input2),op(2),tmpoutB);

--m2:mux2x1 port map(input2,not(input2),op(2),tmpout2); 
add:adder port map(tmpoutA,tmpoutB,carryin,sum,carryout);

set<=sum;
tmp1<=tmpoutA and tmpoutB;
tmp2<=tmpoutA or tmpoutB;
m4:mux4x1 port map (tmp1,tmp2,sum,less,op(1 downto 0),result);

end Behavioral;


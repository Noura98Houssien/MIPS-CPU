----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:07:30 05/01/2019 
-- Design Name: 
-- Module Name:    AluControl - Behavioral 
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

entity AluControl is
   Port ( funbits : in  STD_LOGIC_VECTOR (5 downto 0);
       aluop: in STD_LOGIC_VECTOR (1 downto 0);
       opbits : out  STD_LOGIC_VECTOR (3 downto 0)
	   );
end AluControl;

architecture Behavioral of AluControl is
signal t0:std_logic;
signal t1:std_logic;
signal t2:std_logic;
signal t3:std_logic;

signal opt0:std_logic;
signal opt1:std_logic;
signal opt2:std_logic;
signal opt3:std_logic;


begin
t0<=funbits(0) and funbits(1);
opt3<=t0 and aluop(1);
t1<=funbits(1) and aluop(1);
opt2<=t1 or aluop(0);
opt1<=(not(funbits(2))) or (not(aluop(1)));

t2<=funbits(0) or funbits(3);
t3<=t2 and aluop(1);
opt0<=t3 and (not(opt3));
--opbits<=opt3&opt2&opt1&;
opbits(0)<=opt0;
opbits(1)<=opt1;
opbits(2)<=opt2;
opbits(3)<=opt3;
end Behavioral;


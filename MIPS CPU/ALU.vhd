----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:19:54 04/15/2019 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
PORT(
         data1 : IN  std_logic_vector(31 downto 0);
         data2 : IN  std_logic_vector(31 downto 0);
         aluop : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         dataout : OUT  std_logic_vector(31 downto 0);
         cflag : OUT  std_logic;
         zflag : OUT  std_logic;
         oflag : OUT  std_logic
        );
end ALU;
architecture Behavioral of ALU is
signal tmp :std_logic_vector(31 downto 0);

--signal carry_out:std_logic;
--signal carry_out_bit30:std_logic;

signal carry1,carry2,carry3,carry0,carry5,carry6,carry7,carry8,carry9,carry10,carry11,carry12,carry13,carry14,carry15,carry16,
carry17,carry18,carry19,carry20,carry21,carry22,carry23,carry24,carry25,carry26,carry27,carry28,carry29,carry30,carry31,carry32:STD_LOGIC;

signal mycarry :std_logic;
signal tmpout2:std_logic;
signal s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,
       s22,s23,s24,s25,s26,s27,s28,s29,s30,s31:std_logic;

begin
--input1,input2,carryin : in  STD_LOGIC;
           --result,carryout : out  STD_LOGIC;
           --op

alu0:ALU_1bit port map(data1(0),data2(0),aluop(2),tmp(0),carry1,aluop,s1,s0);
alu1:ALU_1bit port map(data1(1),data2(1),carry1,tmp(1),carry2,aluop,'0',s1);
alu2:ALU_1bit port map(data1(2),data2(2),carry2,tmp(2),carry3,aluop,'0',s2);
alu3:ALU_1bit port map(data1(3),data2(3),carry3,tmp(3),carry0,aluop,'0',s3);
alu4:ALU_1bit port map(data1(4),data2(4),carry0,tmp(4),carry5,aluop,'0',s4);
alu5:ALU_1bit port map(data1(5),data2(5),carry5,tmp(5),carry6,aluop,'0',s5);
alu6:ALU_1bit port map(data1(6),data2(6),carry6,tmp(6),carry7,aluop,'0',s6);
alu7:ALU_1bit port map(data1(7),data2(7),carry7,tmp(7),carry8,aluop,'0',s7);
alu8:ALU_1bit port map(data1(8),data2(8),carry8,tmp(8),carry9,aluop,'0',s8);
alu9:ALU_1bit port map(data1(9),data2(9),carry9,tmp(9),carry10,aluop,'0',s9);

alu10:ALU_1bit port map(data1(10),data2(10),carry10,tmp(10),carry11,aluop,'0',s10);
alu11:ALU_1bit port map(data1(11),data2(11),carry11,tmp(11),carry12,aluop,'0',s11);
alu12:ALU_1bit port map(data1(12),data2(12),carry12,tmp(12),carry13,aluop,'0',s12);
alu13:ALU_1bit port map(data1(13),data2(13),carry13,tmp(13),carry14,aluop,'0',s13);
alu14:ALU_1bit port map(data1(14),data2(14),carry14,tmp(14),carry15,aluop,'0',s14);
alu15:ALU_1bit port map(data1(15),data2(15),carry15,tmp(15),carry16,aluop,'0',s15);
alu16:ALU_1bit port map(data1(16),data2(16),carry16,tmp(16),carry17,aluop,'0',s16);
alu17:ALU_1bit port map(data1(17),data2(17),carry17,tmp(17),carry18,aluop,'0',s17);
alu18:ALU_1bit port map(data1(18),data2(18),carry18,tmp(18),carry19,aluop,'0',s18);

alu19:ALU_1bit port map(data1(19),data2(19),carry19,tmp(19),carry20,aluop,'0',s19);
alu20:ALU_1bit port map(data1(20),data2(20),carry20,tmp(20),carry21,aluop,'0',s20);
alu21:ALU_1bit port map(data1(21),data2(21),carry21,tmp(21),carry22,aluop,'0',s21);
alu22:ALU_1bit port map(data1(22),data2(22),carry22,tmp(22),carry23,aluop,'0',s22);
alu23:ALU_1bit port map(data1(23),data2(23),carry23,tmp(23),carry24,aluop,'0',s23);
alu24:ALU_1bit port map(data1(24),data2(24),carry24,tmp(24),carry25,aluop,'0',s24);
alu25:ALU_1bit port map(data1(25),data2(25),carry25,tmp(25),carry26,aluop,'0',s25);
alu26:ALU_1bit port map(data1(26),data2(26),carry26,tmp(26),carry27,aluop,'0',s26);
alu27:ALU_1bit port map(data1(27),data2(27),carry27,tmp(27),carry28,aluop,'0',s27);
alu28:ALU_1bit port map(data1(28),data2(28),carry28,tmp(28),carry29,aluop,'0',s28);
alu29:ALU_1bit port map(data1(29),data2(29),carry29,tmp(29),carry30,aluop,'0',s29);
alu30:ALU_1bit port map(data1(30),data2(30),carry30,tmp(30),carry31,aluop,'0',s30);
alu31:ALU_1bit port map(data1(31),data2(31),carry31,tmp(31),carry32,aluop,'0',s31);

--m2:mux2x1 port map(data2(31),not(data2(31)),aluop(2),tmpout2); 
--add:adder port map(data1(31),tmpout2,carry31,less,mycarry);			  


cflag<=carry32;
zflag<= '1' when tmp= "00000000000000000000000000000000"
else '0';
oflag<=carry31 xor carry32;
dataout<=tmp;



end Behavioral;


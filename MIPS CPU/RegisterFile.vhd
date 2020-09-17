----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:12:40 04/12/2019 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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

entity RegisterFile is
    Port ( read_sel1 : in  STD_LOGIC_vector(4 downto 0);
           read_sel2 : in  STD_LOGIC_vector(4 downto 0);
           write_sel : in  STD_LOGIC_vector(4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           write_data : in  STD_LOGIC_vector(31 downto 0);
           data1 : out  STD_LOGIC_vector(31 downto 0);
           data2 : out  STD_LOGIC_vector(31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is
signal tmp0 :STD_LOGIC_vector(31 downto 0); --decoder


signal tmp1 :STD_LOGIC_vector(31 downto 0);
signal tmp2 :STD_LOGIC_vector(31 downto 0);
signal tmp3 :STD_LOGIC_vector(31 downto 0);
signal tmp4 :STD_LOGIC_vector(31 downto 0);
signal tmp5 :STD_LOGIC_vector(31 downto 0);
signal tmp6 :STD_LOGIC_vector(31 downto 0);
signal tmp7 :STD_LOGIC_vector(31 downto 0);
signal tmp8 :STD_LOGIC_vector(31 downto 0);
signal tmp9 :STD_LOGIC_vector(31 downto 0);
signal tmp10 :STD_LOGIC_vector(31 downto 0);
signal tmp11 :STD_LOGIC_vector(31 downto 0);
signal tmp12 :STD_LOGIC_vector(31 downto 0);
signal tmp13 :STD_LOGIC_vector(31 downto 0);
signal tmp14 :STD_LOGIC_vector(31 downto 0);
signal tmp15 :STD_LOGIC_vector(31 downto 0);


signal tmp16 :STD_LOGIC_vector(31 downto 0);
signal tmp17 :STD_LOGIC_vector(31 downto 0);
signal tmp18 :STD_LOGIC_vector(31 downto 0);
signal tmp19 :STD_LOGIC_vector(31 downto 0);
signal tmp20 :STD_LOGIC_vector(31 downto 0);
signal tmp21 :STD_LOGIC_vector(31 downto 0);
signal tmp22 :STD_LOGIC_vector(31 downto 0);


signal tmp23 :STD_LOGIC_vector(31 downto 0);
signal tmp24 :STD_LOGIC_vector(31 downto 0);
signal tmp25 :STD_LOGIC_vector(31 downto 0);
signal tmp26 :STD_LOGIC_vector(31 downto 0);
signal tmp27 :STD_LOGIC_vector(31 downto 0);
signal tmp28 :STD_LOGIC_vector(31 downto 0);
signal tmp29 :STD_LOGIC_vector(31 downto 0);
signal tmp30 :STD_LOGIC_vector(31 downto 0);
signal tmp31 :STD_LOGIC_vector(31 downto 0);
signal tmp32 :STD_LOGIC_vector(31 downto 0);


begin

d1:decoder port map ('1',write_sel,tmp0);



r0:regester port map ((write_ena and tmp0(0)),'0',clk,'0',write_data,tmp1);
r1:regester port map (write_ena and tmp0(1),'0',clk,'0',write_data,tmp2);
r2:regester port map (write_ena and tmp0(2),'0',clk,'0',write_data,tmp3);
r3:regester port map (write_ena and tmp0(3),'0',clk,'0',write_data,tmp4);
r4:regester port map (write_ena and tmp0(4),'0',clk,'0',write_data,tmp5);
r5:regester port map (write_ena and tmp0(5),'0',clk,'0',write_data,tmp6);
r6:regester port map (write_ena and tmp0(6),'0',clk,'0',write_data,tmp7);
r7:regester port map (write_ena and tmp0(7),'0',clk,'0',write_data,tmp8);
r8:regester port map (write_ena and tmp0(8),'0',clk,'0',write_data,tmp9);
r9:regester port map (write_ena and tmp0(9),'0',clk,'0',write_data,tmp10);

r10:regester port map (write_ena and tmp0(10),'0',clk,'0',write_data,tmp11);
r11:regester port map (write_ena and tmp0(11),'0',clk,'0',write_data,tmp12);
r12:regester port map (write_ena and tmp0(12),'0',clk,'0',write_data,tmp13);
r13:regester port map (write_ena and tmp0(13),'0',clk,'0',write_data,tmp14);
r14:regester port map (write_ena and tmp0(14),'0',clk,'0',write_data,tmp15);
r15:regester port map (write_ena and tmp0(15),'0',clk,'0',write_data,tmp16);
r16:regester port map (write_ena and tmp0(16),'0',clk,'0',write_data,tmp17);
r17:regester port map (write_ena and tmp0(17),'0',clk,'0',write_data,tmp18);
r18:regester port map (write_ena and tmp0(18),'0',clk,'0',write_data,tmp19);
r19:regester port map (write_ena and tmp0(19),'0',clk,'0',write_data,tmp20);

r20:regester port map (write_ena and tmp0(20),'0',clk,'0',write_data,tmp21);
r21:regester port map (write_ena and tmp0(21),'0',clk,'0',write_data,tmp22);
r22:regester port map (write_ena and tmp0(22),'0',clk,'0',write_data,tmp23);
r23:regester port map (write_ena and tmp0(23),'0',clk,'0',write_data,tmp24);
r24:regester port map (write_ena and tmp0(24),'0',clk,'0',write_data,tmp25);
r25:regester port map (write_ena and tmp0(25),'0',clk,'0',write_data,tmp26);
r26:regester port map (write_ena and tmp0(26),'0',clk,'0',write_data,tmp27);
r27:regester port map (write_ena and tmp0(27),'0',clk,'0',write_data,tmp28);
r28:regester port map (write_ena and tmp0(28),'0',clk,'0',write_data,tmp29);
r29:regester port map (write_ena and tmp0(29),'0',clk,'0',write_data,tmp30);
r30:regester port map (write_ena and tmp0(30),'0',clk,'0',write_data,tmp31);
r31:regester port map (write_ena and tmp0(31),'0',clk,'0',write_data,tmp32);

m1:mux port map  (read_sel1 ,tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp7,tmp8,tmp9,tmp10,tmp11,tmp12,tmp13,tmp14,tmp15,tmp16,tmp17,tmp18,tmp19,tmp20,tmp21,tmp22,tmp23,tmp24,tmp25,tmp26,tmp27,tmp28,tmp29,tmp30,tmp31,tmp32,data1);
--m2:mux port map  (read_sel2,tmp2,data2);
m2:mux port map  (read_sel2 ,tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp7,tmp8,tmp9,tmp10,tmp11,tmp12,tmp13,tmp14,tmp15,tmp16,tmp17,tmp18,tmp19,tmp20,tmp21,tmp22,tmp23,tmp24,tmp25,tmp26,tmp27,tmp28,tmp29,tmp30,tmp31,tmp32,data2);
end Behavioral;


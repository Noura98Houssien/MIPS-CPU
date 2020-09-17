----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:44:05 05/01/2019 
-- Design Name: 
-- Module Name:    CU - Behavioral 
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

entity ControlUnit is
    Port ( 
			
			 OP : in STD_LOGIC_VECTOR(5 downto 0);

           RegDest : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
           MemToReg : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
			  MemRead: out STD_LOGIC;
			  MemWrite: out STD_LOGIC;
           Branch : out  STD_LOGIC;
			  

			  jmp:out STD_LOGIC;
           ALUOp : out STD_LOGIC_vector(1 downto 0);
			   Branch_not : out  STD_LOGIC
           --ALUOp0 : out  STD_LOGIC
			  );
end ControlUnit;
architecture Behavioral of ControlUnit is
signal r:STD_LOGIC ;
signal lw:STD_LOGIC ;
signal sw:STD_LOGIC ;
signal beq:STD_LOGIC ;
signal bneq:STD_LOGIC ;
signal j:STD_LOGIC ;
signal alu_op : STD_LOGIC_vector(1 downto 0);
begin
r<=(not OP(0)) and (not OP(1)) and (not OP(2))and (not OP(3)) and (not OP(4)) and (not OP(5));
lw<=(OP(0) and OP(1) and (not OP(2)) and (not OP(3)) and (not OP(4)) and OP(5));
sw<= (OP(0) and OP(1) and (not OP(2)) and (OP(3)) and (not OP(4)) and OP(5)); 
beq<=(not OP(0)) and (not OP(1)) and  OP(2) and (not OP(3)) and (not OP(4)) and (not  OP(5));
bneq<=(OP(0)) and (not OP(1)) and (OP(2))and (not OP(3)) and (not OP(4)) and (not OP(5));
j<=(not OP(0)) and (OP(1)) and (not OP(2))and (not OP(3)) and (not OP(4)) and (not OP(5));

RegDest<=r;
ALUSrc<=lw or sw;
MemToReg<=lw;
RegWrite<=(r or lw);
MemRead<=lw;
MemWrite<=sw;
jmp<=j;
Branch<=beq ;
Branch_not<=bneq;
alu_op(1)<=r;
alu_op(0)<=beq;
ALUOp<=alu_op;
end Behavioral;


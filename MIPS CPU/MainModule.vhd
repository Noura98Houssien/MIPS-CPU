----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:08:38 05/01/2019 
-- Design Name: 
-- Module Name:    MainModule - Behavioral 
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

entity MainModule is
port(

START: IN STD_LOGIC;
CLK: IN STD_LOGIC;
RegFileOut1: OUT STD_LOGIC_VECTOR(31 downto 0);
RegFileOut2: OUT STD_LOGIC_VECTOR(31 downto 0);
ALUOut: OUT STD_LOGIC_VECTOR(31 downto 0);
PCOut: OUT STD_LOGIC_VECTOR(31 downto 0);
DataMemOut: OUT STD_LOGIC_VECTOR(31 downto 0)

);
end MainModule;

architecture Behavioral of MainModule is
signal  PCIn     :   STD_LOGIC_VECTOR (31 downto 0);
signal  pcoutput : STD_LOGIC_vector(31 downto 0);
signal  instdata :   STD_LOGIC_VECTOR (31 downto 0);
signal  c1 :   std_logic;
signal  c2 :   std_logic;
signal  RegDs    :   STD_LOGIC;
signal  Jump     :   STD_LOGIC;
signal  Branch   :   STD_LOGIC;
signal  Branch_not   :   STD_LOGIC;
signal  MemRead  :   STD_LOGIC;
signal  MemToReg :   STD_LOGIC;
signal  ALUOp    :   STD_LOGIC_VECTOR (1 downto 0);
signal  MemWrite :   STD_LOGIC;
signal  ALUSrc   :   STD_LOGIC;
signal  RegWrite :   STD_LOGIC;

signal  write_sel:   STD_LOGIC_vector(4 downto 0);
signal  write_data : STD_LOGIC_vector(31 downto 0);
signal  i_type_const : STD_LOGIC_vector(31 downto 0);
signal  ReadData1 : STD_LOGIC_vector(31 downto 0);
signal  ReadData2 : STD_LOGIC_vector(31 downto 0);
signal  Alu_input2 : STD_LOGIC_vector(31 downto 0);
signal  opbits :   STD_LOGIC_VECTOR (3 downto 0);
signal  dataout :  std_logic_vector(31 downto 0);
signal  cflag :   std_logic;
signal  zflag :   std_logic;
signal  zzflag :   std_logic;
signal  z2flag :   std_logic;
signal  oflag :   std_logic;

SIGNAL DMoutput    :  STD_LOGIC_VECTOR (31 downto 0);
signal  alu_input :  std_logic_vector(31 downto 0);
signal  alu_outpc :  std_logic_vector(31 downto 0);
signal input2_and  :   std_logic;
signal  mux_selector :   std_logic;
signal input1_or  :   std_logic;
signal input2_or:   std_logic;

signal input2_selector:  std_logic_vector(31 downto 0);
signal mux_output : std_logic_vector(31 downto 0);
signal shl28_out : std_logic_vector(27 downto 0);
signal jump_out : std_logic_vector(31 downto 0);

begin

pc:regester port map(START,'0',CLK,not(START),PCIn,pcoutput);
PCOut<=pcoutput;
inst:INSTRMEMORY PORT MAP(not(START),instdata,pcoutput,CLK);
 
cu:ControlUnit port map(instdata(31 downto 26),RegDs,ALUSrc,MemToReg,RegWrite,MemRead,MemWrite,Branch,Jump,ALUOp,  Branch_not  

									   );

m1:mux2x1_5input_bit  port map(instdata(20 downto 16),instdata(15 downto 11)
,RegDs,write_sel);
regfile:RegisterFile port map (instdata(25 downto 21)
,instdata(20 downto 16),write_sel,RegWrite,CLK,
                               write_data,ReadData1,ReadData2
										 );
RegFileOut1<=ReadData1;
RegFileOut2<=ReadData2;
							  
sigenex:Sigen_extend port map(instdata(15 downto 0),
i_type_const);
m2:mux2x1_32inbit    port map(ReadData2,i_type_const,
ALUSrc,Alu_input2);

 
AC:AluControl port map(instdata(5 downto 0),ALUOp,opbits );
alu1:ALU port map(ReadData1,Alu_input2,opbits ,
opbits(2),dataout,cflag,zflag,oflag);
ALUOut<=dataout;
input2_and<=zflag;

                       
DM:DATAMEMORY PORT MAP(not(START),ReadData2,DMoutput,MemRead ,MemWrite,dataout,CLK);			
DataMemOut<=DMoutput;
m3:mux2x1_32inbit port map(dataout,DMoutput,MemToReg,write_data);

shl32:ShiftLeft2_32bit port map (i_type_const,alu_input);
--to get next instructions
--alu2:ALU port map(pcoutput,"00000000000000000000000000000100","0010",'0',alu_outpc,cflag,zzflag,oflag);

gen_add: geniric_adder GENERIC map(32) port map(pcoutput,
"00000000000000000000000000000100",alu_outpc,c1);
--alu_outpc<=pcoutput+"00000000000000000000000000000100";
--alu3:ALU port map(alu_outpc,alu_input,"0010",'0',input2_selector,cflag,zflag,oflag);
gen_add2: geniric_adder GENERIC map(32) port map (alu_outpc,
alu_input,input2_selector,c2);

--alu_outpc<=pcoutput+"00000000000000000000000000000100";
--alu3:ALU port map(alu_outpc,alu_input,"0010",'0',input2_selector,cflag,zflag,oflag);
--input2_selector<=alu_outpc+alu_input;
input1_or<=input2_and and Branch;
input2_or<=not(input2_and) and Branch_not;
mux_selector<=input1_or or input2_or;
m4:mux2x1_32inbit port map(alu_outpc,input2_selector,mux_selector
,mux_output);

shl28:ShiftLeft2_26bit port map(instdata(25 downto 0),shl28_out);
jump_out<=pcoutput(31 downto 28)&shl28_out;
m5:mux2x1_32inbit port map(mux_output,jump_out,Jump,PCIn);
end Behavioral;
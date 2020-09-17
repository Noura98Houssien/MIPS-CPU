# MIPS CPU
This Project is designing MIPS CPU Using VHDL.The CPU able to perform certain instructions. These instructions are R-type instructions and they
only include AND, OR, ADD, SUB, SLT and finally NOR instructions and I-type instructions: lw, sw, beq, bne and J-type instruction: j.
# Required Instractions:
![required instractions](https://github.com/Noura98Houssien/MIPS-CPU/blob/master/Images/required%20instractions.PNG)

# Entity look as follows:
- START: IN STD_LOGIC;
- CLK: IN STD_LOGIC;
- RegFileOut1: OUT STD_LOGIC_VECTOR(31 downto 0);
- RegFileOut2: OUT STD_LOGIC_VECTOR(31 downto 0);
- ALUOut: OUT STD_LOGIC_VECTOR(31 downto 0);
- PCOut: OUT STD_LOGIC_VECTOR(31 downto 0);
- DataMemOut: OUT STD_LOGIC_VECTOR(31 downto 0);
# MIPS CPU Design:
![cpu design](https://github.com/Noura98Houssien/MIPS-CPU/blob/master/Images/cpu%20design.PNG)
# Control Unit Design (CU):
![cu design](https://github.com/Noura98Houssien/MIPS-CPU/blob/master/Images/control%20unit%20design.PNG)
# ALU Control Design:
![ALU design](https://github.com/Noura98Houssien/MIPS-CPU/blob/master/Images/ALU%20design.PNG)

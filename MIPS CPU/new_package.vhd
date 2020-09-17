--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

package new_package is
component mux2x1_5input_bit is
 Port ( i0 : in  STD_LOGIC_VECTOR (4 downto 0);
           i1 : in  STD_LOGIC_VECTOR (4 downto 0);
           s : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

component geniric_adder IS
	GENERIC (	n : NATURAL := 8);
	PORT    (	A : IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
			B : IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
			S : OUT STD_LOGIC_VECTOR (n-1 DOWNTO 0);
			Carry : OUT  STD_LOGIC);
END component;


component  mux2x1_32inbit is
    Port ( i0 : in  STD_LOGIC_VECTOR (31 downto 0);
           i1 : in  STD_LOGIC_VECTOR (31 downto 0);
           s : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));

end component;

component ShiftLeft2_32bit is
  Port ( input : in  STD_LOGIC_VECTOR (31 downto 0);
         output : out  STD_LOGIC_VECTOR (31 downto 0));
end component ;

component ShiftLeft2_26bit is
  Port ( input : in  STD_LOGIC_VECTOR (25 downto 0);
           output : out  STD_LOGIC_VECTOR (27 downto 0));
end component ;

component ControlUnit is
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
			  Branch_not   : out  STD_LOGIC
           --ALUOp0 : out  STD_LOGIC
			  );
end component;

component Sigen_extend is
   Port ( input : in  STD_LOGIC_VECTOR (15 downto 0);
          output : out  STD_LOGIC_VECTOR (31 downto 0)
			);
end component;

component AluControl is
Port ( funbits : in  STD_LOGIC_VECTOR (5 downto 0);
       aluop: in STD_LOGIC_VECTOR (1 downto 0);
       opbits : out  STD_LOGIC_VECTOR (3 downto 0)
	   );
end component;

component DATAMEMORY is
 Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port ( LoadIt: in STD_LOGIC;
  			INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
			OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			CLK       : in STD_LOGIC
			);
end component;

component INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
    CLK: in STD_LOGIC
    );
end component ;


component adder is
    Port ( input1 : in  STD_LOGIC;
           input2 : in  STD_LOGIC;
			  carryin :in std_logic;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end component;

component mux4x1 is
    Port ( i0,i1,i2,i3 : in  STD_LOGIC;
           selector : in  STD_LOGIC_vector(1 downto 0);
           output : out  STD_LOGIC);
end component;

component mux2x1 is 

Port ( i0,i1,selector : in  STD_LOGIC;
           output : out  STD_LOGIC);

end component;

component ALU_1bit is
			   Port ( input1,input2,carryin : in  STD_LOGIC;
           result,carryout : out  STD_LOGIC;
           op : in  STD_LOGIC_VECTOR (3 downto 0);
			  less :in std_logic;
			  set :out std_logic
			  );
end component;

component regester is 

    Port ( load,INC,CLK,CLR : in  STD_LOGIC;
           I : in  STD_LOGIC_vector(31 downto 0);
           O : out  STD_LOGIC_vector(31 downto 0));
end component ;

component mux is 
 Port ( slector : in  STD_LOGIC_vector (4 downto 0);
           i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15 : in  STD_LOGIC_vector(31 downto 0);
           i16,i17,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31 : in  STD_LOGIC_vector(31 downto 0);
           output : out  STD_LOGIC_vector(31 downto 0));
end component;

component decoder is
 Port ( En : in  STD_LOGIC;
           input : in  STD_LOGIC_vector(4 downto 0);
           output: out  STD_LOGIC_vector(31 downto 0)
         );
end component;

component RegisterFile is
 Port ( read_sel1 : in  STD_LOGIC_vector(4 downto 0);
           read_sel2 : in  STD_LOGIC_vector(4 downto 0);
           write_sel : in  STD_LOGIC_vector(4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           write_data : in  STD_LOGIC_vector(31 downto 0);
           data1 : out  STD_LOGIC_vector(31 downto 0);
           data2 : out  STD_LOGIC_vector(31 downto 0));
end component;

component ALU is
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
end component;

-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
--
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--

end new_package;

package body new_package is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end new_package;









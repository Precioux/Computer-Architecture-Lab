----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:10:47 12/13/2021 
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
use IEEE.NUMERIC_STD.ALL ;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
		generic(Width : integer :=8);
		port(
			A, B: in  STD_LOGIC_VECTOR(Width-1 downto 0);  -- 2 inputs 8-bit
         ALU_Sel  : in  STD_LOGIC_VECTOR(2 downto 0);  -- 1 input 4-bit for selecting function
         ALU_Out   : out  STD_LOGIC_VECTOR(Width-1 downto 0); -- 1 output 8-bit 
         c,z : out std_logic
		);
end ALU;

architecture Behavioral of ALU is

component Adder_8bits is
Port ( x : in STD_LOGIC_VECTOR(7 downto 0);
           y : in STD_LOGIC_VECTOR(7 downto 0);
           cin : in STD_LOGIC;
           sum : out STD_LOGIC_VECTOR(7 downto 0);
           c : out STD_LOGIC);
			  end component;
		
component ShiftRight is 
    Port ( beforeShift : in  STD_LOGIC_VECTOR (7 downto 0); 
           --CLK   : in STD_LOGIC; 
           afterShift : out  STD_LOGIC_VECTOR (7 downto 0)
			  ); 
end component;

component Shift_left is
    Port ( input : in  STD_LOGIC_VECTOR (7 downto 0);
			 -- clk   : in STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (7 downto 0)
          -- cout : out  STD_LOGIC
			  );
end component;

component Zero is
    Port ( Output : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component And_Bits is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Output : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component OR_operand is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           C : out  STD_LOGIC_VECTOR (7 downto 0));
end component;
			  


signal ALU_Result : std_logic_vector (Width-1 downto 0);
signal ALU_Result_addition : std_logic_vector (Width-1 downto 0);
signal z1 , one : std_logic_vector (Width-1 downto 0);
signal carryOut,cin :std_logic ;
signal ALU_Result_SHL : std_logic_vector (Width-1 downto 0);
signal ALU_Result_SHR : std_logic_vector (Width-1 downto 0);
signal ALU_Result_and : std_logic_vector (Width-1 downto 0);
signal ALU_Result_or : std_logic_vector (Width-1 downto 0);
signal ALU_Result_0 : std_logic_vector (Width-1 downto 0);
signal ALU_Result_counter : std_logic_vector (Width-1 downto 0);
signal carryOut_add ,carryOut_1: std_logic;

signal check :std_logic;

begin
check <= '0';

cin <='0';
z1 <= "00000000";
one<= "00000001";
--c <='0';
z <='0';
--carryOut <='0';

instanceAdd : Adder_8bits port map(A,B,'0',ALU_Result_addition,carryOut_add);
instanceSH : Shift_left port map(A,ALU_Result_SHL);
instance1 : ShiftRight port map(A,ALU_Result_SHR);
instanceAND : And_Bits port map(A,B,ALU_Result_and);
instanceOR: OR_operand port map(A,B,AlU_Result_or);
instancePlusOne: Adder_8bits port map (A,one,cin,ALU_Result_counter,carryOut_1);
instanceZ1: Zero port map(AlU_Result_0);

process(A,B,ALU_Sel)
 begin


  case(ALU_Sel) is
  when "000" => -- Addition
       ALU_Result <= ALU_Result_addition;
       carryOut<=carryOut_add;
		-- z<='0';
--		  if(ALU_Result ="00000000") then
--          z<='1';
--			end if;
	
	
  when "001" => --shift left
         ALU_Result <= ALU_Result_SHL;
		--	z <= '1' when ALU_Result(7 downto 0) = "00000000" else '0'; 
			carryOut<='0';
--			 if(ALU_Result ="00000000") then
  -- z<='1';
--	end if;
			--check<='1';
	--A <= ALU_Result;

  when "010" => --shift right
   ALU_Result <= ALU_Result_SHR;
	--z <= '1' when ALU_Result(7 downto 0) = "00000000" else '0'; 
	carryOut<='0';
--	 if(ALU_Result ="00000000") then
--   z<='1';
--	end if;
	--check<='1';
 
	--A<= ALU_Result;
	
  when "011" => -- and 
ALU_Result <= ALU_Result_and;
   --ALU_Result <= A and B;
	--z <= '1' when ALU_Result(7 downto 0) = "00000000" else '0'; 
	carryOut<='0';
--	 if(ALU_Result ="00000000") then
--   z<='1';
--	end if;
	--check<='1';
	
  when "100" => -- or
   --ALU_Result <= A or B;
	
ALU_Result <= ALU_Result_or;
	--z <= '1' when ALU_Result(7 downto 0) = "00000000" else '0'; 
	carryOut<='0';
	--check<='1';
	-- if(ALU_Result ="00000000") then
  -- z<='1';
	--end if;
	
  when "101" => -- Zero
 ALU_Result <= ALU_Result_0;
 z<='1';
 carryOut <='0';
 --check<='1';

  
  when "110" => --Counter
   ALU_Result <= ALU_Result_counter;
	carryOut<=carryOut_1;
	--check<='1';
	-- if(ALU_Result ="00000000") then
  -- z<='1';
	--end if;
	--z <= '1' when ALU_Result(7 downto 0) = "00000000" else '0'; 
  
  when others => ALU_Result <= "00000000" ; 
  carryOut<= '0';
  z<='1';
  end case;
  
--  check<='1';
 end process;
 
 ALU_Out <= ALU_Result;
 c <= carryOut ;
 
 
-- process(ALU_Result,check)
-- begin
-- case(check) is 
-- when '1' =>
-- 
-- if(ALU_Result ="00000000") then
--   z<='1';
--	end if;
-- 
-- when others =>
-- z<='0';
-- 
-- end case;
-- end process;
-- 
 --z <= '1' when ALU_Result(7 downto 0) = "00000000" else '0'; 
 
end Behavioral;

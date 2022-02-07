----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:34:56 01/04/2022 
-- Design Name: 
-- Module Name:    base - Behavioral 
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
entity manager is
    Port ( clk : in  STD_LOGIC;
           ROM_addr : in  STD_LOGIC;
           ALU_sel : in  STD_LOGIC;
           REG2_input : in  STD_LOGIC_VECTOR (7 downto 0);
           RESET : in  STD_LOGIC;
           REG_Out : out  STD_LOGIC_VECTOR (7 downto 0));
end manager;

architecture Behavioral of manager is


component ROM is port(
ROM_adder : in std_logic ;
data_out: out std_logic_vector (7 downto 0)
);
end component ;
component  ALU is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
			  cin : in std_logic; 
			  coutResult : std_logic ;
           Add : out  STD_LOGIC_VECTOR (7 downto 0);
           Alu_sel : in  STD_LOGIC);
end component ;

component RAM16x8 is
	port(
		clk: in std_logic;
		arst: in std_logic;
		wr: in std_logic;
		rd: in std_logic;
		address: in std_logic_vector(3 downto 0);
		data_in: in std_logic_vector(7 downto 0);
		data_out: out std_logic_vector(7 downto 0)
	);
end component ;

 
component REG is
 port(
 clk : in std_logic;
 D: in std_logic_vector(7 downto 0);
 Q: out std_logic_vector(7 downto 0)
 );
end component;

signal REG1_input ,REG1_Output,REG2_Output, ALU_Output,REGR_Output,RAM_Output: std_logic_vector (7 downto 0); 
signal CoutAdd : std_logic ;


begin

instanceROM : ROM port map (ROM_addr, REG1_input);
instanceRG1 : REG port map ( clk,REG1_input,REG1_Output);
instanceRG2 : REG port map ( clk,REG2_input,REG2_Output);
instanceResult_reg : REG port map ( clk,ALU_Output,REGR_Output);
instanceALU : ALU port map (REG1_Output , REG2_Output ,'0' , CoutAdd ,ALU_Output , ALU_sel) ;
instanceRAM : RAM16x8 port map (clk ,'0' , '1','1' , "0001",REGR_Output , RAM_Output ) ;
instanceRG_out : REG port map ( clk,RAM_Output,REG_Out);


end Behavioral;


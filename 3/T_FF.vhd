----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:08:19 10/24/2021 
-- Design Name: 
-- Module Name:    T_FF - Behavioral 
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

entity T_FF is
    Port ( T : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QB : out  STD_LOGIC);
end T_FF;

architecture Behavioral of T_FF is
	component D_FF is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QB : out  STD_LOGIC);
	end component;
	signal output_signal : STD_LOGIC;
	
	
	begin
  dff_instance0 : D_FF port map (D => T, CLK=> CLK, Q => output_signal);
		PROCESS(CLK)
		variable TMP : STD_LOGIC;
		
		begin
			if(CLK='1' and CLK'EVENT) then 	
			if(T ='0')then
			TMP := output_signal xor T;
			elsif(T='1') then
			TMP := TMP xor T;
			
			end if;	
			end if;
			Q <= TMP;
			QB <= not TMP;
			
		end PROCESS;
end Behavioral;


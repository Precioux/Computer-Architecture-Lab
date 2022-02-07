----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:39:30 11/01/2021 
-- Design Name: 
-- Module Name:    SeqDet1011_MealyMachine - Behavioral 
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

entity SeqDet1011_MealyMachine is
    Port ( clk : in  STD_LOGIC;
           input : in  STD_LOGIC;
           output : out  STD_LOGIC);
end SeqDet1011_MealyMachine;

architecture Behavioral of SeqDet1011_MealyMachine is

type state_t is(s0, s1, s2, s3);
signal present_state : state_t := s0;
signal next_state : state_t := s0;


begin
	
	CBM : process(present_state, input)
	begin
		output <= '0';
		case present_state  is
		when s0 =>
			if(input = '0') then
				next_state <= s0;
				output <= '0';
			else
				next_state <= s1;
				output <= '0';
			end if;
		when s1 =>
			if(input = '0') then
				next_state <= s2;
				output <= '0';
			else
				next_state <= s1;
				output <= '0';
			end if;
		when s2 =>
			if(input = '0') then
				next_state <= s0;
				output <= '0';
			else
				next_state <= s3;
				output <= '0';
			end if;
		when s3 =>
			if(input = '0') then
				next_state <= s2;
				output <= '0';
			else
				next_state <= s1;
				output <= '1';
			end if;
		when others =>
			next_state <= s0;
			output <= '0';
		end case;
	end process;
	
--	REG : process(clk)
--	begin
--		if rising_edge(clk) then
--			present_state <= next_state;
--		end if;
--	end process;

end Behavioral;


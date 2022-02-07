----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:03:57 11/01/2021 
-- Design Name: 
-- Module Name:    SeqDet1011_MooreMachine - Behavioral 
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

entity SeqDet1011_MooreMachine is
    Port ( clk : in  STD_LOGIC;
           input : in  STD_LOGIC;
           output : out  STD_LOGIC);
end SeqDet1011_MooreMachine;

architecture Behavioral of SeqDet1011_MooreMachine is

type state is(s0, s1, s2, s3, s4);
signal present_state : state := s0;
signal next_state : state := s0;

begin
	CMB : process(present_state, input)
	begin
		case present_state is
		when s0 =>
				if(input = '1') then
					next_state <= s1;
				else
					next_state <= present_state;
				end if;
		when s1 =>
				if(input = '1') then
					next_state <= present_state;
				else
					next_state <= s2;
				end if;
		when s2 =>
				if(input = '1') then
					next_state <= s3;
				else
					next_state <= s0;
				end if;
		when s3 =>
				if(input = '1') then
					next_state <= s4;
				else
					next_state <= s2;
				end if;
		when s4 =>
				if(input = '1') then
					next_state <= s1;
				else
					next_state <= s0;
				end if;
		when others =>
				next_state <= s0;
		end case;	
	end process;
	
	REG : process(clk)
	begin
		if(clk'event and clk = '1') then
			present_state <= next_state;
		end if;
	end process;
	
	output <= '0' when present_state = s0 else
	'0' when present_state = s1 else
	'0' when present_state = s2 else
	'0' when present_state = s3 else
	'1' when present_state = s4;


end Behavioral;


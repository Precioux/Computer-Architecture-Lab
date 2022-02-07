----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:44:43 11/01/2021 
-- Design Name: 
-- Module Name:    P2_findString - Behavioral 
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

entity P2_findString is
Port ( input : in  STD_LOGIC;
           output : out  STD_LOGIC;
			  clk :in STD_LOgIC
			  );
end P2_findString;

architecture Behavioral of P2_findString is
type state_t is(s0,s1,s2,s3,s4,s5,s6);
signal prs_state:state_t:=s0;
signal next_state :state_t := s0;
begin

CMD : process(prs_state,input)
begin
case prs_state is
when s0 =>
   if(input ='0')then
		next_state <= s0;
	else 
		next_state<= s1;
	end if;
when s1 =>
if(input ='0')then
		next_state <= s2;
	else 
		next_state<= s1;
	end if;
when s2 =>
    if(input ='0')then
		next_state <= s5;
	else 
		next_state<= s3;
	end if;
when s3 =>
	if(input ='0')then
		next_state <= s4;
	else 
		next_state<= s1;
	end if;
when s4 =>
	if(input ='0')then
		next_state <= s5;
	else 
		next_state<= s3;
	end if;
when s5 =>
	if(input ='0')then
		next_state <= s0;
	else 
		next_state<= s6;
	end if;
when s6 =>
	if(input ='0')then
		next_state <= s2;
	else 
		next_state<= s1;
	end if;
when others =>
	next_state <= s0;
	end case;
end process;
	
	
REG: process(clk)
begin
if(clk'event and clk ='1')then
prs_state<= next_state;
end if;
end process;



output <= '0' when prs_state = s0 else
'1'  when prs_state = s4 else
'0' when prs_state = s1 else
'0' when prs_state = s2 else
'0'  when prs_state = s3 else
'0'  when prs_state = s5 else
'1'  when prs_state = s6 ;

end Behavioral;

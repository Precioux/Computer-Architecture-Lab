----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:53:56 11/01/2021 
-- Design Name: 
-- Module Name:    mealy - Behavioral 
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
entity mealy is 
port(
RN,I1,CK : in std_logic;
Q: out std_logic);
end mealy;

Architecture behavioral of mealy is
type state_type is (s0,s1,s2);
signal present_state,next_state:state_type;

begin 

   process(I1,present_state)
begin 
   case present_state is 
                        when s0=>
                             if(I1='0') then
                                Q<='0';
                                next_state <=s2;
                            else
                                Q<='0';
                               next_state<=s1;
                            end if;
                       when s1=>
                             if(I1='0') then 
                                Q<='1';
                                next_state <=s2;
                            else
                                Q<='1'; 
                                next_state<= s1;
                            end if;
                       when s2=>
                             if(I1='0') then
                               Q<='0';
                               next_state <=s2;
                            else 
                               Q<='0';
                               next_state<= s1;
                            end if;
                       when others => 
                               next_state<=s0;
  end case;
end process;
      process(CK,RN)
begin 
      if(RN='1') then
               present_state<=s0;
      elsif (CK='1' and CK'event) then
               present_state<=next_state;
      end if;
end process;

end;

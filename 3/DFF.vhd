library IEEE;
use ieee . std_logic_1164.all;

entity DFF is
PORT(
CLOCK: in std_logic;
D    : in std_logic;
 sync_reset: in std_logic; 
 Q: out std_logic
);
end DFF;

architecture behavioral of DFF is
begin
  process(CLOCK)
  begin 
    if rising_edge (CLOCK ) then
   if(sync_reset='1') then 
    Q <= '0';
   else 
    Q <= D ;
   end if;
    end if; 
end process;
end behavioral;

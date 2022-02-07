library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 -- Needed for shifts
entity ShiftRight is 
    Port ( beforeShift : in  STD_LOGIC_VECTOR (7 downto 0); 
           --CLK   : in STD_LOGIC; 
           afterShift : out  STD_LOGIC_VECTOR (7 downto 0)
			  ); 
end ShiftRight; 
 
architecture Behavioral of ShiftRight is 

begin 
 --process(CLK) 
 --begin 
  --if(CLK'event and CLK='1') then 
 afterShift(7)<='0';         --1000101 -> 0100010
 afterShift(6)<=beforeShift(7);
 afterShift(5)<=beforeShift(6);
 afterShift(4)<=beforeShift(5);
 afterShift(3)<=beforeShift(4);
 afterShift(2)<=beforeShift(3);
 afterShift(1)<=beforeShift(2);
 afterShift(0)<=beforeShift(1);
  --end if;  
 --end process; 
end Behavioral;
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:07:12 10/24/2021 
-- Design Name: 
-- Module Name:    T_FF_rstAsynchronous - Behavioral 
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

entity T_FF_rstAsynchronous is
 Port ( T : in  STD_LOGIC;
			  clock : in STD_LOGIC;
           Q : out  STD_LOGIC;
           Qb : out  STD_LOGIC;
           r : in  STD_LOGIC);
end T_FF_rstAsynchronous;

architecture Behavioral of T_FF_rstAsynchronous is

begin

process(clock)
variable TMP: std_logic;
begin 
 if(r = '1') then
 TMP := '0';
 Q <= TMP;
 Qb<= TMp;
 elsif(r ='0') then
   if(clock='1' and clock'event) then
     if(T='0') then
      TMP := TMP;
     elsif(T ='1') then
      TMP := not TMP;
		end if ;
	end if;
	Q <= TMP;
   Qb <= not TMP;
end if;
  

 
end PROCESS;

end Behavioral;


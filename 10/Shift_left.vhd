----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:39:17 12/13/2021 
-- Design Name: 
-- Module Name:    Shift_left - Behavioral 
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

entity Shift_left is
    Port ( input : in  STD_LOGIC_VECTOR (7 downto 0);
			 -- clk   : in STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (7 downto 0)
          -- cout : out  STD_LOGIC
			  );
end Shift_left;

architecture Behavioral of Shift_left is

begin
	--process(clk)
	--begin
		--if(clk'event and clk='1') then
			--cout <= input(7);
			output(7) <= input(6);
			output(6) <= input(5);
			output(5) <= input(4);
			output(4) <= input(3);
			output(3) <= input(2);
			output(2) <= input(1);
			output(1) <= input(0);
			output(0) <= '0';
		--end if;	
	--end process;
end Behavioral;

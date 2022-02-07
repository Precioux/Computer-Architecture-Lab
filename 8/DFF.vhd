----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:39:11 12/07/2021 
-- Design Name: 
-- Module Name:    DFF - Behavioral 
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
entity DFF is
    Port ( D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Clk : in  STD_LOGIC);
end DFF;

architecture Behavioral of DFF is

begin
	PROCESS(Clk)
	begin
		if(Clk='1' and Clk'EVENT) then
			Q <= D;
		end if;
	end PROCESS;
end Behavioral;


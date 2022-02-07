----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:50:48 12/13/2021 
-- Design Name: 
-- Module Name:    Zero - Behavioral 
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

entity Zero is
    Port ( Output : out  STD_LOGIC_VECTOR (7 downto 0));
end Zero;

architecture Behavioral of Zero is

begin

Output(0) <= '0';
Output(1) <= '0';
Output(2) <= '0';
Output(3) <= '0';
Output(4) <= '0';
Output(5) <= '0';
Output(6) <= '0';
Output(7) <= '0';



end Behavioral;


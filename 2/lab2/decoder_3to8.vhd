----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:19:47 10/13/2021 
-- Design Name: 
-- Module Name:    decoder_3to8 - Behavioral 
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

entity decoder_3to8 is
    Port ( input : in  STD_LOGIC_VECTOR (2 downto 0);
           output : out  STD_LOGIC_VECTOR (7 downto 0));
end decoder_3to8;

architecture Behavioral of decoder_3to8 is
signal w :std_logic_vector (2 downto 0);
begin
	w(0) <= not input(0);
	w(1) <= not input(1);
	w(2) <= not input(2);
	output(0) <= w(0) and w(1) and w(2); 
	output(1) <= input(0) and w(1) and w(2);
	output(2) <= w(0) and input(1) and w(2);
	output(3) <=input(0) and input(1) and w(2);
	output(4) <= w(0) and w(1) and input (2);
	output(5) <= input(0) and w(1) and input (2);
	output(6) <= w(0) and input(1) and input (2);
	output(7) <= input(0) and input(1) and input (2);




end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:43:53 10/15/2021 
-- Design Name: 
-- Module Name:    Decoder_2x4 - Behavioral 
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

entity Decoder_2x4 is
    Port ( input : in  STD_LOGIC_VECTOR (1 downto 0);
           output : out  STD_LOGIC_VECTOR (3 downto 0));
end Decoder_2x4;

architecture Behavioral of Decoder_2x4 is
signal w :std_logic_vector (1 downto 0);
begin

   w(0) <= not input(0);
	w(1) <= not input(1);

	output(0) <= w(0) and w(1);
	output(1) <= input(0) and w(1) ;
	output(2) <= w(0) and input(1);
	output(3) <=input(0) and input(1);


end Behavioral;


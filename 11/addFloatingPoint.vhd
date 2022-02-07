----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:55:57 01/04/2022 
-- Design Name: 
-- Module Name:    addFloatingPoint - Behavioral 
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

entity addFloatingPoint is
    Port ( SA : in  STD_LOGIC;
           SB : in  STD_LOGIC;
           FraA : in  STD_LOGIC_VECTOR (23 downto 0);
           FraB : in  STD_LOGIC_VECTOR (23 downto 0);
           ExA : in  STD_LOGIC_VECTOR (8 downto 0);
           ExB : in  STD_LOGIC_VECTOR (8 downto 0);
           S : out  STD_LOGIC;
           Fra : out  STD_LOGIC_VECTOR (23 downto 0);
           Exp : out  STD_LOGIC_VECTOR (8 downto 0));
end addFloatingPoint;

architecture Behavioral of addFloatingPoint is

begin

	if( SA = '0' && FraA = "00000000000000000000000" && ExA = "00000000" ) then
		S = SB ;
		Fra =FraB ;
		Exp =ExpB ;
	else if( SB = '0' && FraB = "00000000000000000000000" && ExB = "00000000" ) then
		S = SA ;
		Fra =FraA ;
		Exp =ExpA ;
		
	else 
	if(ExpA > ExpB)
	











end Behavioral;


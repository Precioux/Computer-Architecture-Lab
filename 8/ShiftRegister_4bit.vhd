----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:05:59 11/29/2021 
-- Design Name: 
-- Module Name:    ShiftRegister_4bit - Behavioral 
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

entity ShiftRegister_4bit is
    Port ( P : in  STD_LOGIC_VECTOR (3 downto 0);
           Output : out  STD_LOGIC;
			  Load_Shift : in STD_LOGIC; --if Load_Shift==1 then it is shiftting, otherwise it is loading
           Clk : in  STD_LOGIC);
end ShiftRegister_4bit;

architecture Behavioral of ShiftRegister_4bit is
component DFF is
    Port ( D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Clk : in  STD_LOGIC);
end component;

component MUX_2x1 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Selector : in  STD_LOGIC);
end component;

signal wire0, wire1, wire2, wire3, wire4, wire5, wire6 : STD_LOGIC;

begin
	
	MUX_instance0 : MUX_2x1 port map (A => '0', B => P(3), Q => wire0, Selector => Load_Shift);
	DFF_instance0 : DFF port map (D => wire0, Q => wire1, Clk => Clk);
	MUX_instance1 : MUX_2x1 port map (B => wire1, A => P(2), Q => wire2, Selector => Load_Shift);
	DFF_instance1 : DFF port map (D => wire2, Q => wire3, Clk => Clk);
	MUX_instance2 : MUX_2x1 port map (B => wire3, A => P(1), Q => wire4, Selector => Load_Shift);
	DFF_instance2 : DFF port map (D => wire4, Q => wire5, Clk => Clk);
	MUX_instance3 : MUX_2x1 port map (B => wire5, A => P(0), Q => wire6, Selector => Load_Shift);
	DFF_instance3 : DFF port map (D => wire6, Q => Output, Clk => Clk);

end Behavioral;


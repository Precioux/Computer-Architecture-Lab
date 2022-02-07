----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:50:36 11/10/2021 
-- Design Name: 
-- Module Name:    RCA - Behavioral 
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

entity RCA is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C0 : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0));
end RCA;

architecture Behavioral of RCA is
component FA is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Sum : out  STD_LOGIC);
end component;

signal c1, c2, c3 : STD_LOGIC;

begin

instance0 : FA port map (A =>A(0), B =>B(0), Cin=> C0, Cout =>c1, Sum =>Sum(0));
instance1 : FA port map (A(1), B(1), c1, c2, Sum(1));
instance2 : FA port map (A(2), B(2), c2, c3, Sum(2));
instance3 : FA port map (A(3), B(3), c3, Cout, Sum(3));

end Behavioral;


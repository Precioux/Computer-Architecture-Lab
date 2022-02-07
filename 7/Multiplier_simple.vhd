----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:29:32 11/27/2021 
-- Design Name: 
-- Module Name:    Multiplier_simple - Behavioral 
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

entity Multiplier_simple is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (4 downto 0);
           p : out  STD_LOGIC_VECTOR (8 downto 0));
end Multiplier_simple;

architecture Behavioral of Multiplier_simple is
component full_adder is
 Port ( A : in STD_LOGIC;
 B : in STD_LOGIC;
 Cin : in STD_LOGIC;
 S : out STD_LOGIC;
 Cout : out STD_LOGIC);
 end component;

signal c: std_logic_vector(15 downto 0);
signal s :std_logic_vector(15 downto 0);

begin

instance11 :full_adder port map(a(1) and b(0) , a(0) and b(1),'0',s(0),c(0));
instance12 :full_adder port map(a(1) and b(1) , a(2) and b(0),c(0),s(1),c(1));
instance13 :full_adder port map(a(2) and b(1) , a(3) and b(0),c(1),s(2),c(2));
instance14 :full_adder port map(a(3) and b(1) , c(2),'0',s(3),c(3));


instance21 :full_adder port map(a(0) and b(2) ,s(1),'0',s(4),c(4));
instance22 :full_adder port map(a(1) and b(2) ,s(2),c(4),s(5),c(5));
instance23 :full_adder port map(a(2) and b(2) ,s(3),c(5),s(6),c(6));
instance24 :full_adder port map(a(3) and b(2) ,c(3),c(6),s(7),c(7));

instance31 :full_adder port map(a(0) and b(3) ,s(5),'0',s(8),c(8));
instance32 :full_adder port map(a(1) and b(3) ,s(6),c(8),s(9),c(9));
instance33 :full_adder port map(a(2) and b(3) ,s(7),c(9),s(10),c(10));
instance34 :full_adder port map(a(3) and b(3) ,c(7),c(10),s(11),c(11));


instance41 :full_adder port map(a(0) and b(4) ,s(9),'0',s(12),c(12));
instance42 :full_adder port map(a(1) and b(4) ,s(10),c(12),s(13),c(13));
instance43 :full_adder port map(a(2) and b(4) ,s(11),c(13),s(14),c(14));
instance44 :full_adder port map(a(3) and b(4) ,c(11),c(14),s(15),c(15));






p(0) <= a(0) and b(0);
p(1) <= s(0);
p(2) <= s(4);
p(3) <= s(8);
p(4) <= s(12);
p(5) <= s(13);
p(6) <= s(14);
p(7) <= s(15);
p(8) <= c(15);
end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity Ripple_Adder is
Port ( A : in STD_LOGIC_VECTOR (4 downto 0);
B : in STD_LOGIC_VECTOR (4 downto 0);
Cin : in STD_LOGIC;
S : out STD_LOGIC_VECTOR (4 downto 0);
Cout : out STD_LOGIC);
end Ripple_Adder;
 
architecture Behavioral of Ripple_Adder is

component full_adder
Port ( A : in STD_LOGIC;
B : in STD_LOGIC;
Cin : in STD_LOGIC;
S : out STD_LOGIC;
Cout : out STD_LOGIC);
end component;

signal c1,c2,c3,c4: STD_LOGIC;
 
begin
 
FA1: full_adder port map( A(0), B(0), Cin, S(0), c1);
FA2: full_adder port map( A(1), B(1), c1, S(1), c2);
FA3: full_adder port map( A(2), B(2), c2, S(2), c3);
FA4: full_adder port map( A(3), B(3), c3, S(3), c4);
FA5: full_adder port map( A(4), B(4), c3, S(4), Cout);
 
end Behavioral;
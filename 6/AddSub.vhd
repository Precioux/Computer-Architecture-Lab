
library ieee;
use ieee.std_logic_1164.all;
entity AddSub is
   port( Operation: in std_logic;
          A,B  : in std_logic_vector(3 downto 0);
          S : out std_logic_vector(3 downto 0);
          Cout, overflow : out std_logic);
end AddSub;
 
architecture behavorial of AddSub is
component fulladder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Sum : out  STD_LOGIC);
end component;
signal C1, C2, C3, C4: std_logic;
signal TMP: std_logic_vector(3 downto 0);

begin
TMP(0)<=B(0) xor operation;
TMP(1)<=B(1) xor operation;
TMP(2)<=B(2) xor operation;
TMP(3)<=B(3) xor operation;
FA0: fulladder port map(A(0),TMP(0),Operation,C1, S(0)); 
FA1: fulladder port map(A(1),TMP(1),C1, C2,S(1)); 
FA2: fulladder port map(A(2),TMP(2),C2, C3,S(2)); 
FA3: fulladder port map(A(3),TMP(3),C3,C4,S(3)); 
OVERFLOW <= C3 XOR C4 ;
Cout <= C4;
end behavorial;

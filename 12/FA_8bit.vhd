
library ieee;
use ieee.std_logic_1164.all;

entity FA_8bit is
port(x,y : in std_logic_vector(7 downto 0);
     cin : in std_logic;
      sum : out std_logic_vector(7 downto 0);
      co : out std_logic);
end FA_8bit;

architecture Behavioral of FA_8bit is
signal carry : std_logic_vector(6 downto 0);

component full_adder_vhdl_code is Port 
( A : in STD_LOGIC; 
  B : in STD_LOGIC;
 Cin : in STD_LOGIC;
  S : out STD_LOGIC;
 Cout : out STD_LOGIC
 ); 
end component;
  begin
     a0:full_adder_vhdl_code port map (x(0),y(0),cin,sum(0),carry(0));
     a1:full_adder_vhdl_code port map (x(1),y(1),carry(0),sum(1),carry(1));
     a2:full_adder_vhdl_code port map (x(2),y(2),carry(1),sum(2),carry(2));
     a3:full_adder_vhdl_code port map (x(3),y(3),carry(2),sum(3),carry(3));
     a4:full_adder_vhdl_code port map (x(4),y(4),carry(3),sum(4),carry(4));
     a5:full_adder_vhdl_code port map (x(5),y(5),carry(4),sum(5),carry(5));
     a6:full_adder_vhdl_code port map (x(6),y(6),carry(5),sum(6),carry(6));
     a7:full_adder_vhdl_code port map (x(7),y(7),carry(6),sum(7),co);
end Behavioral;

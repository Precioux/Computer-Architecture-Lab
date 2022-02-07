library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ShiftRegister4bit is
   port(   clk: in std_logic;
      Output: out std_logic;
      Input: in std_logic);
end ShiftRegister4bit;

architecture Behavioral of ShiftRegister4bit is
component D_FF is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;
signal Q : std_logic_vector(2 downto 0);
begin
   DFF_1 : D_FF port map(D=>Input,CLK=>clk,Q=>Q(0));
   DFF_2 : D_FF port map(D=>Q(0),CLK=>clk,Q=> Q(1));
   DFF_3 : D_FF port map(D=>Q(1),CLK=>clk,Q=>Q(2));
   DFF_4 : D_FF port map(D=>Q(2),CLK=>clk,Q=>Output);
end Behavioral;

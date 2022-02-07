library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
entity ROM16x8 is port(
addr: in std_logic_vector (3 downto 0);
data_out: out std_logic_vector (7 downto 0)
);
end ROM16x8;

architecture Behavioral of ROM16x8 is
type memory is Array(0 to 15 ) of std_logic_vector( 7 downto 0);
signal rom: memory:=("11110000","11001100","10101010","11011011","11110000","00001111","00000000","11111111","11111110","01000000","01010101","00000010","11011111","00010100","01010000","11111101");
Begin
data_out<=rom(conv_integer(addr));
end Behavioral;
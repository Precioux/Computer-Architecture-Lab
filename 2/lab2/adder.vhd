----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:40:55 10/13/2021 
-- Design Name: 
-- Module Name:    adder - Behavioral 
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

entity adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end adder;

architecture Behavioral of adder is
component decoder_3to8 is
    Port ( input : in  STD_LOGIC_VECTOR (2 downto 0);
           output : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

signal m : std_logic_vector(7 downto 0);
signal not_m : std_logic_vector(7 downto 0);
signal s0,c0 :std_logic ;
begin
instance0 : decoder_3to8 port map (input(0) => A, input(1) =>B , input(2) =>Cin, 
  output(0)=>m(0),output(1)=>m(1),output(2)=>m(2),output(3)=>m(3),output(4)=>m(4),output(5)=>m(5),output(6)=>m(6),output(7)=>m(7));
  
  not_m(0)<= not m(0);
  not_m(1)<= not m(1);
  not_m(2)<= not m(2);
  not_m(3)<= not m(3);
  not_m(4)<= not m(4);
  not_m(5)<= not m(5);
  not_m(6)<= not m(6);
  not_m(7)<= not m(7);
  
  
  s0<= not_m(1) and not_m(2) and not_m(4) and not_m(7) ;
  S <= not s0 ;
  
  c0 <= not_m(3) and not_m(5) and not_m(6) and not_m(7) ;
	Cout  <= not c0 ;
  
  --  one point : this is wrong 
--  s0 <= not_m(1) nand not_m(2);
--  s1 <= not_m(4) nand not_m(7);
--  S <= s0 nand s1;
--  c0<= not_m(3) nand not_m(5);
--  c1 <= not_m(6) nand not_m(7);
--  Cout <= c0 nand c1;
end Behavioral;


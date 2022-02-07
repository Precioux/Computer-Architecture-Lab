----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:54:21 10/15/2021 
-- Design Name: 
-- Module Name:    comparator_1bit - Behavioral 
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

entity comparator_1bit is
port(
A ,B : in std_logic ;
E,G,S : out std_logic 
);
end comparator_1bit;

architecture Behavioral of comparator_1bit is

component xor_gate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component ;



signal e0 , not_A, not_B : std_logic;
begin
not_A <= not A;
not_B <= not B;
instance0: xor_gate port map ( A => A ,B => B, Q => e0);
E <= not e0 ;
G <= not_b and A;
S <=  not_A and B;

end Behavioral;


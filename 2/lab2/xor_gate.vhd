----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:05:10 10/13/2021 
-- Design Name: 
-- Module Name:    xor_gate - Behavioral 
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

entity xor_gate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end xor_gate;

architecture Behavioral of xor_gate is

signal w0,w1,w2: std_logic ;

begin
 w0 <= A nand B;
 w1 <= w0 nand A;
 w2 <=w0 nand B;
 q <= w1 nand w2;
 
 
end Behavioral;


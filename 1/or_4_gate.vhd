----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:19:53 10/08/2021 
-- Design Name: 
-- Module Name:    or_4_gate - Behavioral 
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

entity or_4_gate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           OUT_result : out  STD_LOGIC);
end or_4_gate;

architecture Behavioral of or_4_gate is
component or_gate is
    Port ( A_or : in  STD_LOGIC;
           B_or : in  STD_LOGIC;
           out_or : out  STD_LOGIC);
end component;
signal w1,w2: std_logic;

begin
instance0 : or_gate port map(A_or=>A, B_or=>B,out_or=>w1);
instance1 : or_gate port map(A_or=>C, B_or=>D,out_or=>w2);
instance2 : or_gate port map(A_or=>w1, B_or=>w2,out_or=>OUT_result);

end Behavioral;


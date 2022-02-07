----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:24:12 10/12/2021 
-- Design Name: 
-- Module Name:    half_adder - Behavioral 
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

entity half_adder is
Port(
in1, in2: in std_logic;
out1, out2 : out std_logic
);
end half_adder;

architecture Behavioral of half_adder is

component xor_gate is
Port(
A, B: in std_logic;
C : out std_logic
);
End component ;

component and_gate is
Port(
A, B: in std_logic;
C : out std_logic
);
End component ;

begin

instance0: xor_gate port map ( A => in1, B => in2, C=>out1 );
instance1: and_gate port map ( A => in1, B => in2, C=>out2 );

end Behavioral;


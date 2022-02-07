----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:31:55 11/06/2021 
-- Design Name: 
-- Module Name:    HA - Behavioral 
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

entity HA is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           out1 : out  STD_LOGIC;
           out2 : out  STD_LOGIC);
end HA;

architecture Behavioral of HA is
component and_gate is
port(
A : in std_logic;
B : in std_logic;
C : out std_logic
);
end component;
component  xor_gate is
port(
A : in std_logic;
B : in std_logic;
xor_result : out std_logic
);
end component;
signal w1,w2: STD_LOGIC;
begin
instanceAnd : and_gate port map(A=>in1,B=>in2,C=>out2);
instanceXor : xor_gate port map(A=>in1,B=>in2,xor_result=>out1);

end Behavioral;

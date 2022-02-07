----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:33:29 11/06/2021 
-- Design Name: 
-- Module Name:    RippleCarryAdder - Behavioral 
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

entity RippleCarryAdder is
 Port (
    A: in std_logic_vector (3 downto 0);
    B: in std_logic_vector (3 downto 0);
   c0: in std_logic;
   c4: out std_logic;
    s:out std_logic_vector (3 downto 0)
);
end RippleCarryAdder;

architecture behavorial of RippleCarryAdder is
component FA is
    Port ( I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           Cin :in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end component;

 signal c1,c2,c3 : std_logic; 

begin 
instanceFA1 : FA port map(I1=>A(0),I2=>B(0),Cin=>c0,S=>s(0),Cout=>c1);
instanceFA2 : FA port map(A(1),B(1),c1,s(1),c2);
instanceFA3 : FA port map(A(2),B(2),c2,s(2),c3);
instanceFA4 : FA port map(A(3),B(3),c3,s(3),c4);
end behavorial;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:11:29 11/10/2021 
-- Design Name: 
-- Module Name:    carrylookahead - Behavioral 
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

entity carrylookahead is
 Port ( input1 : in  STD_LOGIC_VECTOR (3 downto 0);
           input2 : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin0 : in  STD_LOGIC;
			  Sum : out STD_LOGIc_VECTOR(3 downto 0);
           Cout : out  STD_LOGIC );
end carrylookahead;

architecture Behavioral of carrylookahead is

component carrylookahead_logic is
    Port ( input1 : in  STD_LOGIC_VECTOR (3 downto 0);
           input2 : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component fulladder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Sum : out  STD_LOGIC);
end component;

signal Cout_fulladder ,cout_external :std_logic_vector(3 downto 0);

begin
instance0 : carrylookahead_logic port map (input1 => input1, input2 =>input2 , Cin=>Cin0, Cout=>Cout_fulladder);
instancef0 :fulladder port map (A => input1(0) , B => input2(0), Cin =>Cin0 , Cout => cout_external(0),Sum =>Sum(0));
instancef1 :fulladder port map (A => input1(1) , B => input2(1), Cin =>Cout_fulladder(0) , Cout => cout_external(1),Sum =>Sum(1));
instancef2 :fulladder port map (A => input1(2) , B => input2(2), Cin =>Cout_fulladder(1) , Cout => cout_external(2),Sum =>Sum(2));
instancef3 :fulladder port map (A => input1(3) , B => input2(3), Cin =>Cout_fulladder(2) , Cout => cout_external(3),Sum =>Sum(3));
Cout <= Cout_fulladder(3);

end Behavioral;


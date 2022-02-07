----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:25:30 11/10/2021 
-- Design Name: 
-- Module Name:    CSA - Behavioral 
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

entity CSA is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C : in  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (4 downto 0)
			  );
end CSA;

architecture Behavioral of CSA is
component FA is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Sum : out  STD_LOGIC);
end component;

component RCA is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C0 : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

signal X,Y : STD_LOGIC_VECTOR (3 downto 0);

begin
	--carry save adder block
	FA1 : FA port map (A(0), B(0), C(0), X(0), Sum(0));
	FA2 : FA port map (A(1), B(1), C(1), X(1), Y(0));
	FA3 : FA port map (A(2), B(2), C(2), X(2), Y(1));
	FA4 : FA port map (A(3), B(3), C(3), X(3), Y(2));
	
	Y(3) <= '0';
	
	--ripple carry adder block
	RCA1 : RCA port map (X, Y, '0', Cout, Sum(4 downto 1));

end Behavioral;


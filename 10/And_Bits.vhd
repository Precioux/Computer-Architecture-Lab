----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:38:21 12/13/2021 
-- Design Name: 
-- Module Name:    And_Bits - Behavioral 
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

entity And_Bits is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Output : out  STD_LOGIC_VECTOR (7 downto 0));
end And_Bits;

architecture Behavioral of And_Bits is

begin


Output(0) <= A(0) and B(0);
Output(1) <= A(1) and B(1);
Output(2) <= A(2) and B(2);
Output(3) <= A(3) and B(3);
Output(4) <= A(4) and B(4);
Output(5) <= A(5) and B(5);
Output(6) <= A(6) and B(6);
Output(7) <= A(7) and B(7);



end Behavioral;


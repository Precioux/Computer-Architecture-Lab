----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:12:02 12/13/2021 
-- Design Name: 
-- Module Name:    Or - Behavioral 
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

entity OR_operand is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           C : out  STD_LOGIC_VECTOR (7 downto 0));
end OR_operand;

architecture Behavioral of OR_operand is

begin
	C(0) <= A(0) or B(0);
	C(1) <= A(1) or B(1);
	C(2) <= A(2) or B(2);
	C(3) <= A(3) or B(3);
	C(4) <= A(4) or B(4);
	C(5) <= A(5) or B(4);
	C(6) <= A(6) or B(6);
	C(7) <= A(7) or B(7);

end Behavioral;


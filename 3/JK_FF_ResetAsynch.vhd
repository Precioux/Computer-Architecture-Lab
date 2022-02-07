----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:09:42 10/20/2021 
-- Design Name: 
-- Module Name:    JK_FF_ResetAsync - Behavioral 
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

entity JK_FF_ResetAsync is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Rset : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QB : out  STD_LOGIC);
end JK_FF_ResetAsync;

architecture Behavioral of JK_FF_ResetAsync is
begin
	PROCESS(CLK)
	variable TMP : STD_LOGIC;
	begin
		if(Rset='1') then 
			Q <= '0';
			QB <= '1';
		else		
			if(CLK='1' and CLK'EVENT) then
				if(J='1' and K='1') then
					TMP := not TMP;
				elsif(J='1' and K='0') then
					TMP := '1';
				elsif(J='0' and K='1') then
					TMP := '0';
				else
					TMP := TMP;
				end if;
			end if;
			Q <= TMP;
			QB <= not TMP;
		end if;
	end PROCESS;
end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:37:34 10/15/2021 
-- Design Name: 
-- Module Name:    Mux_4x1 - Behavioral 
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

entity Mux_4x1 is
    Port ( input : in  STD_LOGIC_VECTOR (3 downto 0);
           output : out  STD_LOGIC;
           sel : in  STD_LOGIC_VECTOR (1 downto 0));
end Mux_4x1;

architecture Behavioral of Mux_4x1 is

signal sel_not :std_logic_vector(1 downto 0);
signal result :std_logic_vector(3 downto 0);


begin

sel_not(0) <= not sel(0);
sel_not(1) <= not sel(1);


result(0) <= sel_not(1) and sel_not(0) and input(0);
result(1) <= sel_not(1) and sel(0) and input(1);
result(2) <= sel(1) and sel_not(0) and input(2);
result(3) <= sel(1) and sel(0) and input(3);
output <= result(0) or result(1) or result(2) or result(3);


end Behavioral;


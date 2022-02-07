----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:19:49 10/15/2021 
-- Design Name: 
-- Module Name:    comparator_2bit - Behavioral 
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

entity comparator_2bit is
    Port ( a1 : in  STD_LOGIC;
           a0 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           b0 : in  STD_LOGIC;
           output : out  STD_LOGIC);
end comparator_2bit;

architecture Behavioral of comparator_2bit is

component  Mux_4x1 is
    Port ( input : in  STD_LOGIC_VECTOR (3 downto 0);
           output : out  STD_LOGIC;
           sel : in  STD_LOGIC_VECTOR (1 downto 0));
end component ;

signal and_1 , b0_not : std_logic ;


begin
 b0_not <= not b0;
 and_1 <= a0 and b0_not;
instance0 : Mux_4x1 port map( input(0) =>and_1 , input(1) => '0' , input(2) => '1',input(3) =>and_1,
											output =>output , sel(0) =>b1 , sel(1) =>a1 );
	
										





end Behavioral;


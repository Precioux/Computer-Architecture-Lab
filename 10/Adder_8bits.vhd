----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:03:30 12/13/2021 
-- Design Name: 
-- Module Name:    Adder_8bits - Behavioral 
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

entity Adder_8bits is
Port ( x : in STD_LOGIC_VECTOR(7 downto 0);
           y : in STD_LOGIC_VECTOR(7 downto 0);
           cin : in STD_LOGIC;
           sum : out STD_LOGIC_VECTOR(7 downto 0);
           c : out STD_LOGIC);
end Adder_8bits;

architecture Behavioral of Adder_8bits is

component full_adder_vhdl_code is
 Port 
( A : in STD_LOGIC; B : in STD_LOGIC;
 Cin : in STD_LOGIC; S : out STD_LOGIC;
 Cout : out STD_LOGIC); 
 end component ;
 
signal carry : std_logic_vector (7 downto 0);
 
 
begin
     a0:full_adder_vhdl_code port map (x(0),y(0),cin,sum(0),carry(0));
     a1:full_adder_vhdl_code port map (x(1),y(1),carry(0),sum(1),carry(1));
     a2:full_adder_vhdl_code port map (x(2),y(2),carry(1),sum(2),carry(2));
     a3:full_adder_vhdl_code port map (x(3),y(3),carry(2),sum(3),carry(3));
     a4:full_adder_vhdl_code port map (x(4),y(4),carry(3),sum(4),carry(4));
     a5:full_adder_vhdl_code port map (x(5),y(5),carry(4),sum(5),carry(5));
     a6:full_adder_vhdl_code port map (x(6),y(6),carry(5),sum(6),carry(6));
     a7:full_adder_vhdl_code port map (x(7),y(7),carry(6),sum(7),c);


end Behavioral;


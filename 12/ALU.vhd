----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:40:56 01/04/2022 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
			  cin : in std_logic; 
			  coutResult :out std_logic ;
           Add : out  STD_LOGIC_VECTOR (7 downto 0);
           Alu_sel : in  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is
component FA_8bit is
port(x,y : in std_logic_vector(7 downto 0);
     cin : in std_logic;
      sum : out std_logic_vector(7 downto 0);
      co : out std_logic
		);
end component ;

signal OutPut : std_logic_vector(7 downto 0 );
signal cout :  std_logic ;
begin

instance0 : FA_8bit port map(A, B , '0' , OutPut, cout );


--if( Alu_sel =  '1') then 
Add <= OutPut ;
--else 
--Add <= "00000000" ;
--end if ;
coutResult <= cout ;


end Behavioral;


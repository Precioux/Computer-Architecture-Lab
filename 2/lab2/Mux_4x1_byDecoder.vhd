----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:36:38 10/15/2021 
-- Design Name: 
-- Module Name:    Mux_4x1_byDecoder - Behavioral 
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

entity Mux_4x1_byDecoder is
    Port ( input : in  STD_LOGIC_VECTOR (3 downto 0);
	         sel : in  STD_LOGIC_VECTOR (1 downto 0);
           output : out  STD_LOGIC);
end Mux_4x1_byDecoder;

architecture Behavioral of Mux_4x1_byDecoder is
component  Decoder_2x4 is
    Port ( input : in  STD_LOGIC_VECTOR (1 downto 0);
           output : out  STD_LOGIC_VECTOR (3 downto 0));
end component ;

signal w0, w1,w2,w3,and_0,and_1,and_2,and_3 : std_logic ;
begin
instance0 : Decoder_2x4 port map ( input(0) =>sel(0) , input(1) =>sel(1) , output(0) => w0 ,output(1) => w1 ,
												output(2) => w2  , output(3) => w3 );
		and_0 <= w0 and input(0);
		and_1 <= w1 and input(1);
		and_2 <= w2 and input(2);
		and_3 <= w3 and input(3);
		
		output <= and_1 or and_2 or and_3 or and_0 ;

end Behavioral;


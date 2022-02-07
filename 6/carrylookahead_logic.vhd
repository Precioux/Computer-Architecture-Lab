----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:14:05 11/10/2021 
-- Design Name: 
-- Module Name:    carrylookahead_logic - Behavioral 
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

entity carrylookahead_logic is
    Port ( input1 : in  STD_LOGIC_VECTOR (3 downto 0);
           input2 : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC_VECTOR (3 downto 0));
end carrylookahead_logic;

architecture Behavioral of carrylookahead_logic is

signal Pi,Gi : std_logic_vector(3 downto 0);
signal PCin :std_logic_vector(3 downto 0);
signal PG : std_logic_vector(3 downto 0);


signal p2g1,p3p2g1,p3g2 : std_logic ;
begin



Pi(0) <=input1(0) or input2(0);
Pi(1) <=input1(1) or input2(1);
Pi(2) <=input1(2) or input2(2);
Pi(3) <=input1(3) or input2(3);

Gi(0) <=input1(0) and input2(0);
Gi(1) <=input1(1) and input2(1);
Gi(2) <=input1(2) and input2(2);
Gi(3) <=input1(3) and input2(3);


PCin(0) <=Pi(0) and Cin ;
PCin(1) <=Pi(1) and Pi(0) and Cin ;
PCin(2) <=Pi(2) and Pi(1) and Pi(0) and Cin ;
PCin(3) <=Pi(3) and Pi(2) and Pi(1) and Pi(0) and Cin ;

PG(0) <= Gi(0);
PG(1) <=Pi(1) and Gi(0);
PG(2) <= Pi(2) and Pi(1) and Gi(0);
PG(3) <= Pi(3) and Pi(2) and Pi(1) and Gi(0);


p2g1<= Pi(2) and Gi(1);
p3p2g1 <= Pi(3) and Pi(2) and Gi(1);
p3g2 <= Pi(3) and Gi(2);


Cout(0)<=Gi(0) or PCin(0);
Cout(1) <= Gi(1) or PG(1) or PCin(1);
Cout(2) <= Gi(2) or p2g1 or PG(2) or PCin(2);
Cout(3) <= Gi(3) or p3g2 or p3p2g1 or PG(3) or PCin(3);

end Behavioral;


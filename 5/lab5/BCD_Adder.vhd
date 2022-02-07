----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:39:57 11/06/2021 
-- Design Name: 
-- Module Name:    BCD_Adder - Behavioral 
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

entity BCD_Adder is
    Port ( input1 : in  STD_LOGIC_VECTOR (3 downto 0);
           input2 : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           Cout : inout  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0));
end BCD_Adder;

architecture Behavioral of BCD_Adder is
component FA is
Port ( I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end component;


--component xor_gate is
--port(
--A : in std_logic;
--B : in std_logic;
--xor_result : out std_logic
--);
--end component;

component  or_gate is
 Port ( A_or : in  STD_LOGIC;
           B_or : in  STD_LOGIC;
           out_or : out  STD_LOGIC);
end component;

component and_gate is
port (
   A : in STD_LOGIc ;
	B : in STD_LOGIC ;
	C : out STD_LOGIC );
end component;
component RippleCarryAdder is
 Port (
    A: in std_logic_vector (3 downto 0);
    B: in std_logic_vector (3 downto 0);
   c0: in std_logic;
   c4: out std_logic;
    s:out std_logic_vector (3 downto 0)
);
end component;

signal c0,c1,c2,c3,s1,s2,s3 , A1,A2 , outAnd1, outAnd2 : std_logic; 
signal co1 , co2 : std_logic;
signal Sum2 , inputBCD : std_logic_vector(3 downto 0);

begin
instanceRippleCarryAdder : RippleCarryAdder port map(A =>input1,B=>input2,c0=>Cin,s=>Sum2,c4=>c3);

--instanceFA1 : FA port map(I1=>input1(0),I2=>input2(0),Cin=>Cin,S=>Sum(0),Cout=>c0);
--instanceFA2 : FA port map(I1=>input1(1),I2=>input2(1),Cin=>c1,S=>s1,Cout=>c1);
--instanceFA3 : FA port map(I1=>input1(2),I2=>input2(2),Cin=>c2,S=>s2,Cout=>c2);
--instanceFA4 : FA port map(I1=>input1(3),I2=>input2(3),Cin=>c3,S=>s3,Cout=>c3);

instanceAnd1 : and_gate port map(A=>Sum2(1),B=>Sum2(3),C =>outAnd1);
instanceAnd2 : and_gate port map(A=>Sum2(2),B=>Sum2(3),C =>outAnd2);

Cout <= outAnd1 or outAnd2 or c3;
inputBCD(0) <='0';
inputBCD(1) <=Cout ;
inputBCD(2) <=Cout;
inputBCD(3) <='0';


instanceRippleCarryAdder1 :RippleCarryAdder port map(A=>Sum2,B=>inputBCD,c0=>Cin,s=>Sum,c4=>co1);

--instanceFA5 : FA port map(I1=>s1,I2=>Cout,Cin=>'0',S=>Sum(1),Cout=>co1);
--instanceFA6 : FA port map(I1=>s2,I2=>Cout,Cin=>co1,S=>Sum(2),Cout=>co2);
--instanceXor : xor_gate port map(A=>co2, B=>s3,xor_result=>Sum(3));
end Behavioral;


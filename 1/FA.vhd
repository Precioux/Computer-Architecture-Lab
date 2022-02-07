----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:46:25 10/08/2021 
-- Design Name: 
-- Module Name:    FA - Behavioral 
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

entity FA is
    Port ( I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end FA;

architecture Behavioral of FA is
component HA is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           out1 : out  STD_LOGIC;
           out2 : out  STD_LOGIC);
end component;
component or_gate is
    Port ( A_or : in  STD_LOGIC;
           B_or : in  STD_LOGIC;
           out_or : out  STD_LOGIC);
end component;
signal Internal_signal0,Internal_signal1,Internal_signal2: STD_LOGIC;
begin
instanceHA1 : HA port map(in1=>I1,in2=>I2,out1=>Internal_signal0,out2=>Internal_signal1);
instanceHA2 : HA port map(in1=>Internal_signal0,in2=>Cin,out1=>S,out2=>Internal_signal2);
instandeOr  : or_gate port map(A_or=>Internal_signal1, B_or=>Internal_signal2,out_or=>Cout);


end Behavioral;


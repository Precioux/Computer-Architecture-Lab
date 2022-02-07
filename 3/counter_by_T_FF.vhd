----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:24:44 10/24/2021 
-- Design Name: 
-- Module Name:    counter_by_T_FF - Behavioral 
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

entity counter_by_T_FF is
    Port ( clock : in  STD_LOGIC;
           rst : in  STD_LOGIC;
			  control : in STD_LOgIC;
           Q : inout  STD_LOGIC_VECTOR (3 downto 0));
end counter_by_T_FF;



architecture Behavioral of counter_by_T_FF is
component T_FF_rstAsynchronous is
 Port ( T : in  STD_LOGIC;
			  clock : in STD_LOGIC;
           Q : out  STD_LOGIC;
           Qb : out  STD_LOGIC;
           r : in  STD_LOGIC);
end component;

signal  S0, S1, S2 , z0,z1,z2,z3,control1 : STD_LOGIC;


begin
S0 <= z0;
S1 <= z0 and z1 ;
S2 <= z0 and z1 and z2;

 instance_0 : T_FF_rstAsynchronous port map ( T =>control1, clock => clock , Q => z0, r => rst);
 instance_1 : T_FF_rstAsynchronous port map ( T =>S0, clock => clock , Q => z1, r => rst);
 instance_2 : T_FF_rstAsynchronous port map ( T =>S1, clock => clock , Q => z2, r => rst);
 instance_3 : T_FF_rstAsynchronous port map ( T =>S2, clock => clock , Q => z3, r => rst);
 
 
 process(clock,rst)
 begin
 if (rst = '1') then
  Q <= "0000";
  elsif(control ='1') then -- don't change
  control1<= '0';
  elsif( clock'event and clock = '1') then 
  control1<= '1';
	Q(0) <= z0;
	Q(1) <= z1;
	Q(2) <= z2;
	Q(3) <= z3;
  
  end if;
  
  
end process;

end Behavioral;


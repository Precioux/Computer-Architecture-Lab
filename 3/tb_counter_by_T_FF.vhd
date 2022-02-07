--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:04:23 10/24/2021
-- Design Name:   
-- Module Name:   C:/Users/office/Desktop/dars/trm5/computer organization and design/lab/3/lab-3/lab-3/tb_counter_by_T_FF.vhd
-- Project Name:  lab-3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter_by_T_FF
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_counter_by_T_FF IS
END tb_counter_by_T_FF;
 
ARCHITECTURE behavior OF tb_counter_by_T_FF IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter_by_T_FF
    PORT(
         clock : IN  std_logic;
         rst : IN  std_logic;
			control : in STD_LOgIC;
         Q : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal rst : std_logic := '0';
	signal control :STD_LOgIC := '0';

	--BiDirs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter_by_T_FF PORT MAP (
          clock => clock,
          rst => rst,
			 control=>control,
          Q => Q
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for clock_period*10;
   rst <= '1' ,'0' after 50 ns;
	control <= '0','1' after 200 ns , '0' after 250 ns;
      -- insert stimulus here 

      wait;
   end process;

END;

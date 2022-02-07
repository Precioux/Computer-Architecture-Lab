--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:11:13 10/24/2021
-- Design Name:   
-- Module Name:   C:/Users/office/Desktop/dars/trm5/computer organization and design/lab/3/lab-3/lab-3/tb_T_FF_rstAsynchronous.vhd
-- Project Name:  lab-3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: T_FF_rstAsynchronous
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
 
ENTITY tb_T_FF_rstAsynchronous IS
END tb_T_FF_rstAsynchronous;
 
ARCHITECTURE behavior OF tb_T_FF_rstAsynchronous IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT T_FF_rstAsynchronous
    PORT(
         T : IN  std_logic;
         clock : IN  std_logic;
         Q : OUT  std_logic;
         Qb : OUT  std_logic;
         r : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal T : std_logic := '0';
   signal clock : std_logic := '0';
   signal r : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qb : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: T_FF_rstAsynchronous PORT MAP (
          T => T,
          clock => clock,
          Q => Q,
          Qb => Qb,
          r => r
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
      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for clock_period*10;

      -- insert stimulus here 
			r<= '1', '0' after 50 ns;
		T<= '0' ,'1' after 150 ns ,'0' after 250 ns;

      wait;
   end process;

END;

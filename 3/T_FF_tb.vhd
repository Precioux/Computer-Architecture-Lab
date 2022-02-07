--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:45:21 10/24/2021
-- Design Name:   
-- Module Name:   C:/Users/M.novin/Desktop/CA Labs/lab-3/lab-3/T_FF_tb.vhd
-- Project Name:  lab-3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: T_FF
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
 
ENTITY T_FF_tb IS
END T_FF_tb;
 
ARCHITECTURE behavior OF T_FF_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT T_FF
    PORT(
         T : IN  std_logic;
         CLK : IN  std_logic;
         Q : OUT  std_logic;
         QB : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal T : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QB : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: T_FF PORT MAP (
          T => T,
          CLK => CLK,
          Q => Q,
          QB => QB
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		T <= '0';
      wait for CLK_period*10;
		T <= '1';
		wait for CLK_period*10;
		T <= '0';
		wait for CLK_period*10;
		T <= '1';
		wait for CLK_period*10;
      -- insert stimulus here 


      wait;
   end process;

END;

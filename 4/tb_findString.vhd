--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:46:49 11/01/2021
-- Design Name:   
-- Module Name:   C:/Users/office/Desktop/New folder (2)/lab-4/lab-4/tb_findString.vhd
-- Project Name:  lab-4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: P2_findString
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
 
ENTITY tb_findString IS
END tb_findString;
 
ARCHITECTURE behavior OF tb_findString IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT P2_findString
    PORT(
         input : IN  std_logic;
         output : OUT  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal output : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: P2_findString PORT MAP (
          input => input,
          output => output,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for clk_period*10;
      input <= '0';
      wait for 100 ns;	
		input <= '1';
      wait for clk_period*10;
		input <= '0';
		wait for clk_period*10;
		input <= '1';
		wait for clk_period*10;
		input <= '0';
		wait for clk_period*10;
		input <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;

--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:30:56 10/15/2021
-- Design Name:   
-- Module Name:   D:/Test_Ise/lab2/comparator_2bit_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comparator_2bit
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
 
ENTITY comparator_2bit_tb IS
END comparator_2bit_tb;
 
ARCHITECTURE behavior OF comparator_2bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comparator_2bit
    PORT(
         a1 : IN  std_logic;
         a0 : IN  std_logic;
         b1 : IN  std_logic;
         b0 : IN  std_logic;
         output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a1 : std_logic := '0';
   signal a0 : std_logic := '0';
   signal b1 : std_logic := '0';
   signal b0 : std_logic := '0';

 	--Outputs
   signal output : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparator_2bit PORT MAP (
          a1 => a1,
          a0 => a0,
          b1 => b1,
          b0 => b0,
          output => output
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for <clock>_period*10;

      -- insert stimulus here 
		
		a1<= '1' ,'0' after 100 ns;
		a0<= '1' ,'0' after 150 ns;
		b1<= '0' ,'1' after 200 ns;
		b0<= '0' ,'1' after 250 ns;
		
		
		
		
		

      wait;
   end process;

END;

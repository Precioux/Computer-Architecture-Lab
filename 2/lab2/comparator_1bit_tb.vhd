--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:05:27 10/15/2021
-- Design Name:   
-- Module Name:   D:/Test_Ise/lab2/comparator_1bit_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comparator_1bit
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
 
ENTITY comparator_1bit_tb IS
END comparator_1bit_tb;
 
ARCHITECTURE behavior OF comparator_1bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comparator_1bit
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         E : OUT  std_logic;
         G : OUT  std_logic;
         S : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal E : std_logic;
   signal G : std_logic;
   signal S : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparator_1bit PORT MAP (
          A => A,
          B => B,
          E => E,
          G => G,
          S => S
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for <clock>_period*10;

      -- insert stimulus here 
		
		A <= '0', '1' after 50 ns , '0' after 100 ns ;
		B <=  '0', '1' after 150 ns , '0' after 200 ns ;

      wait;
   end process;

END;

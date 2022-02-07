--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:16:36 10/08/2021
-- Design Name:   
-- Module Name:   C:/Users/Lenovo/Desktop/university/Term 4/Computer Architecture/Lab/New folder/az_1/or_gate_tb.vhd
-- Project Name:  az_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: or_gate
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
 
ENTITY or_gate_tb IS
END or_gate_tb;
 
ARCHITECTURE behavior OF or_gate_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT or_gate
    PORT(
         A_or : IN  std_logic;
         B_or : IN  std_logic;
         out_or : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A_or : std_logic := '0';
   signal B_or : std_logic := '0';

 	--Outputs
   signal out_or : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 --  constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: or_gate PORT MAP (
          A_or => A_or,
          B_or => B_or,
          out_or => out_or
        );

--   -- Clock process definitions
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
    --  wait for 100 ns;	

     -- wait for <clock>_period*10;

      -- insert stimulus here 
 A_or <='0','1' after 50ns;
 B_or <='0','1' after 100ns;
      wait;
   end process;

END;

--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:41:59 10/08/2021
-- Design Name:   
-- Module Name:   C:/Users/Lenovo/Desktop/university/Term 4/Computer Architecture/Lab/New folder/az_1/HA_tb.vhd
-- Project Name:  az_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: HA
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
 
ENTITY HA_tb IS
END HA_tb;
 
ARCHITECTURE behavior OF HA_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT HA
    PORT(
         in1 : IN  std_logic;
         in2 : IN  std_logic;
         out1 : OUT  std_logic;
         out2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in1 : std_logic := '0';
   signal in2 : std_logic := '0';

 	--Outputs
   signal out1 : std_logic;
   signal out2 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: HA PORT MAP (
          in1 => in1,
          in2 => in2,
          out1 => out1,
          out2 => out2
        );
--
--   -- Clock process definitions
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
 in1 <='0','1' after 50ns;
 in2 <='0','1' after 100ns;
      wait;
   end process;

END;

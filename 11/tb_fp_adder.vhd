--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:46:03 01/04/2022
-- Design Name:   
-- Module Name:   D:/Test_Ise/Az11/tb_fp_adder.vhd
-- Project Name:  Az11
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: float_add
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
 
ENTITY tb_fp_adder IS
END tb_fp_adder;
 
ARCHITECTURE behavior OF tb_fp_adder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT float_add
    PORT(
        );
    END COMPONENT;
    
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 --  constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: float_add PORT MAP (
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
--
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.

      -- insert stimulus here 
		
		
		
		 a <= "01000000111000001001100010100000","01000000101000000000000000000000"after 100 ns;
  b <= "01001000100011000100001010101100", "00111111100000000000000000000000" after 150 ns;
     -- wait for 100 ns; 
  
  --a <= "01000000101000000000000000000000";
  --b <= "00111111100000000000000000000000";
      --wait for <clock>_period*10;

    wait;
   end process;

END;

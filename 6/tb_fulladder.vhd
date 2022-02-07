--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:09:05 11/15/2021
-- Design Name:   
-- Module Name:   D:/Test_Ise/lab6/tb_fulladder.vhd
-- Project Name:  lab6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fulladder
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
 
ENTITY tb_fulladder IS
END tb_fulladder;
 
ARCHITECTURE behavior OF tb_fulladder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fulladder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         Cout : OUT  std_logic;
         Sum : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal Cout : std_logic;
   signal Sum : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fulladder PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Cout => Cout,
          Sum => Sum
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
--      wait for <clock>_period*10;

A <= '0','1' after 50 ns;
B <= '0' , '1' after 100 ns;
Cin <= '0', '1' after 25 ns, '0' after 50 ns , '1' after 75 ns , '0' after 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;

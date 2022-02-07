--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:15:05 11/27/2021
-- Design Name:   
-- Module Name:   D:/Test_Ise/lab7/tb_multiplyCarrySaveAdder.vhd
-- Project Name:  lab7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multiplyCarrySaveAdder
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
 
ENTITY tb_multiplyCarrySaveAdder IS
END tb_multiplyCarrySaveAdder;
 
ARCHITECTURE behavior OF tb_multiplyCarrySaveAdder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multiplyCarrySaveAdder
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(4 downto 0);
         p : OUT  std_logic_vector(8 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal p : std_logic_vector(8 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiplyCarrySaveAdder PORT MAP (
          a => a,
          b => b,
          p => p
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
 a <= "0010" , "0111" after 50 ns , "0101" after 100 ns, "1111" after 150 ns;
 b <= "00110" ,"10001" after 80 ns, "00111" after 130 ns , "01101" after 200 ns,"11111" after 250 ns;
 
      wait;
   end process;

END;

--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:30:19 12/13/2021
-- Design Name:   
-- Module Name:   D:/Test_Ise/lab10/tb_Adder_8bits.vhd
-- Project Name:  lab10
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Adder_8bits
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
 
ENTITY tb_Adder_8bits IS
END tb_Adder_8bits;
 
ARCHITECTURE behavior OF tb_Adder_8bits IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Adder_8bits
    PORT(
         x : IN  std_logic_vector(7 downto 0);
         y : IN  std_logic_vector(7 downto 0);
         cin : IN  std_logic;
         sum : OUT  std_logic_vector(7 downto 0);
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(7 downto 0) := (others => '0');
   signal y : std_logic_vector(7 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal sum : std_logic_vector(7 downto 0);
   signal c : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Adder_8bits PORT MAP (
          x => x,
          y => y,
          cin => cin,
          sum => sum,
          c => c
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
		cin <='0';
		x <= "00011011","00001111" after 50 ns;
		y <= "00001111", "00001010" after 100 ns;
      wait;
   end process;

END;

--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:29:25 11/15/2021
-- Design Name:   
-- Module Name:   C:/Users/M.novin/Desktop/CA Labs/lab-6/CSA_tb.vhd
-- Project Name:  lab-6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CSA
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
 
ENTITY CSA_tb IS
END CSA_tb;
 
ARCHITECTURE behavior OF CSA_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CSA
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C : IN  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic;
         Sum : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Cout : std_logic;
   signal Sum : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CSA PORT MAP (
          A => A,
          B => B,
          C => C,
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
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		A <= "1100";
		B <= "1101";
		C <= "1110";
		wait for 100 ns;
		A <= "1111";
		B <= "1000";
		C <= "1001";
		wait for 100 ns;
		A <= "1110";
		B <= "0101";
		C <= "0111";
		wait for 100 ns;
		A <= "0110";
		B <= "0111";
		C <= "1010";
		wait for 100 ns;
		A <= "1111";
		B <= "1010";
		C <= "1011";
		wait for 100 ns;
		A <= "0101";
		B <= "0010";
		C <= "0111";
      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

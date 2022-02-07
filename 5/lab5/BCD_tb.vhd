--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:01:03 11/06/2021
-- Design Name:   
-- Module Name:   D:/Test_Ise/lab5/BCD_tb.vhd
-- Project Name:  lab5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BCD_Adder
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
 
ENTITY BCD_tb IS
END BCD_tb;
 
ARCHITECTURE behavior OF BCD_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BCD_Adder
    PORT(
         input1 : IN  std_logic_vector(3 downto 0);
         input2 : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         Cout : INOUT  std_logic;
         Sum : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input1 : std_logic_vector(3 downto 0) := (others => '0');
   signal input2 : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

	--BiDirs
   signal Cout : std_logic;

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BCD_Adder PORT MAP (
          input1 => input1,
          input2 => input2,
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
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for <clock>_period*10;
Cin <= '0';
input1 <= "0000", "1000" after 50 ns , "1100" after 100 ns,"1001" after 150 ns;
input2 <= "0000", "0011" after 80 ns , "0001" after 160 ns, "1010" after 200 ns;

      -- insert stimulus here 

      wait;
   end process;

END;

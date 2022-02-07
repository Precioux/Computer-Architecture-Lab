--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:57:01 11/15/2021
-- Design Name:   
-- Module Name:   D:/Test_Ise/lab6/tb_carrLookaheadLogic.vhd
-- Project Name:  lab6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: carrylookahead_logic
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
 
ENTITY tb_carrLookaheadLogic IS
END tb_carrLookaheadLogic;
 
ARCHITECTURE behavior OF tb_carrLookaheadLogic IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT carrylookahead_logic
    PORT(
         input1 : IN  std_logic_vector(3 downto 0);
         input2 : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         Cout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input1 : std_logic_vector(3 downto 0) := (others => '0');
   signal input2 : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal Cout : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: carrylookahead_logic PORT MAP (
          input1 => input1,
          input2 => input2,
          Cin => Cin,
          Cout => Cout
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';c
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
		Cin <= '0';
		input1 <= "0100", "0111" after 50 ns,"1010" after 100 ns,"0100"after 150 ns, "0111" after 200 ns;
		input2 <= "0011", "0110" after 50 ns,"1110" after 100 ns,"0011"after 150 ns, "0110" after 200 ns;

      wait;
   end process;

END;

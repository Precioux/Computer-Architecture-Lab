--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:59:04 10/15/2021
-- Design Name:   
-- Module Name:   D:/Test_Ise/lab2/Mux_4x1_byDecoder_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mux_4x1_byDecoder
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
 
ENTITY Mux_4x1_byDecoder_tb IS
END Mux_4x1_byDecoder_tb;
 
ARCHITECTURE behavior OF Mux_4x1_byDecoder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux_4x1_byDecoder
    PORT(
         input : IN  std_logic_vector(3 downto 0);
         sel : IN  std_logic_vector(1 downto 0);
         output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(3 downto 0) := (others => '0');
   signal sel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux_4x1_byDecoder PORT MAP (
          input => input,
          sel => sel,
          output => output
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
		
		input(0) <= '0' , '1' after 50 ns;
		input(1) <= '0' , '1' after 60 ns;
		input(2) <= '1' , '0' after 50 ns;
		input(3) <= '1' , '0' after 80 ns;
		
		sel(0) <= '0' , '1' after 70 ns ;
		sel(1) <= '0' , '1' after 180 ns;
		

      wait;
   end process;

END;

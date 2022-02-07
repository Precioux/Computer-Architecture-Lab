--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:52:20 12/13/2021
-- Design Name:   
-- Module Name:   D:/Test_Ise/lab10/ALU_tb.vhd
-- Project Name:  lab10
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY ALU_tb IS
END ALU_tb;
 
ARCHITECTURE behavior OF ALU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         ALU_Sel : IN  std_logic_vector(2 downto 0);
         ALU_Out : OUT  std_logic_vector(7 downto 0);
         c : OUT  std_logic;
         z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal ALU_Sel : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal ALU_Out : std_logic_vector(7 downto 0);
   signal c : std_logic;
   signal z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
          B => B,
          ALU_Sel => ALU_Sel,
          ALU_Out => ALU_Out,
          c => c,
          z => z
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
		
		A<= "00000110";
		B <= "00000010";
		ALU_Sel <= "111" , "000" after 50 ns , "010" after 100 ns, "001" after 150 ns, "101" after 200 ns;

      wait;
   end process;

END;

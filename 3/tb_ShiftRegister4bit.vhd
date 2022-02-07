--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:56:13 10/24/2021
-- Design Name:   
-- Module Name:   C:/Users/office/Desktop/dars/trm5/computer organization and design/lab/3/lab-3/lab-3/tb_ShiftRegister4bit.vhd
-- Project Name:  lab-3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ShiftRegister4bit
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
 
ENTITY tb_ShiftRegister4bit IS
END tb_ShiftRegister4bit;
 
ARCHITECTURE behavior OF tb_ShiftRegister4bit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ShiftRegister4bit
    PORT(
         clk : IN  std_logic;
         Output : OUT  std_logic;
         Input : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal Input : std_logic := '0';

 	--Outputs
   signal Output : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ShiftRegister4bit PORT MAP (
          clk => clk,
          Output => Output,
          Input => Input
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for clk_period*10;

Input <= '0' ,'1' after 50 ns , '0' after 100 ns,'1' after 150 ns ,'0' after 200 ns;
      -- insert stimulus here 

      wait;
   end process;

END;

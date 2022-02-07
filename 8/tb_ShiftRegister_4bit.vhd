--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:44:32 12/07/2021
-- Design Name:   
-- Module Name:   C:/Users/M.novin/Desktop/CA Labs/lab-8/tb_ShiftRegister_4bit.vhd
-- Project Name:  lab-8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ShiftRegister_4bit
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
 
ENTITY tb_ShiftRegister_4bit IS
END tb_ShiftRegister_4bit;
 
ARCHITECTURE behavior OF tb_ShiftRegister_4bit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ShiftRegister_4bit
    PORT(
         P : IN  std_logic_vector(3 downto 0);
         Output : OUT  std_logic;
         Load_Shift : IN  std_logic;
         Clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal P : std_logic_vector(3 downto 0) := (others => '0');
   signal Load_Shift : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Output : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ShiftRegister_4bit PORT MAP (
          P => P,
          Output => Output,
          Load_Shift => Load_Shift,
          Clk => Clk
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		P <="0101";
		Load_Shift <= '1';
      wait for 100 ns;	
		P <="0101";
		Load_Shift <= '0';
      wait for 100 ns;	
		P <="1010";
		Load_Shift <= '1';
      wait for 100 ns;	
		P <="1010";
		Load_Shift <= '0';
      wait for 100 ns;	
		P <="1110";
		Load_Shift <= '1';
      wait for 100 ns;	
		P <="1110";
		Load_Shift <= '0';
      wait for 100 ns;	      
		
		wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:04:48 12/07/2021
-- Design Name:   
-- Module Name:   C:/Users/M.novin/Desktop/CA Labs/lab-8/tb_DFF.vhd
-- Project Name:  lab-8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DFF
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
 
ENTITY tb_DFF IS
END tb_DFF;
 
ARCHITECTURE behavior OF tb_DFF IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DFF
    PORT(
         D : IN  std_logic;
         Q : OUT  std_logic;
         Clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DFF PORT MAP (
          D => D,
          Q => Q,
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
		D <='0';
      wait for 100 ns;	
		D <='1';
      wait for 100 ns;	
		D <='0';
      wait for 100 ns;	
		D <='1';
    		
      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

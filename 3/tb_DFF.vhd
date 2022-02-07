--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:48:24 10/24/2021
-- Design Name:   
-- Module Name:   C:/Users/office/Desktop/dars/trm5/computer organization and design/lab/3/lab-3/lab-3/tb_DFF.vhd
-- Project Name:  lab-3
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
         CLOCK : IN  std_logic;
         D : IN  std_logic;
         sync_reset : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLOCK : std_logic := '0';
   signal D : std_logic := '0';
   signal sync_reset : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   constant CLOCK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DFF PORT MAP (
          CLOCK => CLOCK,
          D => D,
          sync_reset => sync_reset,
          Q => Q
        );

   -- Clock process definitions
   CLOCK_process :process
   begin
		CLOCK <= '0';
		wait for CLOCK_period/2;
		CLOCK <= '1';
		wait for CLOCK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for CLOCK_period*10;

      -- insert stimulus here 
 sync_reset<= '1' , '0' after 100 ns;
 D <= '0' , '1' after 80 ns, '0' after 150 ns , '1' after 200 ns;
 


      wait;
   end process;

END;

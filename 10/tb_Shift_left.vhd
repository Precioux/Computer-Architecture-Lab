--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:54:35 12/13/2021
-- Design Name:   
-- Module Name:   C:/Users/M.novin/Desktop/CA Labs/lab_10/tb_Shift_left.vhd
-- Project Name:  lab_10
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Shift_left
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
 
ENTITY tb_Shift_left IS
END tb_Shift_left;
 
ARCHITECTURE behavior OF tb_Shift_left IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Shift_left
    PORT(
         input : IN  std_logic_vector(7 downto 0);
			--clk   : IN std_logic;
         output : OUT  std_logic_vector(7 downto 0);
        -- cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(7 downto 0) := (others => '0');
--	signal clk : std_logic := '0';
   

 	--Outputs
   signal cout : std_logic;
	signal output : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant clk_period : time := 10 ns;
 
BEGIN
 
	 Instantiate the Unit Under Test (UUT)
   uut: Shift_left PORT MAP (
         input => input,
        output => output,
         cout => cout
      );

   -- Clock process definitions
--   clk_process :process
--   begin
--		clk <= '0';
--		wait for clk_period/2;
--		clk <= '1';
--		wait for clk_period/2;
--   end process;
-- 

   -- Stimulus process
  -- stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		input <= "01100001", "01111111" after 50 ns;
     -- wait for 100 ns;	
		--input <= "01111111";
     -- wait for 100 ns;	

     -- wait for clk_period*10;

      -- insert stimulus here 

    --  wait;
  -- end process;

END;



-------------------------------------------------------------------------------- -- Company:  -- Engineer: -- -- Create Date:   23:04:47 12/07/2021 -- Design Name:    -- Module Name:   E:/code/Workshop9/az88/tb_rom16x8.vhd -- Project Name:  az88 -- Target Device:   -- Tool versions:   -- Description:    --  -- VHDL Test Bench Created by ISE for module: ROM16x8 --  -- Dependencies: --  -- Revision: -- Revision 0.01 - File Created -- Additional Comments: -- -- Notes:  -- This testbench has been automatically generated using types std_logic and -- std_logic_vector for the ports of the unit under test.  Xilinx recommends -- that these types always be used for the top-level I/O of a design in order -- to guarantee that the testbench will bind correctly to the post-implementation  -- simulation model. -------------------------------------------------------------------------------- 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;  
 -- Uncomment the following library declaration if using
 -- arithmetic functions with Signed or Unsigned values 
USE ieee.numeric_std.ALL;   

ENTITY ROM16x8_tb IS END ROM16x8_tb;  
 ARCHITECTURE behavior OF ROM16x8_tb IS       
 -- Component Declaration for the Unit Under Test (UUT)       

COMPONENT ROM16x8     PORT(          
addr : IN  std_logic_vector(3 downto 0);          
data_out : OUT  std_logic_vector(7 downto 0)      
   );     
END COMPONENT;         

 --Inputs    
signal addr : std_logic_vector(3 downto 0) := (others => '0');    
--Outputs   
 signal data_out : std_logic_vector(7 downto 0);  
  -- No clocks detected in port list. Replace <clock> below with  
   -- appropriate port name 
     BEGIN 
   -- Instantiate the Unit Under Test (UUT)  
  uut: ROM16x8 PORT MAP (          
 addr => addr,           
data_out => data_out   
      );    
 -- Clock process definitions 
   -- Stimulus process  
  stim_proc: process  
  begin       
  -- hold reset state for 100 ns.    
   wait for 100 ns;   
     addr<= "0001"; 
  wait for 100 ns;     
   addr <= "0101";   
wait for 100 ns;     
   addr <= "1001";  
 wait for 100 ns;       
 addr <= "1100";       
    wait;   
 end process; 
 END;

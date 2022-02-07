

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY manager_tb IS
END manager_tb;
 
ARCHITECTURE behavior OF manager_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT manager
      Port ( clk : in  STD_LOGIC;
           ROM_addr : in  std_logic;
           ALU_sel : in  STD_LOGIC;
           REG2_input : in  STD_LOGIC_VECTOR (7 downto 0);
           RESET : in  STD_LOGIC;
           REG_Out : out  STD_LOGIC_VECTOR (7 downto 0));
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal ROM_addr: std_logic := '0';
   signal ALU_sel: std_logic := '0';
   signal REG2_input : std_logic_vector(7downto 0) := (others => '0');
   signal RESET:std_logic := '0';
   

 	--Outputs
   signal REG_Out : std_logic_vector(7downto 0) := (others => '0');

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: manager PORT MAP (
          clk => clk,
          ROM_addr=>ROM_addr,
          ALU_sel=>ALU_sel,
          REG2_input=>REG2_input,
          RESET=>RESET,
         REG_Out=>REG_Out
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
ROM_addr<='0';
ALU_sel<='1';
REG2_input<="00000001";
RESET<='0';

      -- insert stimulus here 

      wait;
   end process;

END;

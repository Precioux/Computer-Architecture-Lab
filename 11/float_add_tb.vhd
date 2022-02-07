
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY float_add_tb IS
END float_add_tb;
 
ARCHITECTURE behavior OF float_add_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT float_add
    PORT(
         a : IN  std_logic_vector(31 downto 0);
         b : IN  std_logic_vector(31 downto 0);
         add : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(31 downto 0) := (others => '0');
   signal b : std_logic_vector(31 downto 0) := (others => '0');

  --Outputs
   signal add : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
 -- Instantiate the Unit Under Test (UUT)
   uut: float_add PORT MAP (
          a => a,
          b => b,
          add => add
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--  <clock> <= '0';
--  wait for <clock>_period/2;
--  <clock> <= '1';
--  wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin  
   --wait for 50 ns;
      -- hold reset state for 100 ns.
  a <= "01000000111000001001100010100000","01000000101000000000000000000000" after 100 ns;
  b <= "01001000100011000100001010101100", "00111111100000000000000000000000" after 150 ns ;
    --  wait for 100 ns; 
  
  --a <= "01000000101000000000000000000000";
 -- b <= "00111111100000000000000000000000";
      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
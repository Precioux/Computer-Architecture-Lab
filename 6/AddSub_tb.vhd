
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AddSub_tb IS
END AddSub_tb;

ARCHITECTURE behavior OF AddSub_tb IS

COMPONENT AddSub is
   port( Operation: in std_logic;
          A,B  : in std_logic_vector(3 downto 0);
          S : out std_logic_vector(3 downto 0);
          Cout, overflow : out std_logic);
END COMPONENT;

--Inputs
signal A : std_logic_vector(3 downto 0) := (others => '0');
signal B : std_logic_vector(3 downto 0) := (others => '0');
signal Operation : std_logic := '0';

--Outputs
signal S : std_logic_vector(3 downto 0);
signal overflow : std_logic;
signal Cout : std_logic;

BEGIN

--Instantiate the Unit Under Test (UUT)
uut: AddSub PORT MAP (
A => A,
B => B,
Operation => Operation,
s => s,
Cout =>Cout,
overflow=> overflow
);

--? Stimulus process
stim_proc: process
begin
wait for 50 ns;
operation <='0';
wait for 100 ns;
A <= "0110";
B <= "1100";

wait for 100 ns;
A <= "1111";
B <= "1100";

wait for 100 ns;
A <= "0110";
B <= "0111";

wait for 100 ns;
A <= "0110";
B <= "1110";

wait for 100 ns;
A <= "1111";
B <= "1111";
wait for 50 ns;

operation <='1';
wait for 100 ns;
A <= "0110";
B <= "1100";

wait for 100 ns;
A <= "1111";
B <= "1100";

wait for 100 ns;
A <= "0110";
B <= "0111";

wait for 100 ns;
A <= "0110";
B <= "1110";

wait for 100 ns;
A <= "1111";
B <= "1111";

wait;

end process;

END;
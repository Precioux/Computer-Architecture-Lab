LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY RippleCarryAdder_tb IS
END RippleCarryAdder_tb;

ARCHITECTURE behavior OF RippleCarryAdder_tb IS

COMPONENT RippleCarryAdder
PORT(
A : IN std_logic_vector(3 downto 0);
B : IN std_logic_vector(3 downto 0);
c0 : IN std_logic;
s : OUT std_logic_vector(3 downto 0);
c4 : OUT std_logic
);
END COMPONENT;

--Inputs
signal A : std_logic_vector(3 downto 0) := (others => '0');
signal B : std_logic_vector(3 downto 0) := (others => '0');
signal c0 : std_logic := '0';

--Outputs
signal s : std_logic_vector(3 downto 0);
signal c4 : std_logic;

BEGIN

--Instantiate the Unit Under Test (UUT)
uut: RippleCarryAdder PORT MAP (
A => A,
B => B,
c0 => c0,
s => s,
c4 =>c4
);

--? Stimulus process
stim_proc: process
begin
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

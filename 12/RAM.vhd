
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RAM128x8 is
	port(
		clk: in std_logic;
		arst: in std_logic;
		wr: in std_logic;
		rd: in std_logic;
		address: in std_logic_vector(6 downto 0);
		data_in: in std_logic_vector(7 downto 0);
		data_out: out std_logic_vector(7 downto 0)
	);
end RAM128x8;

architecture Behavioral of RAM128x8 is
	type memory is array(0 to 127) of std_logic_vector(7 downto 0);
	signal ram: memory;
	signal addr: integer range 0 to 127;
begin
	addr <= to_integer(unsigned(address));
	CMB: process(clk, arst)
	begin
		if(arst'event and arst = '0') then
			for i in 0 to 127 loop
				ram(i) <= std_logic_vector(to_unsigned(i, 8));
			end loop;
		elsif(clk'event and clk = '1') then
			if (wr'event and wr = '1') then
				ram(addr) <= data_in;
			end if;
			if(rd'event and rd = '1') then
				data_out <= ram(addr);
			end if;
			
		end if;
	end process;

end Behavioral;

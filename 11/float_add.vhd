library IEEE;
        use IEEE.std_logic_1164.all;
        use IEEE.numeric_std.all;
       
entity float_add is
    port (
        a   : in std_logic_vector(31 downto 0);
        b   : in std_logic_vector(31 downto 0);
        add : out std_logic_vector(31 downto 0)
    );
end float_add;

architecture Behavioral of float_add is

begin

    process (a, b)
        variable avar                : std_logic_vector(31 downto 0):= (others => '0');
        variable bvar                : std_logic_vector(31 downto 0):= (others => '0');
        variable addvar              : std_logic_vector(31 downto 0):= (others => '0');
        variable tempadd             : std_logic_vector(23 downto 0):= (others => '0');
        variable exponent_difference : integer;
         variable expA: integer;
         variable expB : integer;
begin 
    --set a and b
     avar:=a;
     bvar:=b;
        -- check if a or b equals zero
        if (to_integer(unsigned(a)) = 0 ) then
           addvar := bvar;
      elsif (to_integer(unsigned(bvar)) = 0) then
           addvar := avar;
      end if;
        
           

            -- shifting smaller exp to right exponent_difference times
        exponent_difference := to_integer(unsigned(avar(30 downto 23))) - to_integer(unsigned(bvar(30 downto 23)));
            if (exponent_difference >= 0) then
                addvar(30 downto 23) := avar(30 downto 23);
                bvar(22 downto 0)    := to_stdlogicvector(to_bitvector(bvar(22 downto 0)) srl exponent_difference);
            else
                addvar(30 downto 23) := bvar(30 downto 23);
                avar(22 downto 0)    := to_stdlogicvector(to_bitvector(avar(22 downto 0)) srl (-1 * exponent_difference));

            end if;

            -- adding the fraction
                        addvar(31) := '0';
                    tempadd := std_logic_vector(unsigned('1' & avar(22 downto 0)) + unsigned('1' & bvar(22 downto 0)));

            -- overflow
           if (tempadd(23) = '1') then
              tempadd              := to_stdlogicvector(to_bitvector(tempadd) sll 1);
               addvar(30 downto 23) := std_logic_vector(unsigned(avar(30 downto 23)) + 1);

           end if;

            -- set fraction and sign of sub variable
            addvar(22 downto 0) := std_logic_vector(tempadd(22 downto 0));

            -- normalizing
            while (addvar(22) = '1') loop
                addvar(22 downto 0)  := to_stdlogicvector(to_bitvector(addvar(22 downto 0)) sll 1);
                addvar(30 downto 23) := std_logic_vector(unsigned(addvar(30 downto 23)) + 1);
            end loop;

        -- set output
        add <= addvar;
    end process;

end Behavioral;
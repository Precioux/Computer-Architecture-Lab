library ieee;
use ieee.std_logic_1164.all;

entity Multiplier4x5 is 
    port (
        x: in  std_logic_vector (4 downto 0);
        y: in  std_logic_vector (3 downto 0);
        p: out std_logic_vector (8 downto 0)
    );
end entity Multiplier4x5;

architecture behavorial of Multiplier4x5 is
    component Ripple_Adder
        port ( 
            A:      in  std_logic_vector (4 downto 0);
            B:      in  std_logic_vector (4 downto 0);
            Cin:    in  std_logic;
            S:      out std_logic_vector (4 downto 0);
           Cout:    out std_logic
        );
    end component;
 signal g :  std_logic_vector(4 downto 0);
signal d :  std_logic_vector(4 downto 0);
signal j :  std_logic_vector(4 downto 0);
 signal h :  std_logic_vector(4 downto 0);
signal k :  std_logic_vector(4 downto 0);
 signal t: std_logic_vector(4 downto 0);
signal co:std_logic_vector(2 downto 0);

signal output1 : std_logic_vector(4 downto 0);
signal output2 : std_logic_vector(4 downto 0);
signal output3 : std_logic_vector(4 downto 0);

begin 
 p(0)<=y(0) and x(0);
 g(0)<=y(0) and x(1);
 g(1)<=y(0) and x(2);
 g(2)<=y(0) and x(3);
 g(3)<=y(0) and x(4);
  g(4)<='0';
 k(0)<=y(1) and x(0);
 k(1)<=y(1) and x(1);
 k(2)<=y(1) and x(2);
 k(3)<=y(1) and x(3);
 k(4)<=y(1) and x(4);
 RCA1 : Ripple_Adder port map(g,k,'0',t,co(0));
 h(0)<=y(2) and x(0);
 h(1)<=y(2) and x(1);
 h(2)<=y(2) and x(2);
 h(3)<=y(2) and x(3);
 h(4)<=y(2) and x(4);
 p(1)<=t(0);
 
 output1(4) <= co(0);
 output1(3) <=t(4);
 output1(2) <=t(3);
 output1(1) <= t(2);
 output1(0) <=t(1);
 RCA2 : Ripple_Adder port map(output1,h,'0',j,co(1));
p(2)<=j(0);
d(0)<=y(3) and x(0);
d(1)<=y(3) and x(1);
d(2)<=y(3) and x(2);
d(3)<=y(3) and x(3);
d(4)<=y(3) and x(4);


output2(4) <= co(1);
output2(3) <=j(4);
output2(2) <=j(3);
output2(1) <=j(2);
output2(0) <=j(1);
RCA3 : Ripple_Adder port map(output2,d,'0',output3,p(8));

p(7) <=output3(4);
p(6) <=output3(3);
p(5) <=output3(2);
p(4) <=output3(1);
p(3) <=output3(0);





end architecture behavorial;
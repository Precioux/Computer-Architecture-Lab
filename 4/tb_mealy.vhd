library ieee;
use ieee.std_logic_1164.all;

entity MealyMachine_tb is 
end MealyMachine_tb;

architecture tFSM of MealyMachine_tb is 
component mealy 
port(
RN,I1,CK : in std_logic;
Q: out std_logic);
end component;


signal RN,I1,CK,Q : std_logic;
constant ck_p: time :=4 ns;
begin

UUT: mealy
       port map(RN,I1,CK,Q);
process
       begin 
       CK<='1';
       wait for ck_p/2;
      CK<='0';
       wait for ck_p/2;
end process;

process 
     begin 
     RN<='1';
     wait for ck_p;
    RN<='0';
     wait for ck_p*3; 
        RN<='1';
     wait for ck_p;
       RN<='0';
wait;
end process;

process
       begin 
       I1<='0';
       wait for ck_p*2;
       I1<='1';
       wait for ck_p*3;
end process;
end;

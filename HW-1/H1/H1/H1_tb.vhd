
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity H1_tb is

end H1_tb;

architecture tb of H1_tb is
    component H1
    Port(A,B,C,D :in STD_LOGIC;
o1,o2,o3,o4,o5,o6,o7,a0,a1,a2,a3 : out STD_LOGIC);
end component;
signal A,B,C,D : std_logic;
signal o1,o2,o3,o4,o5,o6,o7,a0,a1,a2,a3 : std_logic;

       
begin

    UUT :  H1 port map (A => A, B => B, C=> C, D=>D, o1=>o1, o2=>o2, o3=>o3, o4=>o4, o5=>o5, o6=>o6, o7=>o7, a0=>a0, a1=>a1, a2=>a2, a3=>a3);
    A <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 60 ns,'1' after 80 ns, '0' after 100 ns, '1' after 120 ns,'1' after 140 ns, '0' after 160 ns, '1' after 180 ns,'1' after 200 ns, '0' after 220 ns, '1' after 240 ns,'1' after 260 ns, '0' after 280 ns, '1' after 300 ns;
    
    B <= '0', '1' after 40 ns,'0' after 80 ns, '1' after 120 ns, '0' after 160 ns,'1' after 200 ns, '0' after 240 ns, '1' after 280 ns;
    
	C <= '0','1' after 60 ns, '0' after 120 ns, '1' after 180 ns,'0' after 240 ns, '1' after 300 ns;
    
    D <= '0', '1' after 80 ns, '0' after 160 ns, '1' after 240 ns;
    
end tb;
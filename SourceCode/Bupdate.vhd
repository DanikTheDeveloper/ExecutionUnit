library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Bupdate is
    Generic ( N : natural := 64 );
    Port (
        A : in std_logic_vector(N-1 downto 0);
        B    : out std_logic_vector(6 downto 0)
    );
end entity Bupdate;

architecture Behaviour of Bupdate is
    signal updA : std_logic_vector(N-1 downto 0);

begin
B(5 downto 0) <= A(5 downto 0);
updA(N-8 downto 0) <= A(N-1 downto 7);
updA(N-1 downto N-7) <= (others => '0');
i2: ENTITY WORK.GiantOrGate generic map ( N => N )
						port map( A => updA , B => B(6));
end architecture Behaviour;
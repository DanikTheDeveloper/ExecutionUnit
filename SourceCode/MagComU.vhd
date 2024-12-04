library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MagComU is
    Generic ( N : natural := 64 );
    Port (
        A, B : in std_logic_vector(N-1 downto 0);
        ALessThanB, AEqualB    : out std_logic
    );
end entity MagComU;

architecture Behaviour of MagComU is
			signal hiLessThan, loLessThan, hiEqual, loEqual : std_logic;

begin
--    B <= A(0) and A(1) and A(2) and A(3) and A(4) and A(5) and A(6) and A(7) and A(8) and A(9) and A(10) and A(11) and A(12) and A(13) and A(14) and A(15);

RECUR:	if N > 1 generate 
i1: ENTITY WORK.MagComU generic map ( N => N/2 )
						port map( A => A(N-1 downto N/2) , B => B((N/2)-1 downto 0) , ALessThanB => hiLessThan, AEqualB => hiEqual);

i2: ENTITY WORK.MagComU generic map ( N => N/2 )
						port map( A => A((N/2)-1 downto 0) , B => B((N/2)-1 downto 0) , ALessThanB => loLessThan, AEqualB => loEqual);
						
							ALessThanB <= (hiEqual and loLessThan) or hiLessThan;
							AEqualB <= hiEqual and loEqual;
End Generate Recur;

	
STOP:	if N = 1 generate
							ALessThanB <= not A(0) and B(0);
							AEqualB <= A(0) and B(0);
End Generate Stop;

							
end architecture Behaviour;
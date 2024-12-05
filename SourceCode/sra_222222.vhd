library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sra_222222 is
    Generic ( N : natural := 64 );
    Port (
        A     : in  std_logic_vector(N-1 downto 0);
        B     : in  std_logic_vector(6 downto 0);
        Result: out std_logic_vector(N-1 downto 0)
    );
end entity sra_222222;

architecture behavioral of sra_222222 is
    signal zeros : std_logic_vector(N-1 downto 0);
begin
	zeros <= (others => A(N-1));
    process(A)
        variable temp : std_logic_vector(N-1 downto 0);
    begin
        temp := A;
        
        for i in 6 downto 0 loop
            if B(i) = '1' then
						temp := zeros((2**i)-2 downto 0) & A(N-1 downto (2**i)-1);
            end if;
        end loop;
        
        Result <= temp;
    end process;
end architecture behavioral;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity srl_222222 is
    Generic ( N : natural := 64 );
    Port (
        A     : in  std_logic_vector(N-1 downto 0);
        B     : in  std_logic_vector(6 downto 0);
        Result: out std_logic_vector(N-1 downto 0)
    );
end entity srl_222222;

architecture behavioral of srl_222222 is
    signal zeros : std_logic_vector(N-1 downto 0);
begin
	zeros <= (others => '0');
    process(A)
        variable temp : std_logic_vector(N-1 downto 0);
    begin
        -- Initialize temp to A
        temp := A;
        
        for i in 6 downto 0 loop
            if B(i) = '1' then
						temp := A(N-1-(2**i) downto 2**i) & zeros(2**i-1 downto 0);
            end if;
        end loop;
        
        Result <= temp;
    end process;
end architecture behavioral;

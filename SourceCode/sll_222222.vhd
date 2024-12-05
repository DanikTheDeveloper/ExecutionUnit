library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sll_222222 is
    Generic ( N : natural := 64 );
    Port (
        A     : in  std_logic_vector(N-1 downto 0);
        B     : in  std_logic_vector(6 downto 0);
        Result: out std_logic_vector(N-1 downto 0)
    );
end entity sll_222222;

architecture behavioral of sll_222222 is
begin
    process(A)
        variable temp : std_logic_vector(N-1 downto 0);
    begin
        -- Initialize temp to A
        temp := A;
        
        for i in 6 downto 0 loop
            if B(i) = '1' then
                -- Shift left: append zeros based on current bit position
						temp := std_logic_vector(shift_left(unsigned(A), 2**i));
            end if;
        end loop;
        
        -- After the loop, assign temp to Atemp signal
        Result <= temp;
    end process;
end architecture behavioral;

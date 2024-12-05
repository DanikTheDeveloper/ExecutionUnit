library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sll_222222_32 is
    Generic ( N : natural := 64 );
    Port (
        A     : in  std_logic_vector(N-1 downto 0);
        B     : in  std_logic_vector(6 downto 0);
        Result: out std_logic_vector(N-1 downto 0)
    );
end entity sll_222222_32;

architecture behavioral of sll_222222_32 is
    signal zeros : std_logic_vector(N-1 downto 0);
begin
    zeros <= (others => '0');

    process(A)
        variable temp : std_logic_vector(N-1 downto 0);
    begin
        -- Initialize temp to A
        temp := A;
        
        for i in 5 downto 0 loop
            if B(i) = '1' then
                -- Shift left: append zeros based on current bit position
						temp := temp(N-1-i downto 0) & zeros(N-1 downto N-i);
            end if;
        end loop;
        
        -- After the loop, assign temp to Atemp signal
        Result <= zeros(31 downto 0) & temp(31 downto 0);
    end process;
end architecture behavioral;

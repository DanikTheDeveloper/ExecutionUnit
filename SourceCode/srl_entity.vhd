library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity srl_entity is
    Generic ( N : natural := 64 );
    Port (
        A     : in  std_logic_vector(N-1 downto 0);
        B     : in  std_logic_vector(6 downto 0);
        Result: out std_logic_vector(N-1 downto 0)
    );
end entity srl_entity;

architecture behavioral of srl_entity is
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
                -- Shift left: append zeros based on current bit position
						temp := zeros(N-1 downto N-i) & temp(N-1 downto i);
            end if;
        end loop;
        
        -- After the loop, assign temp to Atemp signal
        Result <= temp;
    end process;
end architecture behavioral;

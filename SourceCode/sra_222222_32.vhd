library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sra_222222_32 is
    Generic ( N : natural := 64 );
    Port (
        A     : in  std_logic_vector(N-1 downto 0);
        B     : in  std_logic_vector(6 downto 0);
        Result: out std_logic_vector(N-1 downto 0)
    );
end entity sra_222222_32;

architecture behavioral of sra_222222_32 is
    signal zeros : std_logic_vector(N-1 downto 0);
    signal ones : std_logic_vector(N-1 downto 0);
begin
    zeros <= (others => '0');
	 ones <= (others => '1');

    process(A)
        variable temp : std_logic_vector(N-1 downto 0);
    begin
        -- Initialize temp to A
        temp := A;
        
        for i in 5 downto 0 loop
					 if B(i) = '1' and A(N-1) = '0' then
						temp := zeros(N-1 downto N-i) & temp(N-1 downto i);
					elsif B(i) = '1' and A(N-1) = '1' then
						temp := ones(N-1 downto N-i) & temp(N-1 downto i);
					end if;
        end loop;
        
        -- After the loop, assign temp to Atemp signal
        Result <= temp;
    end process;
end architecture behavioral;
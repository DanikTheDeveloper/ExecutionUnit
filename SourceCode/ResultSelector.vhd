library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ResultSelector is
    Generic ( N : natural := 64 );
    Port (
        FuncClass        : in std_logic_vector(1 downto 0);  -- Function selector
        arithmetic_result : in std_logic_vector(N-1 downto 0); -- Arithmetic result
        shift_result      : in std_logic_vector(N-1 downto 0); -- Shift result
        logic_result      : in std_logic_vector(N-1 downto 0); -- Logic result
        Y                 : out std_logic_vector(N-1 downto 0)  -- Final output
    );
end entity ResultSelector;

architecture behavioral of ResultSelector is
begin
    process(FuncClass, arithmetic_result, shift_result, logic_result)
    begin
        case FuncClass is
            when "00" | "01" => 
                Y <= arithmetic_result;
            when "10" => 
                Y <= shift_result;
            when "11" => 
                Y <= logic_result;
            when others => 
                Y <= (others => '0');  -- Default to '0' if invalid FuncClass
        end case;
    end process;
end architecture behavioral;

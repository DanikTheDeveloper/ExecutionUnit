library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FuncClass_entity is
    Generic ( N : natural := 64 );
    Port (
            AltB, AltBu, logic_result, ShiftFN3 : in std_logic_vector(N-1 downto 0);
            FuncClass : in std_logic_vector(1 downto 0);
            Result : out std_logic_vector(N-1 downto 0)
    );
end entity FuncClass_entity;

architecture behavioral of FuncClass_entity is
begin
    process(FuncClass, AltB, AltBu, logic_result, ShiftFN3)
    begin
        case FuncClass is
            when "00" => 
                Result <= AltB;
            when "01" => 
                Result <= AltBu;
            when "10" => 
                Result <= logic_result;
            when "11" => 
                Result <= ShiftFN3;
        end case;
    end process;
end architecture behavioral;

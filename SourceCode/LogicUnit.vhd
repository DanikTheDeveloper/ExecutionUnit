library ieee;
use ieee.std_logic_1164.all;

entity LogicUnit is
    Generic ( N : natural := 64 );  -- Data width
    Port (
        A : in std_logic_vector(N-1 downto 0);  -- Operand A
        B : in std_logic_vector(N-1 downto 0);  -- Operand B
        Func : in std_logic_vector(1 downto 0);  -- Logic function (00=AND, 01=OR, 10=XOR)
        Result : out std_logic_vector(N-1 downto 0)  -- Logic result
    );
end entity LogicUnit;

architecture behavioral of LogicUnit is
begin
    process(A, B, Func)
    begin
        case Func is
            -- AND operation
            when "00" => 
                Result <= A and B;  -- Bitwise AND
            -- OR operation
            when "01" => 
                Result <= A or B;   -- Bitwise OR
            -- XOR operation
            when "10" => 
                Result <= A xor B;  -- Bitwise XOR
            -- Default case (no operation or error handling)
            when others => 
                Result <= A;  -- Default case: all zeros
        end case;
    end process;
end architecture behavioral;

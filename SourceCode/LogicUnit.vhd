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
            -- LUI operation
            when "00" => 
                    Result(31 downto 0) <= A(19 downto 0) & x"000";  -- Concatenate with 12 zeros
                    Result(63 downto 32) <= (others => Result(31));  -- Sign-extend bit 31 to 63 downto 32
            -- XOR operation
            when "01" => 
                    Result <= A xor B;  -- Bitwise XOR
            -- OR operation
            when "10" =>
                    Result <= A or B;   -- Bitwise OR
                    -- AND operation
                when "11" =>
                    Result <= A and B;  -- Bitwise AND
               -- Default case (no operation or error handling)
            when others => 
                Result <= A;  -- Default case: all zeros
        end case;
    end process;
end architecture behavioral;
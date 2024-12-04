library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ShiftSelector is
    Generic ( N : natural := 64 );
    Port (
        Func   : in  std_logic_vector(1 downto 0);  -- Shift function control signal
        A      : in  std_logic_vector(N-1 downto 0); -- Input A
        sll_result : in  std_logic_vector(N-1 downto 0); -- Shift Left Logical result
        srl_result : in  std_logic_vector(N-1 downto 0); -- Shift Right Logical result
        sra_result : in  std_logic_vector(N-1 downto 0); -- Shift Right Arithmetic result
        Result  : out std_logic_vector(N-1 downto 0)    -- Final result after selection
    );
end entity ShiftSelector;

architecture behavioral of ShiftSelector is
begin
    process(A, Func, sll_result, srl_result, sra_result)
    begin
        case Func is
            when "00" => 
                -- Shift Left Logical
                Result <= sll_result;
            when "01" => 
                -- Shift Right Logical
                Result <= srl_result;
            when "10" => 
                -- Shift Right Arithmetic
                Result <= sra_result;
            when others => 
                -- No shift, just pass the input
                Result <= A;
        end case;
    end process;
end architecture behavioral;

-- FlagsLogic.vhd
library ieee;
use ieee.std_logic_1164.all;

entity FlagsLogic is
    Generic ( N : natural := 64 );
    Port ( 
        arithmetic_result, shift_result, logic_result : in std_logic_vector(N-1 downto 0); 
        Zero, AltB, AltBu : out std_logic
    );
end entity FlagsLogic;

architecture Behavioral of FlagsLogic is
    signal zeros : std_logic_vector(N-1 downto 0);
begin
    -- Define zero vector
    zeros <= (others => '0');

    -- Zero Flag Logic
    Zero <= '1' when (arithmetic_result = zeros or shift_result = zeros or logic_result = zeros) else '0';

    -- AltB Flag Logic
    AltB <= '1' when (arithmetic_result = zeros or 
                      shift_result = zeros or 
                      logic_result = zeros) else '0';

    -- AltBu Flag Logic
    AltBu <= '1' when (arithmetic_result = zeros or 
                       shift_result = zeros or 
                       logic_result = zeros) else '0';
end architecture Behavioral;

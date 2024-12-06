library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sra_222222 is
    Generic ( N : natural := 64 );
    Port (
        A     : in  std_logic_vector(N-1 downto 0);
        B     : in  std_logic_vector(6 downto 0);
        Result: out std_logic_vector(N-1 downto 0)
    );
end entity sra_222222;

architecture behavioral of sra_222222 is
    signal temp, temp1, temp2, temp3, temp4, temp5, temp6, temp7 : std_logic_vector(N-1 downto 0);
begin
    -- Define shifts explicitly based on B
    temp1(0 to N-1) <= A when B(0) = '0' else
                      std_logic_vector(shift_right(signed(A), 64));
    
    temp2(0 to N-1) <= temp1 when B(1) = '0' else
                      std_logic_vector(shift_right(signed(temp1), 32));
    
    temp4(0 to N-1) <= temp3 when B(2) = '0' else
                      std_logic_vector(shift_right(signed(temp3), 16));
    
    temp5(0 to N-1) <= temp4 when B(3) = '0' else
                      std_logic_vector(shift_right(signed(temp4), 8));
    
    temp6(0 to N-1) <= temp5 when B(4) = '0' else
                      std_logic_vector(shift_right(signed(temp5), 4));
    
    temp7(0 to N-1) <= temp6 when B(5) = '0' else
                      std_logic_vector(shift_right(signed(temp6), 2));
    
    temp(0 to N-1) <= temp7 when B(6) = '0' else
                      std_logic_vector(shift_right(signed(temp7), 1));

    Result <= temp;
end architecture behavioral;
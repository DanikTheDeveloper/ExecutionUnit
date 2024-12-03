library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

architecture adderSigned of Adder is
    signal A_unsigned, B_unsigned : unsigned(N-1 downto 0);  -- Converted inputs
    signal Sunsigned : unsigned(N downto 0);                 -- N+1 bit sum
begin
    -- Convert inputs to unsigned.
    A_unsigned <= unsigned(A);
    B_unsigned <= unsigned(B);

    -- Perform the addition with carry-in.
    Sunsigned <= ('0' & A_unsigned) + ('0' & B_unsigned) + unsigned'("0" & Cin);

    -- Assign the lower N bits to the output sum.
    S <= std_logic_vector(Sunsigned(N-1 downto 0));

    -- Assign the carry-out signal.
    Cout <= Sunsigned(N);

    -- Overflow detection for signed addition:
    Ovfl <= (A(N-1) and B(N-1) and not S(N-1)) or
            (not A(N-1) and not B(N-1) and S(N-1));
end architecture adderSigned;

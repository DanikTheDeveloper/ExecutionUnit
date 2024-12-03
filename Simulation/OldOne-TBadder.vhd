library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TBAdder is
end TBAdder;

architecture Behaviour of TBAdder is
    constant N : natural := 64;

    -- Component Declaration
    component Adder is
        Generic (N : natural := 64);
        Port (
            A, B : in std_logic_vector(N-1 downto 0);
            S    : out std_logic_vector(N-1 downto 0);
            Cin  : in std_logic;
            Cout : out std_logic;
            Ovfl : out std_logic
        );
    end component;

    -- Signals to connect with the Adder component
    signal TBA, TBB, TBS : std_logic_vector(N-1 downto 0);
    signal TBCin, TBCout, TBOvfl : std_logic;

    -- Testbench input and expected output signals
    signal A_test, B_test : std_logic_vector(N-1 downto 0) := (others => '0');
    signal Cin_test : std_logic := '0';
    signal Expected_S : std_logic_vector(N-1 downto 0) := (others => '0');
    signal Expected_Cout, Expected_Ovfl : std_logic := '0';

    -- Constants for timing
    constant PreStimTime : time := 1 ns;
    constant PostStimTime : time := 10 ns;

begin
    -- Instantiate the Device Under Test (DUT)
    DUT: Adder
        port map (
            A => TBA,
            B => TBB,
            S => TBS,
            Cin => TBCin,
            Cout => TBCout,
            Ovfl => TBOvfl
        );

    -- Test Process to Apply Vectors and Check Outputs
    process
    begin
        -- Test Vector 1: Add 0 + 0 with Cin = 0
        A_test <= (others => '0');
        B_test <= (others => '0');
        Cin_test <= '0';
        Expected_S <= (others => '0');
        Expected_Cout <= '0';
        Expected_Ovfl <= '0';
        TBA <= A_test; TBB <= B_test; TBCin <= Cin_test;
        wait for PreStimTime;
        assert (TBS = Expected_S) and (TBCout = Expected_Cout) and (TBOvfl = Expected_Ovfl)
            report "Test Vector 1 Failed" severity error;

        -- Test Vector 2: Add 1 + 1 with Cin = 0
        A_test <= (others => '1');
        B_test <= (others => '1');
        Cin_test <= '0';
        Expected_S <= (others => '0');
        Expected_Cout <= '1';
        Expected_Ovfl <= '0';
        TBA <= A_test; TBB <= B_test; TBCin <= Cin_test;
        wait for PreStimTime;
        assert (TBS = Expected_S) and (TBCout = Expected_Cout) and (TBOvfl = Expected_Ovfl)
            report "Test Vector 2 Failed" severity error;

        -- Test Vector 3: Max Value + 1 with Cin = 0
        A_test <= (others => '1');
        B_test <= (N-2 downto 0 => '0', N-1 => '1'); -- B = "000...001"
        Cin_test <= '0';
        Expected_S <= (others => '0');
        Expected_Cout <= '1';
        Expected_Ovfl <= '1';
        TBA <= A_test; TBB <= B_test; TBCin <= Cin_test;
        wait for PreStimTime;
        assert (TBS = Expected_S) and (TBCout = Expected_Cout) and (TBOvfl = Expected_Ovfl)
            report "Test Vector 3 Failed" severity error;

        -- Test Vector 4: Alternating Bits + All 1s with Cin = 1
        A_test <= (others => '0'); A_test(0) <= '1'; -- A = 000...01
        B_test <= (others => '1');
        Cin_test <= '1';
        Expected_S <= (others => '0');
        Expected_Cout <= '1';
        Expected_Ovfl <= '0';
        TBA <= A_test; TBB <= B_test; TBCin <= Cin_test;
        wait for PreStimTime;
        assert (TBS = Expected_S) and (TBCout = Expected_Cout) and (TBOvfl = Expected_Ovfl)
            report "Test Vector 4 Failed" severity error;

        -- Test Vector 5: All 1s + All 1s with Cin = 1
        A_test <= (others => '1');
        B_test <= (others => '1');
        Cin_test <= '1';
        Expected_S <= (others => '1');
        Expected_Cout <= '1';
        Expected_Ovfl <= '0';
        TBA <= A_test; TBB <= B_test; TBCin <= Cin_test;
        wait for PreStimTime;
        assert (TBS = Expected_S) and (TBCout = Expected_Cout) and (TBOvfl = Expected_Ovfl)
            report "Test Vector 5 Failed" severity error;

        -- Report success if all tests pass
        report "All Tests Completed Successfully.";
        wait;
    end process;

end Behaviour;

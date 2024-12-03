library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Shifter is
    Generic ( N : natural := 64 );
    Port (
        A     : in  std_logic_vector(N-1 downto 0);
        B     : in  std_logic_vector(N-1 downto 0);
        Func  : in  std_logic_vector(1 downto 0);
        Result: out std_logic_vector(N-1 downto 0)
    );
end entity Shifter;

architecture behavioral of Shifter is

    -- Internal signals to hold shift results
    signal sll_result, srl_result, sra_result : std_logic_vector(N-1 downto 0);
    signal updB : std_logic_vector(6 downto 0);

    component Bupdate is
        Generic ( N : natural := 64 );
        Port (
            A : in std_logic_vector(N-1 downto 0);
            B : out std_logic_vector(6 downto 0)
        );
    end component;
	 
    -- Declare components for instantiation
    component sll_entity
        Generic ( N : natural := 64 );
        Port (
            A     : in  std_logic_vector(N-1 downto 0);
            B     : in  std_logic_vector(6 downto 0);
            Result: out std_logic_vector(N-1 downto 0)
        );
    end component;

    component srl_entity
        Generic ( N : natural := 64 );
        Port (
            A     : in  std_logic_vector(N-1 downto 0);
            B     : in  std_logic_vector(6 downto 0);
            Result: out std_logic_vector(N-1 downto 0)
        );
    end component;

    component sra_entity
        Generic ( N : natural := 64 );
        Port (
            A     : in  std_logic_vector(N-1 downto 0);
            B     : in  std_logic_vector(6 downto 0);
            Result: out std_logic_vector(N-1 downto 0)
        );
    end component;

    -- Shift selector instance
    component ShiftSelector is
        Generic ( N : natural := 64 );
        Port (
            Func   : in std_logic_vector(1 downto 0);
            A      : in std_logic_vector(N-1 downto 0);
            sll_result : in std_logic_vector(N-1 downto 0);
            srl_result : in std_logic_vector(N-1 downto 0);
            sra_result : in std_logic_vector(N-1 downto 0);
            Result  : out std_logic_vector(N-1 downto 0)
        );
    end component;

begin
	
    Bupdate_inst : Bupdate
        generic map ( N => N )
        port map (
            A => B,
            B => updB
        );

    -- Instantiate the components for the different shifts
    sll_inst : sll_entity
        port map (A => A, B => updB, Result => sll_result);

    srl_inst : srl_entity
        port map (A => A, B => updB, Result => srl_result);

    sra_inst : sra_entity
        port map (A => A, B => updB, Result => sra_result);

    -- Instantiate the ShiftSelector for choosing the correct shift result
    ShiftSelector_inst : ShiftSelector
        generic map ( N => N )
        port map (
            Func => Func,
            A => A,
            sll_result => sll_result,
            srl_result => srl_result,
            sra_result => sra_result,
            Result => Result
        );

end architecture behavioral;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ExecUnit is
    Generic ( N : natural := 64 );
    Port ( 
        A, B         : in std_logic_vector(N-1 downto 0);  -- Operands
        FuncClass    : in std_logic_vector(1 downto 0);    -- Function selector
        LogicFN      : in std_logic_vector(1 downto 0);    -- Logic function
        ShiftFN      : in std_logic_vector(1 downto 0);    -- Shift function
        AddnSub      : in std_logic := '0';                -- Add/Sub control
        ExtWord      : in std_logic := '0';                -- Extend word control
        Y            : out std_logic_vector(N-1 downto 0); -- Final result
        Zero, AltB, AltBu : out std_logic  -- Flags
    );
end entity ExecUnit;

architecture hierarchical of ExecUnit is

    -- Internal Signals
    signal arithmetic_result, shift_result, logic_result, updB : std_logic_vector(N-1 downto 0);
	 
	 component AddnSub_entity is
        Generic ( N : natural := 64 );
        Port (
            A : in std_logic_vector(N-1 downto 0);
				AddnSub      : in std_logic; 
            B : out std_logic_vector(N-1 downto 0)
        );
    end component;

    -- Component Declarations
    component Adder is
        Generic ( N : natural := 64 );
        Port (
            S   : out std_logic_vector(N-1 downto 0);
            A, B : in std_logic_vector(N-1 downto 0);
            Cin  : in std_logic;
            Cout : out std_logic;
            Ovfl : out std_logic
        );
    end component;

    component Shifter is
        Generic ( N : natural := 64 );
        Port (
            A, B : in std_logic_vector(N-1 downto 0);
            Func : in std_logic_vector(1 downto 0);
            Result : out std_logic_vector(N-1 downto 0)
        );
    end component;

    component LogicUnit is
        Generic ( N : natural := 64 );
        Port (
            A, B : in std_logic_vector(N-1 downto 0);
            Func : in std_logic_vector(1 downto 0);
            Result : out std_logic_vector(N-1 downto 0)
        );
    end component;

    -- Instantiate FlagsLogic for Zero, AltB, and AltBu
    component FlagsLogic is
        Generic ( N : natural := 64 );
        Port ( 
            arithmetic_result, shift_result, logic_result : in std_logic_vector(N-1 downto 0); 
            Zero, AltB, AltBu : out std_logic
        );
    end component;

    -- Instantiate the new ResultSelector (MUX)
    component ResultSelector is
        Generic ( N : natural := 64 );
        Port (
            FuncClass : in std_logic_vector(1 downto 0);
            arithmetic_result : in std_logic_vector(N-1 downto 0);
            shift_result : in std_logic_vector(N-1 downto 0);
            logic_result : in std_logic_vector(N-1 downto 0);
            Y : out std_logic_vector(N-1 downto 0)
        );
    end component;

begin
    AddnSub_inst : AddnSub_entity
        generic map ( N => N )
        port map (
            A => B,
				AddnSub => AddnSub,
            B => updB
        );

    -- Arithmetic Block: Add/Sub operations based on FuncClass and AddnSub control
    Adder_inst : Adder
        generic map ( N => N )
        port map (
            A => A,
            B => updB,
            Cin => AddnSub,  -- AddnSub controls add (0) or subtract (1)
            S => arithmetic_result,
            Cout => open,     -- Carry-out (unused for now)
            Ovfl => open      -- Overflow (unused for now)
        );

    -- Shift Block: Logical/Arithmetic shift based on ShiftFN control
    Shifter_inst : Shifter
        generic map ( N => N )
        port map (
            A => A,
            B => B,
            Func => ShiftFN,
            Result => shift_result
        );

    -- Logic Block: AND/OR/XOR operations based on LogicFN control
    LogicUnit_inst : LogicUnit
        generic map ( N => N )
        port map (
            A => A,
            B => B,
            Func => LogicFN,
            Result => logic_result
        );

    -- Instantiate FlagsLogic for flag handling
    FlagsLogic_inst : FlagsLogic
        generic map ( N => N )
        port map (
            arithmetic_result => arithmetic_result,
            shift_result => shift_result,
            logic_result => logic_result,
            Zero => Zero,
            AltB => AltB,
            AltBu => AltBu
        );

    -- Final output selection (using ResultSelector)
    ResultSelector_inst : ResultSelector
        generic map ( N => N )
        port map (
            FuncClass => FuncClass,
            arithmetic_result => arithmetic_result,
            shift_result => shift_result,
            logic_result => logic_result,
            Y => Y
        );

end architecture hierarchical;

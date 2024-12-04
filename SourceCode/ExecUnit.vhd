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
        AltB, AltBu, Zero : out std_logic  -- Flags, AltB, 
    );
end entity ExecUnit;

architecture hierarchical of ExecUnit is

    -- Internal Signals
    signal arithmetic_result, shift_result, logic_result, updB, zeros : std_logic_vector(N-1 downto 0);
    signal ShiftFN1, ShiftFN2, ShiftFN3 : std_logic_vector(N-1 downto 0);
	 
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

    component LogicUnit is
        Generic ( N : natural := 64 );
        Port (
            A, B : in std_logic_vector(N-1 downto 0);
            Func : in std_logic_vector(1 downto 0);
            Result : out std_logic_vector(N-1 downto 0)
        );
    end component;

    -- Instantiate the new FuncClass (MUX)
    component FuncClass_entity is
        Generic ( N : natural := 64 );
        Port (
            AltB, AltBu, logic_result, ShiftFN3 : in std_logic_vector(N-1 downto 0);
            FuncClass : in std_logic_vector(1 downto 0);
            Result : out std_logic_vector(N-1 downto 0)
        );
    end component;

    -- Internal signals to hold shift results
    signal sll_result, srl_result, sra_result : std_logic_vector(N-1 downto 0);
    signal Bmask : std_logic_vector(6 downto 0);

    component Mask is
        Generic ( N : natural := 64 );
        Port (
            A : in std_logic_vector(N-1 downto 0);
            B : out std_logic_vector(6 downto 0)
        );
    end component;
	 
    -- Declare components for instantiation
    component sll_222222
        Generic ( N : natural := 64 );
        Port (
            A     : in  std_logic_vector(N-1 downto 0);
            B     : in  std_logic_vector(6 downto 0);
            Result: out std_logic_vector(N-1 downto 0)
        );
    end component;

    component srl_222222
        Generic ( N : natural := 64 );
        Port (
            A     : in  std_logic_vector(N-1 downto 0);
            B     : in  std_logic_vector(6 downto 0);
            Result: out std_logic_vector(N-1 downto 0)
        );
    end component;

    component sra_222222
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
            A, B      : in std_logic_vector(N-1 downto 0);
            ShiftFN : in std_logic;
            Result  : out std_logic_vector(N-1 downto 0)
        );
    end component;

    component MagCom is
        Generic ( N : natural := 64 );
        Port (
			  A, B : in std_logic_vector(N-1 downto 0);
			  ALessThanB, AEqualB, ALessThanBU, AEqualBU    : out std_logic
        );
    end component;
	 
    component AndNotGate is
        Generic ( N : natural := 64 );
        Port (
			  A : in std_logic_vector(N-1 downto 0);
			  B    : out std_logic
        );
    end component;
begin
	zeros <= (others => '0');
    AddnSub_inst : AddnSub_entity
        generic map ( N => N )
        port map (
            A => B,
				AddnSub => AddnSub,
            B => updB
        );
		  
	MagComU_inst2 : MagCom
        generic map ( N => N )
        port map (
            A => A,
				B => B,
            ALessThanB => AltB,
				AEqualB => open,
            ALessThanBU => AltBu,
				AEqualBU => open
        );

    -- Arithmetic Block: Add/Sub operations based on FuncClass and AddnSub control
    Adder_inst : Adder
        generic map ( N => N )
        port map (
            A => A,
            B => updB, -- why not just use B? value of B should not change
            Cin => AddnSub,  -- AddnSub controls add (0) or subtract (1)
            S => arithmetic_result,
            Cout => open,     -- Carry-out (unused for now)
            Ovfl => open      -- Overflow (unused for now)
        );

    -- Shift Block: Logical/Arithmetic shift based on ShiftFN control
    AndNotGate_inst : AndNotGate
        generic map ( N => N )
        port map (
            A => arithmetic_result,
            B => Zero
        );
	
    Mask_inst : Mask
        generic map ( N => N )
        port map (
            A => B,
            B => Bmask
        );

    -- Instantiate the components for the different shifts
    sll_inst : sll_222222
        port map (A => A, B => Bmask, Result => sll_result);

    srl_inst : srl_222222
        port map (A => A, B => Bmask, Result => srl_result);

    sra_inst : sra_222222
        port map (A => A, B => Bmask, Result => sra_result);

    -- Instantiate the ShiftSelector for choosing the correct shift result
    ShiftSelector1_inst : ShiftSelector
        generic map ( N => N )
        port map (
            A => arithmetic_result,
            B => sll_result,
            ShiftFN => ShiftFN(0),
            Result => ShiftFN1
        );
		  
	ShiftSelector2_inst : ShiftSelector
        generic map ( N => N )
        port map (
            A => srl_result,
            B => sra_result,
            ShiftFN => ShiftFN(0),
            Result => ShiftFN2
        );
		  
	ShiftSelector3_inst : ShiftSelector
        generic map ( N => N )
        port map (
            A => ShiftFN1,
            B => ShiftFN2,
            ShiftFN => ShiftFN(1),
            Result => ShiftFN3
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

    FuncClass_inst : FuncClass_entity
        generic map ( N => N )
        port map (
            AltB => zeros(N-1 downto 1) & AltB,
            AltBu => zeros(N-1 downto 1) & AltBu,
            logic_result => logic_result,
				ShiftFN3 => ShiftFN3,
				FuncClass => FuncClass,
				Result => Y
        );

end architecture hierarchical;

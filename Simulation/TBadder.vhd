library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

entity TBExecUnit is
end TBExecUnit;

architecture Behaviour of TBExecUnit is
    constant N : natural := 64;

    -- Component Declaration
    component ExecUnit is
        Generic (N : natural := 64);
        Port (
             A, B : in std_logic_vector(N-1 downto 0);
	     FuncClass, LogicFN, ShiftFN  : in std_logic_vector(1 downto 0);
	     AddnSub, ExtWord : in std_logic := '0';
             Y : out std_logic_vector(N-1 downto 0);
             Zero, AltB, AltBu : out std_logic
        );
    end component;

    -- Signals to connect with the Adder component
    signal TBA, TBB, TBY : std_logic_vector(N-1 downto 0);
    signal TBFuncClass, TBLogicFN, TBShiftFN : std_logic_vector(1 downto 0);
    signal TBAddnSub, TBExtWord, TBZero, TBAltB, TBAltBu : std_logic;

    -- File Handling
	Constant	TestVectorFile : string := "TestVectors/Adder00.tvs";
    	file 		VectorFile : text;

begin
    -- Instantiate the DUT (Device Under Test)
    DUT: ExecUnit
        port map (
            A => TBA,
            B => TBB,
            Y => TBY,
            FuncClass => TBFuncClass,
            LogicFN => TBLogicFN,
            ShiftFN => TBShiftFN,
	    AddnSub => TBAddnSub,
            ExtWord => TBExtWord,
            Zero => TBZero, -- should these bottom 3 be grouped into 1 std_logic_vector(2 downto 0)?
            AltB => TBAltB,
            AltBu => TBAltBu
        );

    -- Test Process
  test:   process
        variable LineBuffer : line;
	variable FuncMSB, FuncLSB, ShiftMSB, ShiftLSB, LogicMSB, LogicLSB, ZeroMSB, AltB_bit, AltBuLSB : std_logic;
	variable A_test, B_test, Y_test : std_logic_vector(N-1 downto 0);
        variable FuncClass_test, LogicFN_test, ShiftFN_test : std_logic_vector(1 downto 0);
 	variable AddnSub_test, ExtWord_test : std_logic;
        variable Index : integer := 1;
	variable expected_Y : std_logic_vector(N-1 downto 0);
	variable expected_Zero, expected_AltB, expected_AltBu : std_logic;
        variable Branch_test : std_logic_vector(2 downto 0);
        constant PreStimTime : time := 1 ns;
        constant PostStimTime : time := 1111 ns;

    begin
	FILE_OPEN( VectorFile, TestVectorFile, read_mode );
	report "Using TestVectors from file " & TestVectorFile; 

        -- Read and apply test vectors
        while not ENDFILE (VectorFile) loop
            readline(VectorFile, LineBuffer);

        -- Read values from the file
	hread(LineBuffer, A_test);
	hread(LineBuffer, B_test);
	read(LineBuffer, FuncClass_test(1));
	read(LineBuffer, FuncClass_test(0));
	read(LineBuffer, LogicFN_test(1));
	read(LineBuffer, LogicFN_test(0));
	read(LineBuffer, ShiftFN_test(1));
	read(LineBuffer, ShiftFN_test(0));
	read(LineBuffer, AddnSub_test);
	read(LineBuffer, ExtWord_test);
	hread(LineBuffer, expected_Y);
	read(LineBuffer, Branch_test(2));
	read(LineBuffer, Branch_test(1));
	read(LineBuffer, Branch_test(0));

	TBA <= A_test;
        TBB <= B_test;
        TBFuncClass <= FuncClass_test;
	TBLogicFN   <= LogicFN_test;
	TBShiftFN   <= ShiftFN_test;
	TBAddnSub   <= AddnSub_test;
	TBExtWord   <= ExtWord_test;

        wait for PreStimTime;

        -- Determine expected Cout and Ovfl values
	--expected_Y := Y_test;
	expected_Zero := Branch_test(2);
	expected_AltB := Branch_test(1);
	expected_AltBu := Branch_test(0);

            -- Validate the outputs
            assert (TBY = expected_Y) and
                   (TBZero = expected_Zero) and
                   (TBAltB = expected_AltB) and
		   (TBAltBu = expected_AltBu)
                report "Test failed at index: " & integer'image(Index)
		-- Could add an error counter to show % of test cases passed
                severity error;

            -- Increment test case index
            Index := Index + 1;
            wait for PostStimTime;
        end loop;
	Report "Simulation Completed";
        wait;

	FILE_CLOSE(VectorFile);
        WAIT;
    end process;
end Behaviour;
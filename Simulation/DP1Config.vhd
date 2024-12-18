-- Configuration for Ripple Adder
configuration Config_Ripple of TBAdder is
    for Behaviour
        for DUT : Adder
            use entity work.Adder(Behaviour); -- Use the Ripple architecture
        end for;
    end for;
end configuration Config_Ripple;

-- Configuration for CSA Adder
configuration Config_CSA of TBAdder is
   for Behaviour
       for DUT : Adder
          use entity work.Adder(CSkipA); -- Use the CSA architecture
        end for;
    end for;
end configuration Config_CSA;

-- Configuration for FLA Adder
configuration Config_FLA of TBAdder is
    for Behaviour
        for DUT : Adder
            use entity work.Adder(Structure); -- Use the CLA architecture
        end for;
    end for;
end configuration Config_FLA;
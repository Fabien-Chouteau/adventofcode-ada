package Day_3 is

   function Solve_Part_One (Input : Positive) return Natural
     with Test_Case => (Name => "test case 1",
                        Mode => Nominal,
                        Requires => Input = 1,
                        Ensures  => Solve_Part_One'Result = 0),
          Test_Case => (Name => "test case 2",
                        Mode => Nominal,
                        Requires => Input = 12,
                        Ensures  => Solve_Part_One'Result = 3),
          Test_Case => (Name => "test case 3",
                        Mode => Nominal,
                        Requires => Input = 23,
                        Ensures  => Solve_Part_One'Result = 2),
          Test_Case => (Name => "test case 4",
                        Mode => Nominal,
                        Requires => Input = 1024,
                        Ensures  => Solve_Part_One'Result = 31),
          Test_Case => (Name => "test case 5",
                        Mode => Nominal,
                        Requires => Input = 361527,
                        Ensures  => Solve_Part_One'Result = 326);

end Day_3;

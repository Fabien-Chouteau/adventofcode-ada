package Day_1 is

   function Solve_Part_One_Puzzle (Input : String) return Natural
     with Pre =>
            --  All charecters of the input must be digits
            (for all C of Input => C in '0' .. '9'),

          Test_Case => (Name => "test case 1",
                        Mode => Nominal,
                        Requires => Input = "1122",
                        Ensures  => Solve_Part_One_Puzzle'Result = 3),
          Test_Case => (Name => "test case 2",
                        Mode => Nominal,
                        Requires => Input = "1111",
                        Ensures  => Solve_Part_One_Puzzle'Result = 4),
          Test_Case => (Name => "test case 3",
                        Mode => Nominal,
                        Requires => Input = "1234",
                        Ensures  => Solve_Part_One_Puzzle'Result = 0),
          Test_Case => (Name => "test case 4",
                        Mode => Nominal,
                        Requires => Input = "91212129",
                        Ensures  => Solve_Part_One_Puzzle'Result = 9);


   function Solve_Part_Two_Puzzle (Input : String) return Natural
     with Pre =>
            --  Fortunately, your list has an even number of elements.
            Input'Length mod 2 = 0
              and then
            --  All charecters of the input must be digits
            (for all C of Input => C in '0' .. '9'),

          Test_Case => (Name => "test case 1",
                        Mode => Nominal,
                        Requires => Input = "1212",
                        Ensures  => Solve_Part_Two_Puzzle'Result = 6),
          Test_Case => (Name => "test case 2",
                        Mode => Nominal,
                        Requires => Input = "1221",
                        Ensures  => Solve_Part_Two_Puzzle'Result = 0),
          Test_Case => (Name => "test case 3",
                        Mode => Nominal,
                        Requires => Input = "123425",
                        Ensures  => Solve_Part_Two_Puzzle'Result = 4),
          Test_Case => (Name => "test case 4",
                        Mode => Nominal,
                        Requires => Input = "123123",
                        Ensures  => Solve_Part_Two_Puzzle'Result = 12),
          Test_Case => (Name => "test case 5",
                        Mode => Nominal,
                        Requires => Input = "12131415",
                        Ensures  => Solve_Part_Two_Puzzle'Result = 4);
end Day_1;

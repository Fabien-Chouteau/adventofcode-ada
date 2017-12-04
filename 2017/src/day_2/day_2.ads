package Day_2 is

   function Solve_Part_One_Line (Line : String) return Natural
     with Pre =>
            --  All charecters of the input must be digits
            (for all C of Line => C in '0' .. '9' | ' ' | ASCII.HT),

          Test_Case => (Name => "test case 1",
                        Mode => Nominal,
                        Requires => Line = "5 1 9 5",
                        Ensures  => Solve_Part_One_Line'Result = 8),
          Test_Case => (Name => "test case 2",
                        Mode => Nominal,
                        Requires => Line = "7 5 3 ",
                        Ensures  => Solve_Part_One_Line'Result = 4),
          Test_Case => (Name => "test case 3",
                        Mode => Nominal,
                        Requires => Line = "2 4 6 8",
                        Ensures  => Solve_Part_One_Line'Result = 6),
          Test_Case => (Name => "test case 4",
                        Mode => Nominal,
                        Requires => Line = "62" & ASCII.HT &
                          "1649" & ASCII.HT &
                          "1731" & ASCII.HT &
                          "76" & ASCII.HT &
                          "51" & ASCII.HT &
                          "1295" & ASCII.HT &
                          "349" & ASCII.HT &
                          "719" & ASCII.HT &
                          "52" & ASCII.HT &
                          "1984" & ASCII.HT &
                          "2015" & ASCII.HT &
                          "2171" & ASCII.HT &
                          "981" & ASCII.HT &
                          "1809" & ASCII.HT &
                          "181" & ASCII.HT &
                          "1715",
                        Ensures  => Solve_Part_One_Line'Result = 2120);

   function Solve_Part_Two_Line (Line : String) return Natural
     with Pre =>
            --  All charecters of the input must be digits
            (for all C of Line => C in '0' .. '9' | ' ' | ASCII.HT),

          Test_Case => (Name => "test case 1",
                        Mode => Nominal,
                        Requires => Line = "5 9 2 8",
                        Ensures  => Solve_Part_Two_Line'Result = 4),
          Test_Case => (Name => "test case 2",
                        Mode => Nominal,
                        Requires => Line = "9 4 7 3",
                        Ensures  => Solve_Part_Two_Line'Result = 3),
          Test_Case => (Name => "test case 3",
                        Mode => Nominal,
                        Requires => Line = "3 8 6 5",
                        Ensures  => Solve_Part_Two_Line'Result = 2),
          Test_Case => (Name => "test case 4",
                        Mode => Nominal,
                        Requires => Line = "62" & ASCII.HT &
                          "1649" & ASCII.HT &
                          "1731" & ASCII.HT &
                          "76" & ASCII.HT &
                          "51" & ASCII.HT &
                          "1295" & ASCII.HT &
                          "349" & ASCII.HT &
                          "719" & ASCII.HT &
                          "52" & ASCII.HT &
                          "1984" & ASCII.HT &
                          "2015" & ASCII.HT &
                          "2171" & ASCII.HT &
                          "981" & ASCII.HT &
                          "1809" & ASCII.HT &
                          "181" & ASCII.HT &
                          "1715",
                        Ensures  => Solve_Part_Two_Line'Result = 32);

end Day_2;

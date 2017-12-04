--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body Day_1.Test_Data.Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.Day_1.Test_Data.Tests.Test);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Solve_Part_One_Puzzle_6c0d4e_35ff4a : aliased Runner_1.Test_Case;
   Case_2_1_Test_Solve_Part_One_Puzzle_6c0d4e_8e08ed : aliased Runner_1.Test_Case;
   Case_3_1_Test_Solve_Part_One_Puzzle_6c0d4e_c2efea : aliased Runner_1.Test_Case;
   Case_4_1_Test_Solve_Part_One_Puzzle_6c0d4e_59e22f : aliased Runner_1.Test_Case;
   Case_5_1_Test_Solve_Part_Two_Puzzle_25e0d6_d3e295 : aliased Runner_1.Test_Case;
   Case_6_1_Test_Solve_Part_Two_Puzzle_25e0d6_6e14d0 : aliased Runner_1.Test_Case;
   Case_7_1_Test_Solve_Part_Two_Puzzle_25e0d6_7e0a31 : aliased Runner_1.Test_Case;
   Case_8_1_Test_Solve_Part_Two_Puzzle_25e0d6_7dcc30 : aliased Runner_1.Test_Case;
   Case_9_1_Test_Solve_Part_Two_Puzzle_25e0d6_197ea0 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Solve_Part_One_Puzzle_6c0d4e_35ff4a,
         "day_1.ads:8:11:",
         Test_Solve_Part_One_Puzzle_6c0d4e_35ff4a'Access);
      Runner_1.Create
        (Case_2_1_Test_Solve_Part_One_Puzzle_6c0d4e_8e08ed,
         "day_1.ads:12:11:",
         Test_Solve_Part_One_Puzzle_6c0d4e_8e08ed'Access);
      Runner_1.Create
        (Case_3_1_Test_Solve_Part_One_Puzzle_6c0d4e_c2efea,
         "day_1.ads:16:11:",
         Test_Solve_Part_One_Puzzle_6c0d4e_c2efea'Access);
      Runner_1.Create
        (Case_4_1_Test_Solve_Part_One_Puzzle_6c0d4e_59e22f,
         "day_1.ads:20:11:",
         Test_Solve_Part_One_Puzzle_6c0d4e_59e22f'Access);
      Runner_1.Create
        (Case_5_1_Test_Solve_Part_Two_Puzzle_25e0d6_d3e295,
         "day_1.ads:34:11:",
         Test_Solve_Part_Two_Puzzle_25e0d6_d3e295'Access);
      Runner_1.Create
        (Case_6_1_Test_Solve_Part_Two_Puzzle_25e0d6_6e14d0,
         "day_1.ads:38:11:",
         Test_Solve_Part_Two_Puzzle_25e0d6_6e14d0'Access);
      Runner_1.Create
        (Case_7_1_Test_Solve_Part_Two_Puzzle_25e0d6_7e0a31,
         "day_1.ads:42:11:",
         Test_Solve_Part_Two_Puzzle_25e0d6_7e0a31'Access);
      Runner_1.Create
        (Case_8_1_Test_Solve_Part_Two_Puzzle_25e0d6_7dcc30,
         "day_1.ads:46:11:",
         Test_Solve_Part_Two_Puzzle_25e0d6_7dcc30'Access);
      Runner_1.Create
        (Case_9_1_Test_Solve_Part_Two_Puzzle_25e0d6_197ea0,
         "day_1.ads:50:11:",
         Test_Solve_Part_Two_Puzzle_25e0d6_197ea0'Access);

      Result.Add_Test (Case_1_1_Test_Solve_Part_One_Puzzle_6c0d4e_35ff4a'Access);
      Result.Add_Test (Case_2_1_Test_Solve_Part_One_Puzzle_6c0d4e_8e08ed'Access);
      Result.Add_Test (Case_3_1_Test_Solve_Part_One_Puzzle_6c0d4e_c2efea'Access);
      Result.Add_Test (Case_4_1_Test_Solve_Part_One_Puzzle_6c0d4e_59e22f'Access);
      Result.Add_Test (Case_5_1_Test_Solve_Part_Two_Puzzle_25e0d6_d3e295'Access);
      Result.Add_Test (Case_6_1_Test_Solve_Part_Two_Puzzle_25e0d6_6e14d0'Access);
      Result.Add_Test (Case_7_1_Test_Solve_Part_Two_Puzzle_25e0d6_7e0a31'Access);
      Result.Add_Test (Case_8_1_Test_Solve_Part_Two_Puzzle_25e0d6_7dcc30'Access);
      Result.Add_Test (Case_9_1_Test_Solve_Part_Two_Puzzle_25e0d6_197ea0'Access);

      return Result'Access;

   end Suite;

end Day_1.Test_Data.Tests.Suite;
--  end read only

--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body Day_3.Test_Data.Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.Day_3.Test_Data.Tests.Test);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Solve_Part_One_1ad011_8c7933 : aliased Runner_1.Test_Case;
   Case_2_1_Test_Solve_Part_One_1ad011_f54483 : aliased Runner_1.Test_Case;
   Case_3_1_Test_Solve_Part_One_1ad011_5140e4 : aliased Runner_1.Test_Case;
   Case_4_1_Test_Solve_Part_One_1ad011_06b808 : aliased Runner_1.Test_Case;
   Case_5_1_Test_Solve_Part_One_1ad011_1a39bf : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Solve_Part_One_1ad011_8c7933,
         "day_3.ads:4:11:",
         Test_Solve_Part_One_1ad011_8c7933'Access);
      Runner_1.Create
        (Case_2_1_Test_Solve_Part_One_1ad011_f54483,
         "day_3.ads:8:11:",
         Test_Solve_Part_One_1ad011_f54483'Access);
      Runner_1.Create
        (Case_3_1_Test_Solve_Part_One_1ad011_5140e4,
         "day_3.ads:12:11:",
         Test_Solve_Part_One_1ad011_5140e4'Access);
      Runner_1.Create
        (Case_4_1_Test_Solve_Part_One_1ad011_06b808,
         "day_3.ads:16:11:",
         Test_Solve_Part_One_1ad011_06b808'Access);
      Runner_1.Create
        (Case_5_1_Test_Solve_Part_One_1ad011_1a39bf,
         "day_3.ads:20:11:",
         Test_Solve_Part_One_1ad011_1a39bf'Access);

      Result.Add_Test (Case_1_1_Test_Solve_Part_One_1ad011_8c7933'Access);
      Result.Add_Test (Case_2_1_Test_Solve_Part_One_1ad011_f54483'Access);
      Result.Add_Test (Case_3_1_Test_Solve_Part_One_1ad011_5140e4'Access);
      Result.Add_Test (Case_4_1_Test_Solve_Part_One_1ad011_06b808'Access);
      Result.Add_Test (Case_5_1_Test_Solve_Part_One_1ad011_1a39bf'Access);

      return Result'Access;

   end Suite;

end Day_3.Test_Data.Tests.Suite;
--  end read only

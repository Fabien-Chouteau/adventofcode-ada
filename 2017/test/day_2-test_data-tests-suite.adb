--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body Day_2.Test_Data.Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.Day_2.Test_Data.Tests.Test);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Solve_Part_One_Line_0adfcb_aad9da : aliased Runner_1.Test_Case;
   Case_2_1_Test_Solve_Part_One_Line_0adfcb_cde27f : aliased Runner_1.Test_Case;
   Case_3_1_Test_Solve_Part_One_Line_0adfcb_21e612 : aliased Runner_1.Test_Case;
   Case_4_1_Test_Solve_Part_One_Line_0adfcb_db6703 : aliased Runner_1.Test_Case;
   Case_5_1_Test_Solve_Part_Two_Line_b2269c_f2e14f : aliased Runner_1.Test_Case;
   Case_6_1_Test_Solve_Part_Two_Line_b2269c_630640 : aliased Runner_1.Test_Case;
   Case_7_1_Test_Solve_Part_Two_Line_b2269c_af53df : aliased Runner_1.Test_Case;
   Case_8_1_Test_Solve_Part_Two_Line_b2269c_38c279 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Solve_Part_One_Line_0adfcb_aad9da,
         "day_2.ads:8:11:",
         Test_Solve_Part_One_Line_0adfcb_aad9da'Access);
      Runner_1.Create
        (Case_2_1_Test_Solve_Part_One_Line_0adfcb_cde27f,
         "day_2.ads:12:11:",
         Test_Solve_Part_One_Line_0adfcb_cde27f'Access);
      Runner_1.Create
        (Case_3_1_Test_Solve_Part_One_Line_0adfcb_21e612,
         "day_2.ads:16:11:",
         Test_Solve_Part_One_Line_0adfcb_21e612'Access);
      Runner_1.Create
        (Case_4_1_Test_Solve_Part_One_Line_0adfcb_db6703,
         "day_2.ads:20:11:",
         Test_Solve_Part_One_Line_0adfcb_db6703'Access);
      Runner_1.Create
        (Case_5_1_Test_Solve_Part_Two_Line_b2269c_f2e14f,
         "day_2.ads:45:11:",
         Test_Solve_Part_Two_Line_b2269c_f2e14f'Access);
      Runner_1.Create
        (Case_6_1_Test_Solve_Part_Two_Line_b2269c_630640,
         "day_2.ads:49:11:",
         Test_Solve_Part_Two_Line_b2269c_630640'Access);
      Runner_1.Create
        (Case_7_1_Test_Solve_Part_Two_Line_b2269c_af53df,
         "day_2.ads:53:11:",
         Test_Solve_Part_Two_Line_b2269c_af53df'Access);
      Runner_1.Create
        (Case_8_1_Test_Solve_Part_Two_Line_b2269c_38c279,
         "day_2.ads:57:11:",
         Test_Solve_Part_Two_Line_b2269c_38c279'Access);

      Result.Add_Test (Case_1_1_Test_Solve_Part_One_Line_0adfcb_aad9da'Access);
      Result.Add_Test (Case_2_1_Test_Solve_Part_One_Line_0adfcb_cde27f'Access);
      Result.Add_Test (Case_3_1_Test_Solve_Part_One_Line_0adfcb_21e612'Access);
      Result.Add_Test (Case_4_1_Test_Solve_Part_One_Line_0adfcb_db6703'Access);
      Result.Add_Test (Case_5_1_Test_Solve_Part_Two_Line_b2269c_f2e14f'Access);
      Result.Add_Test (Case_6_1_Test_Solve_Part_Two_Line_b2269c_630640'Access);
      Result.Add_Test (Case_7_1_Test_Solve_Part_Two_Line_b2269c_af53df'Access);
      Result.Add_Test (Case_8_1_Test_Solve_Part_Two_Line_b2269c_38c279'Access);

      return Result'Access;

   end Suite;

end Day_2.Test_Data.Tests.Suite;
--  end read only

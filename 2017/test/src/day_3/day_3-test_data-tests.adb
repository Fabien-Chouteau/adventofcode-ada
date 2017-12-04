--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Day_3.Test_Data.

with AUnit.Assertions; use AUnit.Assertions;
with System.Assertions;

--  begin read only
--  id:2.2/00/
--
--  This section can be used to add with clauses if necessary.
--
--  end read only

--  begin read only
--  end read only
package body Day_3.Test_Data.Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only
--  begin read only
   function Wrap_Test_Solve_Part_One_1ad011_8c7933 (Input : Positive)  return Natural
   is
   begin
      begin
         pragma Assert
           (Input = 1);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_3.ads:6):test case 1 test requirement violated");
      end;
      declare
         Test_Solve_Part_One_1ad011_8c7933_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_3.Solve_Part_One (Input);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_One_1ad011_8c7933_Result = 0);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_3.ads:7:):test case 1 test commitment violated");
         end;
         return Test_Solve_Part_One_1ad011_8c7933_Result;
      end;
   end Wrap_Test_Solve_Part_One_1ad011_8c7933;
--  end read only

--  begin read only
   procedure Test_Solve_Part_One_test_case_1 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_One_1ad011_8c7933 (Gnattest_T : in out Test) renames Test_Solve_Part_One_test_case_1;
--  id:2.2/1ad011f868869d1f/Solve_Part_One/1/0/test_case_1/
   procedure Test_Solve_Part_One_test_case_1 (Gnattest_T : in out Test) is
   --  day_3.ads:3:4:Solve_Part_One
      function Solve_Part_One (Input : Positive) return Natural renames Wrap_Test_Solve_Part_One_1ad011_8c7933;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Day_3.Solve_Part_One (1) = 0,
         "Test '1' failed");

--  begin read only
   end Test_Solve_Part_One_test_case_1;
--  end read only

--  begin read only
   function Wrap_Test_Solve_Part_One_1ad011_f54483 (Input : Positive)  return Natural
   is
   begin
      begin
         pragma Assert
           (Input = 12);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_3.ads:10):test case 2 test requirement violated");
      end;
      declare
         Test_Solve_Part_One_1ad011_f54483_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_3.Solve_Part_One (Input);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_One_1ad011_f54483_Result = 3);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_3.ads:11:):test case 2 test commitment violated");
         end;
         return Test_Solve_Part_One_1ad011_f54483_Result;
      end;
   end Wrap_Test_Solve_Part_One_1ad011_f54483;
--  end read only

--  begin read only
   procedure Test_Solve_Part_One_test_case_2 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_One_1ad011_f54483 (Gnattest_T : in out Test) renames Test_Solve_Part_One_test_case_2;
--  id:2.2/1ad011f868869d1f/Solve_Part_One/1/0/test_case_2/
   procedure Test_Solve_Part_One_test_case_2 (Gnattest_T : in out Test) is
   --  day_3.ads:3:4:Solve_Part_One
      function Solve_Part_One (Input : Positive) return Natural renames Wrap_Test_Solve_Part_One_1ad011_f54483;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Day_3.Solve_Part_One (12) = 3,
         "Test '12' failed");

--  begin read only
   end Test_Solve_Part_One_test_case_2;
--  end read only

--  begin read only
   function Wrap_Test_Solve_Part_One_1ad011_5140e4 (Input : Positive)  return Natural
   is
   begin
      begin
         pragma Assert
           (Input = 23);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_3.ads:14):test case 3 test requirement violated");
      end;
      declare
         Test_Solve_Part_One_1ad011_5140e4_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_3.Solve_Part_One (Input);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_One_1ad011_5140e4_Result = 2);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_3.ads:15:):test case 3 test commitment violated");
         end;
         return Test_Solve_Part_One_1ad011_5140e4_Result;
      end;
   end Wrap_Test_Solve_Part_One_1ad011_5140e4;
--  end read only

--  begin read only
   procedure Test_Solve_Part_One_test_case_3 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_One_1ad011_5140e4 (Gnattest_T : in out Test) renames Test_Solve_Part_One_test_case_3;
--  id:2.2/1ad011f868869d1f/Solve_Part_One/1/0/test_case_3/
   procedure Test_Solve_Part_One_test_case_3 (Gnattest_T : in out Test) is
   --  day_3.ads:3:4:Solve_Part_One
      function Solve_Part_One (Input : Positive) return Natural renames Wrap_Test_Solve_Part_One_1ad011_5140e4;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Day_3.Solve_Part_One (23) = 2,
         "Test '23' failed");

--  begin read only
   end Test_Solve_Part_One_test_case_3;
--  end read only

--  begin read only
   function Wrap_Test_Solve_Part_One_1ad011_06b808 (Input : Positive)  return Natural
   is
   begin
      begin
         pragma Assert
           (Input = 1024);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_3.ads:18):test case 4 test requirement violated");
      end;
      declare
         Test_Solve_Part_One_1ad011_06b808_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_3.Solve_Part_One (Input);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_One_1ad011_06b808_Result = 31);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_3.ads:19:):test case 4 test commitment violated");
         end;
         return Test_Solve_Part_One_1ad011_06b808_Result;
      end;
   end Wrap_Test_Solve_Part_One_1ad011_06b808;
--  end read only

--  begin read only
   procedure Test_Solve_Part_One_test_case_4 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_One_1ad011_06b808 (Gnattest_T : in out Test) renames Test_Solve_Part_One_test_case_4;
--  id:2.2/1ad011f868869d1f/Solve_Part_One/1/0/test_case_4/
   procedure Test_Solve_Part_One_test_case_4 (Gnattest_T : in out Test) is
   --  day_3.ads:3:4:Solve_Part_One
      function Solve_Part_One (Input : Positive) return Natural renames Wrap_Test_Solve_Part_One_1ad011_06b808;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Day_3.Solve_Part_One (1024) = 31,
         "Test '1024' failed");

--  begin read only
   end Test_Solve_Part_One_test_case_4;
--  end read only

--  begin read only
   function Wrap_Test_Solve_Part_One_1ad011_1a39bf (Input : Positive)  return Natural
   is
   begin
      begin
         pragma Assert
           (Input = 361527);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_3.ads:22):test case 5 test requirement violated");
      end;
      declare
         Test_Solve_Part_One_1ad011_1a39bf_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_3.Solve_Part_One (Input);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_One_1ad011_1a39bf_Result = 326);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_3.ads:23:):test case 5 test commitment violated");
         end;
         return Test_Solve_Part_One_1ad011_1a39bf_Result;
      end;
   end Wrap_Test_Solve_Part_One_1ad011_1a39bf;
--  end read only

--  begin read only
   procedure Test_Solve_Part_One_test_case_5 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_One_1ad011_1a39bf (Gnattest_T : in out Test) renames Test_Solve_Part_One_test_case_5;
--  id:2.2/1ad011f868869d1f/Solve_Part_One/1/0/test_case_5/
   procedure Test_Solve_Part_One_test_case_5 (Gnattest_T : in out Test) is
   --  day_3.ads:3:4:Solve_Part_One
      function Solve_Part_One (Input : Positive) return Natural renames Wrap_Test_Solve_Part_One_1ad011_1a39bf;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Day_3.Solve_Part_One (361527) = 326,
         "Test '361527' failed");

--  begin read only
   end Test_Solve_Part_One_test_case_5;
--  end read only

--  begin read only
--  id:2.2/02/
--
--  This section can be used to add elaboration code for the global state.
--
begin
--  end read only
   null;
--  begin read only
--  end read only
end Day_3.Test_Data.Tests;

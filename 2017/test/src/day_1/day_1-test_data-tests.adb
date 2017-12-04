--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Day_1.Test_Data.

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
package body Day_1.Test_Data.Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only
--  begin read only
   function Wrap_Test_Solve_Part_One_Puzzle_6c0d4e_35ff4a (Input : String)  return Natural
   is
   begin
      begin
         pragma Assert
           (((for all C of Input => C in '0' .. '9')) and (Input = "1122"));
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_1.ads:10):test case 1 test requirement violated");
      end;
      declare
         Test_Solve_Part_One_Puzzle_6c0d4e_35ff4a_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_1.Solve_Part_One_Puzzle (Input);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_One_Puzzle_6c0d4e_35ff4a_Result = 3);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_1.ads:11:):test case 1 test commitment violated");
         end;
         return Test_Solve_Part_One_Puzzle_6c0d4e_35ff4a_Result;
      end;
   end Wrap_Test_Solve_Part_One_Puzzle_6c0d4e_35ff4a;
--  end read only

--  begin read only
   procedure Test_Solve_Part_One_Puzzle_test_case_1 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_One_Puzzle_6c0d4e_35ff4a (Gnattest_T : in out Test) renames Test_Solve_Part_One_Puzzle_test_case_1;
--  id:2.2/6c0d4e43be2a114f/Solve_Part_One_Puzzle/1/0/test_case_1/
   procedure Test_Solve_Part_One_Puzzle_test_case_1 (Gnattest_T : in out Test) is
   --  day_1.ads:3:4:Solve_Part_One_Puzzle
      function Solve_Part_One_Puzzle (Input : String) return Natural renames Wrap_Test_Solve_Part_One_Puzzle_6c0d4e_35ff4a;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Solve_Part_One_Puzzle ("1122") = 3,
         "Test '1122' failed");

--  begin read only
   end Test_Solve_Part_One_Puzzle_test_case_1;
--  end read only

--  begin read only
   function Wrap_Test_Solve_Part_One_Puzzle_6c0d4e_8e08ed (Input : String)  return Natural
   is
   begin
      begin
         pragma Assert
           (((for all C of Input => C in '0' .. '9')) and (Input = "1111"));
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_1.ads:14):test case 2 test requirement violated");
      end;
      declare
         Test_Solve_Part_One_Puzzle_6c0d4e_8e08ed_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_1.Solve_Part_One_Puzzle (Input);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_One_Puzzle_6c0d4e_8e08ed_Result = 4);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_1.ads:15:):test case 2 test commitment violated");
         end;
         return Test_Solve_Part_One_Puzzle_6c0d4e_8e08ed_Result;
      end;
   end Wrap_Test_Solve_Part_One_Puzzle_6c0d4e_8e08ed;
--  end read only

--  begin read only
   procedure Test_Solve_Part_One_Puzzle_test_case_2 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_One_Puzzle_6c0d4e_8e08ed (Gnattest_T : in out Test) renames Test_Solve_Part_One_Puzzle_test_case_2;
--  id:2.2/6c0d4e43be2a114f/Solve_Part_One_Puzzle/1/0/test_case_2/
   procedure Test_Solve_Part_One_Puzzle_test_case_2 (Gnattest_T : in out Test) is
   --  day_1.ads:3:4:Solve_Part_One_Puzzle
      function Solve_Part_One_Puzzle (Input : String) return Natural renames Wrap_Test_Solve_Part_One_Puzzle_6c0d4e_8e08ed;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Solve_Part_One_Puzzle ("1111") = 4,
         "Test '1111' failed");

--  begin read only
   end Test_Solve_Part_One_Puzzle_test_case_2;
--  end read only

--  begin read only
   function Wrap_Test_Solve_Part_One_Puzzle_6c0d4e_c2efea (Input : String)  return Natural
   is
   begin
      begin
         pragma Assert
           (((for all C of Input => C in '0' .. '9')) and (Input = "1234"));
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_1.ads:18):test case 3 test requirement violated");
      end;
      declare
         Test_Solve_Part_One_Puzzle_6c0d4e_c2efea_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_1.Solve_Part_One_Puzzle (Input);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_One_Puzzle_6c0d4e_c2efea_Result = 0);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_1.ads:19:):test case 3 test commitment violated");
         end;
         return Test_Solve_Part_One_Puzzle_6c0d4e_c2efea_Result;
      end;
   end Wrap_Test_Solve_Part_One_Puzzle_6c0d4e_c2efea;
--  end read only

--  begin read only
   procedure Test_Solve_Part_One_Puzzle_test_case_3 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_One_Puzzle_6c0d4e_c2efea (Gnattest_T : in out Test) renames Test_Solve_Part_One_Puzzle_test_case_3;
--  id:2.2/6c0d4e43be2a114f/Solve_Part_One_Puzzle/1/0/test_case_3/
   procedure Test_Solve_Part_One_Puzzle_test_case_3 (Gnattest_T : in out Test) is
   --  day_1.ads:3:4:Solve_Part_One_Puzzle
      function Solve_Part_One_Puzzle (Input : String) return Natural renames Wrap_Test_Solve_Part_One_Puzzle_6c0d4e_c2efea;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Solve_Part_One_Puzzle ("1234") = 0,
         "Test '1234' failed");

--  begin read only
   end Test_Solve_Part_One_Puzzle_test_case_3;
--  end read only

--  begin read only
   function Wrap_Test_Solve_Part_One_Puzzle_6c0d4e_59e22f (Input : String)  return Natural
   is
   begin
      begin
         pragma Assert
           (((for all C of Input => C in '0' .. '9')) and (Input = "91212129"));
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_1.ads:22):test case 4 test requirement violated");
      end;
      declare
         Test_Solve_Part_One_Puzzle_6c0d4e_59e22f_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_1.Solve_Part_One_Puzzle (Input);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_One_Puzzle_6c0d4e_59e22f_Result = 9);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_1.ads:23:):test case 4 test commitment violated");
         end;
         return Test_Solve_Part_One_Puzzle_6c0d4e_59e22f_Result;
      end;
   end Wrap_Test_Solve_Part_One_Puzzle_6c0d4e_59e22f;
--  end read only

--  begin read only
   procedure Test_Solve_Part_One_Puzzle_test_case_4 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_One_Puzzle_6c0d4e_59e22f (Gnattest_T : in out Test) renames Test_Solve_Part_One_Puzzle_test_case_4;
--  id:2.2/6c0d4e43be2a114f/Solve_Part_One_Puzzle/1/0/test_case_4/
   procedure Test_Solve_Part_One_Puzzle_test_case_4 (Gnattest_T : in out Test) is
   --  day_1.ads:3:4:Solve_Part_One_Puzzle
      function Solve_Part_One_Puzzle (Input : String) return Natural renames Wrap_Test_Solve_Part_One_Puzzle_6c0d4e_59e22f;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Solve_Part_One_Puzzle ("91212129") = 9,
         "Test '91212129' failed");

--  begin read only
   end Test_Solve_Part_One_Puzzle_test_case_4;
--  end read only

--  begin read only
   function Wrap_Test_Solve_Part_Two_Puzzle_25e0d6_d3e295 (Input : String)  return Natural
   is
   begin
      begin
         pragma Assert
           ((Input'Length mod 2 = 0 and then (for all C of Input => C in '0' .. '9')) and (Input = "1212"));
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_1.ads:36):test case 1 test requirement violated");
      end;
      declare
         Test_Solve_Part_Two_Puzzle_25e0d6_d3e295_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_1.Solve_Part_Two_Puzzle (Input);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_Two_Puzzle_25e0d6_d3e295_Result = 6);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_1.ads:37:):test case 1 test commitment violated");
         end;
         return Test_Solve_Part_Two_Puzzle_25e0d6_d3e295_Result;
      end;
   end Wrap_Test_Solve_Part_Two_Puzzle_25e0d6_d3e295;
--  end read only

--  begin read only
   procedure Test_Solve_Part_Two_Puzzle_test_case_1 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_Two_Puzzle_25e0d6_d3e295 (Gnattest_T : in out Test) renames Test_Solve_Part_Two_Puzzle_test_case_1;
--  id:2.2/25e0d62819ef6b95/Solve_Part_Two_Puzzle/1/0/test_case_1/
   procedure Test_Solve_Part_Two_Puzzle_test_case_1 (Gnattest_T : in out Test) is
   --  day_1.ads:26:4:Solve_Part_Two_Puzzle
      function Solve_Part_Two_Puzzle (Input : String) return Natural renames Wrap_Test_Solve_Part_Two_Puzzle_25e0d6_d3e295;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Solve_Part_Two_Puzzle ("1212") = 6,
         "Test '1212' failed");

--  begin read only
   end Test_Solve_Part_Two_Puzzle_test_case_1;
--  end read only

--  begin read only
   function Wrap_Test_Solve_Part_Two_Puzzle_25e0d6_6e14d0 (Input : String)  return Natural
   is
   begin
      begin
         pragma Assert
           ((Input'Length mod 2 = 0 and then (for all C of Input => C in '0' .. '9')) and (Input = "1221"));
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_1.ads:40):test case 2 test requirement violated");
      end;
      declare
         Test_Solve_Part_Two_Puzzle_25e0d6_6e14d0_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_1.Solve_Part_Two_Puzzle (Input);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_Two_Puzzle_25e0d6_6e14d0_Result = 0);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_1.ads:41:):test case 2 test commitment violated");
         end;
         return Test_Solve_Part_Two_Puzzle_25e0d6_6e14d0_Result;
      end;
   end Wrap_Test_Solve_Part_Two_Puzzle_25e0d6_6e14d0;
--  end read only

--  begin read only
   procedure Test_Solve_Part_Two_Puzzle_test_case_2 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_Two_Puzzle_25e0d6_6e14d0 (Gnattest_T : in out Test) renames Test_Solve_Part_Two_Puzzle_test_case_2;
--  id:2.2/25e0d62819ef6b95/Solve_Part_Two_Puzzle/1/0/test_case_2/
   procedure Test_Solve_Part_Two_Puzzle_test_case_2 (Gnattest_T : in out Test) is
   --  day_1.ads:26:4:Solve_Part_Two_Puzzle
      function Solve_Part_Two_Puzzle (Input : String) return Natural renames Wrap_Test_Solve_Part_Two_Puzzle_25e0d6_6e14d0;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Solve_Part_Two_Puzzle ("1221") = 0,
         "Test '1221' failed");

--  begin read only
   end Test_Solve_Part_Two_Puzzle_test_case_2;
--  end read only

--  begin read only
   function Wrap_Test_Solve_Part_Two_Puzzle_25e0d6_7e0a31 (Input : String)  return Natural
   is
   begin
      begin
         pragma Assert
           ((Input'Length mod 2 = 0 and then (for all C of Input => C in '0' .. '9')) and (Input = "123425"));
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_1.ads:44):test case 3 test requirement violated");
      end;
      declare
         Test_Solve_Part_Two_Puzzle_25e0d6_7e0a31_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_1.Solve_Part_Two_Puzzle (Input);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_Two_Puzzle_25e0d6_7e0a31_Result = 4);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_1.ads:45:):test case 3 test commitment violated");
         end;
         return Test_Solve_Part_Two_Puzzle_25e0d6_7e0a31_Result;
      end;
   end Wrap_Test_Solve_Part_Two_Puzzle_25e0d6_7e0a31;
--  end read only

--  begin read only
   procedure Test_Solve_Part_Two_Puzzle_test_case_3 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_Two_Puzzle_25e0d6_7e0a31 (Gnattest_T : in out Test) renames Test_Solve_Part_Two_Puzzle_test_case_3;
--  id:2.2/25e0d62819ef6b95/Solve_Part_Two_Puzzle/1/0/test_case_3/
   procedure Test_Solve_Part_Two_Puzzle_test_case_3 (Gnattest_T : in out Test) is
   --  day_1.ads:26:4:Solve_Part_Two_Puzzle
      function Solve_Part_Two_Puzzle (Input : String) return Natural renames Wrap_Test_Solve_Part_Two_Puzzle_25e0d6_7e0a31;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Solve_Part_Two_Puzzle ("123425") = 4,
         "Test '123425' failed");

--  begin read only
   end Test_Solve_Part_Two_Puzzle_test_case_3;
--  end read only

--  begin read only
   function Wrap_Test_Solve_Part_Two_Puzzle_25e0d6_7dcc30 (Input : String)  return Natural
   is
   begin
      begin
         pragma Assert
           ((Input'Length mod 2 = 0 and then (for all C of Input => C in '0' .. '9')) and (Input = "123123"));
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_1.ads:48):test case 4 test requirement violated");
      end;
      declare
         Test_Solve_Part_Two_Puzzle_25e0d6_7dcc30_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_1.Solve_Part_Two_Puzzle (Input);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_Two_Puzzle_25e0d6_7dcc30_Result = 12);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_1.ads:49:):test case 4 test commitment violated");
         end;
         return Test_Solve_Part_Two_Puzzle_25e0d6_7dcc30_Result;
      end;
   end Wrap_Test_Solve_Part_Two_Puzzle_25e0d6_7dcc30;
--  end read only

--  begin read only
   procedure Test_Solve_Part_Two_Puzzle_test_case_4 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_Two_Puzzle_25e0d6_7dcc30 (Gnattest_T : in out Test) renames Test_Solve_Part_Two_Puzzle_test_case_4;
--  id:2.2/25e0d62819ef6b95/Solve_Part_Two_Puzzle/1/0/test_case_4/
   procedure Test_Solve_Part_Two_Puzzle_test_case_4 (Gnattest_T : in out Test) is
   --  day_1.ads:26:4:Solve_Part_Two_Puzzle
      function Solve_Part_Two_Puzzle (Input : String) return Natural renames Wrap_Test_Solve_Part_Two_Puzzle_25e0d6_7dcc30;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Solve_Part_Two_Puzzle ("123123") = 12,
         "Test '123123' failed");

--  begin read only
   end Test_Solve_Part_Two_Puzzle_test_case_4;
--  end read only

--  begin read only
   function Wrap_Test_Solve_Part_Two_Puzzle_25e0d6_197ea0 (Input : String)  return Natural
   is
   begin
      begin
         pragma Assert
           ((Input'Length mod 2 = 0 and then (for all C of Input => C in '0' .. '9')) and (Input = "12131415"));
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_1.ads:52):test case 5 test requirement violated");
      end;
      declare
         Test_Solve_Part_Two_Puzzle_25e0d6_197ea0_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_1.Solve_Part_Two_Puzzle (Input);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_Two_Puzzle_25e0d6_197ea0_Result = 4);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_1.ads:53:):test case 5 test commitment violated");
         end;
         return Test_Solve_Part_Two_Puzzle_25e0d6_197ea0_Result;
      end;
   end Wrap_Test_Solve_Part_Two_Puzzle_25e0d6_197ea0;
--  end read only

--  begin read only
   procedure Test_Solve_Part_Two_Puzzle_test_case_5 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_Two_Puzzle_25e0d6_197ea0 (Gnattest_T : in out Test) renames Test_Solve_Part_Two_Puzzle_test_case_5;
--  id:2.2/25e0d62819ef6b95/Solve_Part_Two_Puzzle/1/0/test_case_5/
   procedure Test_Solve_Part_Two_Puzzle_test_case_5 (Gnattest_T : in out Test) is
   --  day_1.ads:26:4:Solve_Part_Two_Puzzle
      function Solve_Part_Two_Puzzle (Input : String) return Natural renames Wrap_Test_Solve_Part_Two_Puzzle_25e0d6_197ea0;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Solve_Part_Two_Puzzle ("12131415") = 4,
         "Test '12131415' failed");

--  begin read only
   end Test_Solve_Part_Two_Puzzle_test_case_5;
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
end Day_1.Test_Data.Tests;

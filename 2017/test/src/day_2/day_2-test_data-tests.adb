--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Day_2.Test_Data.

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
package body Day_2.Test_Data.Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only
--  begin read only
   function Wrap_Test_Solve_Part_One_Line_0adfcb_aad9da (Line : String)  return Natural
   is
   begin
      begin
         pragma Assert
           (((for all C of Line => C in '0' .. '9' | ' ' | ASCII.HT)) and (Line = "5 1 9 5"));
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_2.ads:10):test case 1 test requirement violated");
      end;
      declare
         Test_Solve_Part_One_Line_0adfcb_aad9da_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_2.Solve_Part_One_Line (Line);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_One_Line_0adfcb_aad9da_Result = 8);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_2.ads:11:):test case 1 test commitment violated");
         end;
         return Test_Solve_Part_One_Line_0adfcb_aad9da_Result;
      end;
   end Wrap_Test_Solve_Part_One_Line_0adfcb_aad9da;
--  end read only

--  begin read only
   procedure Test_Solve_Part_One_Line_test_case_1 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_One_Line_0adfcb_aad9da (Gnattest_T : in out Test) renames Test_Solve_Part_One_Line_test_case_1;
--  id:2.2/0adfcb6958e2f8aa/Solve_Part_One_Line/1/0/test_case_1/
   procedure Test_Solve_Part_One_Line_test_case_1 (Gnattest_T : in out Test) is
   --  day_2.ads:3:4:Solve_Part_One_Line
      function Solve_Part_One_Line (Line : String) return Natural renames Wrap_Test_Solve_Part_One_Line_0adfcb_aad9da;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Day_2.Solve_Part_One_Line ("5 1 9 5") = 8,
         "Test '5 1 9 5' failed");

--  begin read only
   end Test_Solve_Part_One_Line_test_case_1;
--  end read only

--  begin read only
   function Wrap_Test_Solve_Part_One_Line_0adfcb_cde27f (Line : String)  return Natural
   is
   begin
      begin
         pragma Assert
           (((for all C of Line => C in '0' .. '9' | ' ' | ASCII.HT)) and (Line = "7 5 3 "));
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_2.ads:14):test case 2 test requirement violated");
      end;
      declare
         Test_Solve_Part_One_Line_0adfcb_cde27f_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_2.Solve_Part_One_Line (Line);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_One_Line_0adfcb_cde27f_Result = 4);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_2.ads:15:):test case 2 test commitment violated");
         end;
         return Test_Solve_Part_One_Line_0adfcb_cde27f_Result;
      end;
   end Wrap_Test_Solve_Part_One_Line_0adfcb_cde27f;
--  end read only

--  begin read only
   procedure Test_Solve_Part_One_Line_test_case_2 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_One_Line_0adfcb_cde27f (Gnattest_T : in out Test) renames Test_Solve_Part_One_Line_test_case_2;
--  id:2.2/0adfcb6958e2f8aa/Solve_Part_One_Line/1/0/test_case_2/
   procedure Test_Solve_Part_One_Line_test_case_2 (Gnattest_T : in out Test) is
   --  day_2.ads:3:4:Solve_Part_One_Line
      function Solve_Part_One_Line (Line : String) return Natural renames Wrap_Test_Solve_Part_One_Line_0adfcb_cde27f;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Day_2.Solve_Part_One_Line ("7 5 3") = 4,
         "Test '7 5 3 ' failed");

--  begin read only
   end Test_Solve_Part_One_Line_test_case_2;
--  end read only

--  begin read only
   function Wrap_Test_Solve_Part_One_Line_0adfcb_21e612 (Line : String)  return Natural
   is
   begin
      begin
         pragma Assert
           (((for all C of Line => C in '0' .. '9' | ' ' | ASCII.HT)) and (Line = "2 4 6 8"));
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_2.ads:18):test case 3 test requirement violated");
      end;
      declare
         Test_Solve_Part_One_Line_0adfcb_21e612_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_2.Solve_Part_One_Line (Line);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_One_Line_0adfcb_21e612_Result = 6);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_2.ads:19:):test case 3 test commitment violated");
         end;
         return Test_Solve_Part_One_Line_0adfcb_21e612_Result;
      end;
   end Wrap_Test_Solve_Part_One_Line_0adfcb_21e612;
--  end read only

--  begin read only
   procedure Test_Solve_Part_One_Line_test_case_3 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_One_Line_0adfcb_21e612 (Gnattest_T : in out Test) renames Test_Solve_Part_One_Line_test_case_3;
--  id:2.2/0adfcb6958e2f8aa/Solve_Part_One_Line/1/0/test_case_3/
   procedure Test_Solve_Part_One_Line_test_case_3 (Gnattest_T : in out Test) is
   --  day_2.ads:3:4:Solve_Part_One_Line
      function Solve_Part_One_Line (Line : String) return Natural renames Wrap_Test_Solve_Part_One_Line_0adfcb_21e612;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Day_2.Solve_Part_One_Line ("2 4 6 8") = 6,
         "Test '2 4 6 8' failed");

--  begin read only
   end Test_Solve_Part_One_Line_test_case_3;
--  end read only

--  begin read only
   function Wrap_Test_Solve_Part_One_Line_0adfcb_db6703 (Line : String)  return Natural
   is
   begin
      begin
         pragma Assert
           (((for all C of Line => C in '0' .. '9' | ' ' | ASCII.HT)) and (Line = "62" & ASCII.HT & "1649" & ASCII.HT & "1731" & ASCII.HT & "76" & ASCII.HT & "51" & ASCII.HT & "1295" & ASCII.HT & "349" & ASCII.HT & "719" & ASCII.HT & "52" & ASCII.HT & "1984" & ASCII.HT & "2015" & ASCII.HT & "2171" & ASCII.HT & "981" & ASCII.HT & "1809" & ASCII.HT & "181" & ASCII.HT & "1715"));
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_2.ads:22):test case 4 test requirement violated");
      end;
      declare
         Test_Solve_Part_One_Line_0adfcb_db6703_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_2.Solve_Part_One_Line (Line);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_One_Line_0adfcb_db6703_Result = 2120);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_2.ads:38:):test case 4 test commitment violated");
         end;
         return Test_Solve_Part_One_Line_0adfcb_db6703_Result;
      end;
   end Wrap_Test_Solve_Part_One_Line_0adfcb_db6703;
--  end read only

--  begin read only
   procedure Test_Solve_Part_One_Line_test_case_4 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_One_Line_0adfcb_db6703 (Gnattest_T : in out Test) renames Test_Solve_Part_One_Line_test_case_4;
--  id:2.2/0adfcb6958e2f8aa/Solve_Part_One_Line/1/0/test_case_4/
   procedure Test_Solve_Part_One_Line_test_case_4 (Gnattest_T : in out Test) is
   --  day_2.ads:3:4:Solve_Part_One_Line
      function Solve_Part_One_Line (Line : String) return Natural renames Wrap_Test_Solve_Part_One_Line_0adfcb_db6703;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Day_2.Solve_Part_One_Line ("62" & ASCII.HT & "1649" & ASCII.HT &
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
           "1715") = 2120,
         "Test long line failed");

--  begin read only
   end Test_Solve_Part_One_Line_test_case_4;
--  end read only

--  begin read only
   function Wrap_Test_Solve_Part_Two_Line_b2269c_f2e14f (Line : String)  return Natural
   is
   begin
      begin
         pragma Assert
           (((for all C of Line => C in '0' .. '9' | ' ' | ASCII.HT)) and (Line = "5 9 2 8"));
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_2.ads:47):test case 1 test requirement violated");
      end;
      declare
         Test_Solve_Part_Two_Line_b2269c_f2e14f_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_2.Solve_Part_Two_Line (Line);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_Two_Line_b2269c_f2e14f_Result = 4);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_2.ads:48:):test case 1 test commitment violated");
         end;
         return Test_Solve_Part_Two_Line_b2269c_f2e14f_Result;
      end;
   end Wrap_Test_Solve_Part_Two_Line_b2269c_f2e14f;
--  end read only

--  begin read only
   procedure Test_Solve_Part_Two_Line_test_case_1 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_Two_Line_b2269c_f2e14f (Gnattest_T : in out Test) renames Test_Solve_Part_Two_Line_test_case_1;
--  id:2.2/b2269c461a0017c2/Solve_Part_Two_Line/1/0/test_case_1/
   procedure Test_Solve_Part_Two_Line_test_case_1 (Gnattest_T : in out Test) is
   --  day_2.ads:40:4:Solve_Part_Two_Line
      function Solve_Part_Two_Line (Line : String) return Natural renames Wrap_Test_Solve_Part_Two_Line_b2269c_f2e14f;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Day_2.Solve_Part_Two_Line ("5 9 2 8") = 4,
         "Test '5 9 2 8' failed.");

--  begin read only
   end Test_Solve_Part_Two_Line_test_case_1;
--  end read only

--  begin read only
   function Wrap_Test_Solve_Part_Two_Line_b2269c_630640 (Line : String)  return Natural
   is
   begin
      begin
         pragma Assert
           (((for all C of Line => C in '0' .. '9' | ' ' | ASCII.HT)) and (Line = "9 4 7 3"));
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_2.ads:51):test case 2 test requirement violated");
      end;
      declare
         Test_Solve_Part_Two_Line_b2269c_630640_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_2.Solve_Part_Two_Line (Line);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_Two_Line_b2269c_630640_Result = 3);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_2.ads:52:):test case 2 test commitment violated");
         end;
         return Test_Solve_Part_Two_Line_b2269c_630640_Result;
      end;
   end Wrap_Test_Solve_Part_Two_Line_b2269c_630640;
--  end read only

--  begin read only
   procedure Test_Solve_Part_Two_Line_test_case_2 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_Two_Line_b2269c_630640 (Gnattest_T : in out Test) renames Test_Solve_Part_Two_Line_test_case_2;
--  id:2.2/b2269c461a0017c2/Solve_Part_Two_Line/1/0/test_case_2/
   procedure Test_Solve_Part_Two_Line_test_case_2 (Gnattest_T : in out Test) is
   --  day_2.ads:40:4:Solve_Part_Two_Line
      function Solve_Part_Two_Line (Line : String) return Natural renames Wrap_Test_Solve_Part_Two_Line_b2269c_630640;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Day_2.Solve_Part_Two_Line ("9 4 7 3") = 3,
         "Test '9 4 7 3' failed.");

--  begin read only
   end Test_Solve_Part_Two_Line_test_case_2;
--  end read only

--  begin read only
   function Wrap_Test_Solve_Part_Two_Line_b2269c_af53df (Line : String)  return Natural
   is
   begin
      begin
         pragma Assert
           (((for all C of Line => C in '0' .. '9' | ' ' | ASCII.HT)) and (Line = "3 8 6 5"));
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_2.ads:55):test case 3 test requirement violated");
      end;
      declare
         Test_Solve_Part_Two_Line_b2269c_af53df_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_2.Solve_Part_Two_Line (Line);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_Two_Line_b2269c_af53df_Result = 2);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_2.ads:56:):test case 3 test commitment violated");
         end;
         return Test_Solve_Part_Two_Line_b2269c_af53df_Result;
      end;
   end Wrap_Test_Solve_Part_Two_Line_b2269c_af53df;
--  end read only

--  begin read only
   procedure Test_Solve_Part_Two_Line_test_case_3 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_Two_Line_b2269c_af53df (Gnattest_T : in out Test) renames Test_Solve_Part_Two_Line_test_case_3;
--  id:2.2/b2269c461a0017c2/Solve_Part_Two_Line/1/0/test_case_3/
   procedure Test_Solve_Part_Two_Line_test_case_3 (Gnattest_T : in out Test) is
   --  day_2.ads:40:4:Solve_Part_Two_Line
      function Solve_Part_Two_Line (Line : String) return Natural renames Wrap_Test_Solve_Part_Two_Line_b2269c_af53df;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Day_2.Solve_Part_Two_Line ("3 8 6 5") = 2,
         "Test '3 8 6 5' failed.");

--  begin read only
   end Test_Solve_Part_Two_Line_test_case_3;
--  end read only

--  begin read only
   function Wrap_Test_Solve_Part_Two_Line_b2269c_38c279 (Line : String)  return Natural
   is
   begin
      begin
         pragma Assert
           (((for all C of Line => C in '0' .. '9' | ' ' | ASCII.HT)) and (Line = "62" & ASCII.HT & "1649" & ASCII.HT & "1731" & ASCII.HT & "76" & ASCII.HT & "51" & ASCII.HT & "1295" & ASCII.HT & "349" & ASCII.HT & "719" & ASCII.HT & "52" & ASCII.HT & "1984" & ASCII.HT & "2015" & ASCII.HT & "2171" & ASCII.HT & "981" & ASCII.HT & "1809" & ASCII.HT & "181" & ASCII.HT & "1715"));
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "req_sloc(day_2.ads:59):test case 4 test requirement violated");
      end;
      declare
         Test_Solve_Part_Two_Line_b2269c_38c279_Result : constant Natural := GNATtest_Generated.GNATtest_Standard.Day_2.Solve_Part_Two_Line (Line);
      begin
         begin
            pragma Assert
              (Test_Solve_Part_Two_Line_b2269c_38c279_Result = 32);
         exception
            when System.Assertions.Assert_Failure =>
               AUnit.Assertions.Assert
                 (False,
                  "ens_sloc(day_2.ads:75:):test case 4 test commitment violated");
         end;
         return Test_Solve_Part_Two_Line_b2269c_38c279_Result;
      end;
   end Wrap_Test_Solve_Part_Two_Line_b2269c_38c279;
--  end read only

--  begin read only
   procedure Test_Solve_Part_Two_Line_test_case_4 (Gnattest_T : in out Test);
   procedure Test_Solve_Part_Two_Line_b2269c_38c279 (Gnattest_T : in out Test) renames Test_Solve_Part_Two_Line_test_case_4;
--  id:2.2/b2269c461a0017c2/Solve_Part_Two_Line/1/0/test_case_4/
   procedure Test_Solve_Part_Two_Line_test_case_4 (Gnattest_T : in out Test) is
   --  day_2.ads:40:4:Solve_Part_Two_Line
      function Solve_Part_Two_Line (Line : String) return Natural renames Wrap_Test_Solve_Part_Two_Line_b2269c_38c279;
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Day_2.Solve_Part_Two_Line ("62" & ASCII.HT & "1649" & ASCII.HT &
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
           "1715") = 32,
         "Test long line failed");

--  begin read only
   end Test_Solve_Part_Two_Line_test_case_4;
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
end Day_2.Test_Data.Tests;

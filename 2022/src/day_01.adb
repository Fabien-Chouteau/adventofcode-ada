with AOC.Resources;

with Ada.Text_IO;

with Ada.Containers.Formal_Vectors;

procedure Day_01
with SPARK_Mode => On
is
   package TIO renames Ada.Text_IO;
   use type Ada.Containers.Count_Type;

   Today : constant AOC.Day_Range := 01;
   package Resources is new AOC.Resources (Today);

   type Calories_Count is new Natural range 0 .. 999999999;

   package Calories_Count_Vect
   is new Ada.Containers.Formal_Vectors (Natural, Calories_Count);
   use Calories_Count_Vect;

   type Load_Error_Kind is (None, Cannot_Open, Cannot_Close,
                            Invalid_Line, Total_Overflow,
                            List_Too_Small, No_Data);

   procedure Extract_Maximum (List   : in out Calories_Count_Vect.Vector;
                              Result :    out Calories_Count)
     with Pre => not Is_Empty (List),
         Post => (for all Elt of List'Old => Elt <= Result)
                 and then
                 (for some Elt of List'Old => Elt = Result)
                 and then
                 Length (List) = Length (List'Old) - 1;

   procedure Load_Calories (List     : in out Calories_Count_Vect.Vector;
                            Filename :        String;
                            Error    :    out Load_Error_Kind)
     with Pre  => Is_Empty (List),
          Post => (if Error = None then not Is_Empty (List));

   function Value (Str : String) return Calories_Count
     with Pre => Str'Length in 1 .. 9
                 and then
                 (for all C of Str => C in '0' .. '9');

   procedure Print_Solution (Filename : String)
     with Pre => Filename'Length < 1024;

   -------------------
   -- Load_Calories --
   -------------------

   procedure Load_Calories (List     : in out Calories_Count_Vect.Vector;
                            Filename :        String;
                            Error    :    out Load_Error_Kind)
   is
      File : TIO.File_Type;

      Line : String (1 .. 1024);
      Last : Natural;
      Total : Calories_Count := 0;

      procedure Fail (Err : Load_Error_Kind) is
      begin
         TIO.Close (File);
         if TIO.Is_Open (File) then
            Error := Cannot_Close;
         else
            Error := Err;
         end if;
      end Fail;

   begin
      Resources.Open_In_File (File, Filename);

      if not TIO.Is_Open (File) then
         Error := Cannot_Open;
         return;
      end if;

      loop
         TIO.Get_Line (File, Line, Last);

         declare
            Input : constant String := Line (Line'First .. Last);
            Current : Calories_Count;
         begin

            if Input'Length /= 0 then
               if Input'Length > 9
                 or else
                  (for some C of Input => C not in '0' .. '9')
               then
                  Fail (Invalid_Line);
                  return;
               end if;

               Current := Value (Input);

               if Total > Calories_Count'Last - Current then
                  --  Overflow on total calories...
                  Fail (Total_Overflow);
                  return;
               end if;

               Total := Total + Current;
            end if;

            if Input'Length = 0 or else TIO.End_Of_File (File) then

               --  Empty line or end of file means end of list for the current
               --  elf. Save the total.

               if Length (List) = List.Capacity then
                  --  Not enough room for all the elves...
                  Fail (List_Too_Small);
                  return;
               end if;

               Append (List, Total);
               Total := 0;

            end if;
         end;

         exit when TIO.End_Of_File (File);
      end loop;

      TIO.Close (File);
      if TIO.Is_Open (File) then
         Error := Cannot_Close;
      else
         Error := None;
      end if;

   end Load_Calories;

   ---------------------
   -- Extract_Maximum --
   ---------------------

   procedure Extract_Maximum (List   : in out Calories_Count_Vect.Vector;
                              Result :    out Calories_Count)
   is
      First : constant Natural := First_Index (List);
      Last  : constant Natural := Last_Index (List);
      Elt   : Calories_Count;

      Max_Index : Natural := First;
   begin
      Result := Element (List, Max_Index);

      for Index in First .. Last loop
         Elt := Element (List, Index);

         if Elt >= Result then
            Result := Elt;
            Max_Index := Index;
         end if;

         pragma Loop_Invariant (Max_Index in First .. Last);
         pragma Loop_Invariant ((for some Elt of List => Elt = Result));
         pragma Loop_Invariant
           ((for all Idx in First .. Index => Element (List, Idx) <= Result));
      end loop;

      Delete (List, Max_Index);
   end Extract_Maximum;

   -----------
   -- Value --
   -----------

   function Value (Str : String) return Calories_Count
   is
      --  Trust me, I'm an engineer...
      pragma SPARK_Mode (Off);
   begin
      return Calories_Count'Value (Str);
   end Value;

   --------------------
   -- Print_Solution --
   --------------------

   procedure Print_Solution (Filename : String) is
      List : Calories_Count_Vect.Vector (1024);
      Error : Load_Error_Kind;

      Max, Total : Calories_Count;

      procedure Print (Str : String) is
      begin
         TIO.Put (Filename);
         TIO.Put_Line (Str);
      end Print;
   begin
      Load_Calories (List, Filename, Error);

      if Error = None then

         if Length (List) >= 3 then
            Total := 0;
            for Cnt in 1 .. 3 loop
               Extract_Maximum (List, Max);

               pragma Loop_Invariant
                 (Length (List) >= Capacity_Range (3 - Cnt));

               if Total > Calories_Count'Last - Max then
                  Print (" FAIL: Total overflow");
                  return;
               else
                  Total := Total + Max;
               end if;
            end loop;

            Print (" Total:" & Total'Img);
         else
            Print (" FAIL: not enought elves (" &
                     Length (List)'Img & ")");
         end if;
         pragma Unreferenced (List);
      else
         Print (" FAIL: " & Error'Img);
      end if;
   end Print_Solution;

begin
   Print_Solution ("example1.txt");
   Print_Solution ("myinput1.txt");
end Day_01;

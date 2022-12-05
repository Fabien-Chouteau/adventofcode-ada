with AOC.Resources;
with AAA.Strings;

with Ada.Text_IO;

procedure Day_02
with SPARK_Mode => On
is
   package TIO renames Ada.Text_IO;

   Today : constant AOC.Day_Range := 02;
   package Resources is new AOC.Resources (Today);

   type Shape_Kind is (Rock, Paper, Scissors);

   function From_Char (C : Character) return Shape_Kind
   is (case C is
          when 'A' | 'X' => Rock,
          when 'B' | 'Y' => Paper,
          when 'C' | 'Z' => Scissors,
          when others => raise Program_Error);

   function Value (Shape : Shape_Kind) return Positive
   is (case Shape is
          when Rock     => 1,
          when Paper    => 2,
          when Scissors => 3);

   type Outcome_Kind is (Draw, I_Win, Elf_Wins);

   function From_Char (C : Character) return Outcome_Kind
   is (case C is
          when 'X' => Elf_Wins,
          when 'Y' => Draw,
          when 'Z' => I_Win,
          when others => raise Program_Error);

   function Value (Outcome : Outcome_Kind) return Natural
   is (case Outcome is
          when Draw     => 3,
          when I_Win    => 6,
          when Elf_Wins => 0);

   function Game (Me, Elf : Shape_Kind) return Outcome_Kind
   is (case Me is
          when Rock     => (case Elf is
                               when Rock     => Draw,
                               when Paper    => Elf_Wins,
                               when Scissors => I_Win),
          when Paper    => (case Elf is
                               when Rock     => I_Win,
                               when Paper    => Draw,
                               when Scissors => Elf_Wins),
          when Scissors => (case Elf is
                               when Rock     => Elf_Wins,
                               when Paper    => I_Win,
                               when Scissors => Draw));

   function My_Pick (Elf              : Shape_Kind;
                     Expected_Outcome : Outcome_Kind)
                     return Shape_Kind
   is (case Elf is
          when Rock     => (case Expected_Outcome is
                               when Draw     => Rock,
                               when Elf_Wins => Scissors,
                               when I_Win    => Paper),
          when Paper    => (case Expected_Outcome is
                               when Draw     => Paper,
                               when Elf_Wins => Rock,
                               when I_Win    => Scissors),
          when Scissors => (case Expected_Outcome is
                               when Draw     => Scissors,
                               when Elf_Wins => Paper,
                               when I_Win    => Rock));

   --------------------
   -- Print_Solution --
   --------------------

   procedure Print_Solution (Filename : String) is
      File : TIO.File_Type;

      Line : String (1 .. 4);
      Last : Natural;

      Score : Natural := 0;
   begin
      Resources.Open_In_File (File, Filename);

      if not TIO.Is_Open (File) then
         TIO.Put_Line ("Cannot open file: '" & Filename & "'");
         return;
      end if;

      while not TIO.End_Of_File (File) loop
         TIO.Get_Line (File, Line, Last);

         declare
            use AAA.Strings;
            Input : constant String := Line (Line'First .. Last);

            Split : constant AAA.Strings.Vector :=
              AAA.Strings.Split (Input, Separator => ' ', Trim => True);

            Me, Elf : Shape_Kind;
            Outcome : Outcome_Kind;
         begin
            if Split.Count /= 2
              or else
                (for some Elt of Split =>
                   Elt'Length /= 1
                    or else
                   Elt (Elt'First) not in 'A' .. 'C' | 'X' .. 'Z')
            then
               TIO.Put_Line ("Invalid input: '" & Input & "'");
               return;
            end if;

            Elf := From_Char (Split.First_Element (1));
            Me := From_Char (Split.Last_Element (1));

            Outcome := Game (Me, Elf);
            Score := Score + Value (Me) + Value (Outcome);

         end;
      end loop;

      TIO.Put_Line (Filename & " my score =>" & Score'Img);
      TIO.Close (File);
   end Print_Solution;

   ----------------------
   -- Print_Solution_2 --
   ----------------------

   procedure Print_Solution_2 (Filename : String) is
      File : TIO.File_Type;

      Line : String (1 .. 4);
      Last : Natural;

      Score : Natural := 0;
   begin
      Resources.Open_In_File (File, Filename);

      if not TIO.Is_Open (File) then
         TIO.Put_Line ("Cannot open file: '" & Filename & "'");
         return;
      end if;

      while not TIO.End_Of_File (File) loop
         TIO.Get_Line (File, Line, Last);

         declare
            use AAA.Strings;
            Input : constant String := Line (Line'First .. Last);

            Split : constant AAA.Strings.Vector :=
              AAA.Strings.Split (Input, Separator => ' ', Trim => True);

            Me, Elf : Shape_Kind;
            Expected_Outcome : Outcome_Kind;
         begin
            if Split.Count /= 2
              or else
                (for some Elt of Split =>
                   Elt'Length /= 1
                    or else
                   Elt (Elt'First) not in 'A' .. 'C' | 'X' .. 'Z')
            then
               TIO.Put_Line ("Invalid input: '" & Input & "'");
               return;
            end if;

            Elf := From_Char (Split.First_Element (1));
            Expected_Outcome := From_Char (Split.Last_Element (1));
            Me := My_Pick (Elf, Expected_Outcome);

            Score := Score + Value (Me) + Value (Expected_Outcome);

         end;
      end loop;

      TIO.Put_Line (Filename & " step 2: my score =>" & Score'Img);
      TIO.Close (File);
   end Print_Solution_2;
begin
   Print_Solution ("example1.txt");
   Print_Solution ("myinput1.txt");
   Print_Solution_2 ("example1.txt");
   Print_Solution_2 ("myinput1.txt");
end Day_02;

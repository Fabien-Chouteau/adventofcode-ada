with AOC.Resources;
with Adventofcode_2023_Config;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with AAA.Strings; use AAA.Strings;

procedure Day_01 is
   package Resources
   is new AOC.Resources (Adventofcode_2023_Config.Crate_Name, 01);

   -------------------------------
   -- Get_Calibration_Sum_Part1 --
   -------------------------------

   function Get_Calibration_Sum_Part1 (Filename : String) return Natural is
      File : File_Type;
      Line : String (1 .. 1024);
      Last : Natural;
      Sum : Natural := 0;
   begin
      Resources.Open_In_File (File, Filename);

      if not Is_Open (File) then
         raise Program_Error with "Cannot open '" & Filename & "'";
      end if;

      loop
         Get_Line (File, Line, Last);

         declare
            Input : constant String := Line (Line'First .. Last);
            First_Digit, Last_Digit : Character;
         begin
            for C of Input loop
               if C in '0' .. '9' then
                  First_Digit := C;
                  exit;
               end if;
            end loop;

            for C of reverse Input loop
               if C in '0' .. '9' then
                  Last_Digit := C;
                  exit;
               end if;
            end loop;

            Sum := Sum +
              (First_Digit'Enum_Rep - Character'Enum_Rep ('0')) * 10 +
               (Last_Digit'Enum_Rep - Character'Enum_Rep ('0'));
         end;

         exit when End_Of_File (File);
      end loop;
      return Sum;
   end Get_Calibration_Sum_Part1;

   -------------------------------
   -- Get_Calibration_Sum_Part2 --
   -------------------------------

   function Get_Calibration_Sum_Part2 (Filename : String) return Natural is

      type Token is (D1, D2, D3, D4, D5, D6, D7, D8, D9, One, Two,
                     Three, Four, Five, Six, Seven, Eight, Nine);

      function Img (T : Token) return String
      is (case T is
             when D1 .. D9 => T'Img (2 .. 2),
             when others => To_Lower_Case (T'Img));

      function Value (T : Token) return Natural
      is (case T is
             when D1 | One => 1,
             when D2 | Two => 2,
             when D3 | Three => 3,
             when D4 | Four => 4,
             when D5 | Five => 5,
             when D6 | Six => 6,
             when D7 | Seven => 7,
             when D8 | Eight => 8,
             when D9 | Nine => 9);

      function Find_Token (Str : String;
                           T : Token;
                           Dir : Ada.Strings.Direction)
                           return Natural
      is (Index (Str, Img (T), Dir));

      function First_Token (Str : String;
                            Dir : Ada.Strings.Direction)
                            return Token
      is
         Index : Natural := 0;
         Best_Index : Natural :=
           (case Dir is
               when Ada.Strings.Forward => Natural'Last,
               when Ada.Strings.Backward => Natural'First);
         Best_Token : Token := Token'First;
      begin
         for T in Token loop
            Index := Find_Token (Str, T, Dir);
            if Index /= 0 then
               case Dir is
                  when Ada.Strings.Forward =>
                     if Index < Best_Index then
                        Best_Index := Index;
                        Best_Token := T;
                     end if;
                  when Ada.Strings.Backward =>
                     if Index > Best_Index then
                        Best_Index := Index;
                        Best_Token := T;
                     end if;
               end case;
            end if;
         end loop;

         return Best_Token;
      end First_Token;

      File : File_Type;
      Line : String (1 .. 1024);
      Last : Natural;
      Sum : Natural := 0;
   begin
      Resources.Open_In_File (File, Filename);

      if not Is_Open (File) then
         raise Program_Error with "Cannot open '" & Filename & "'";
      end if;

      loop
         Get_Line (File, Line, Last);

         declare
            Input : constant String := Line (Line'First .. Last);
            First_Digit : constant Token :=
              First_Token (Input, Ada.Strings.Forward);
            Last_Digit : constant Token :=
              First_Token (Input, Ada.Strings.Backward);
         begin
            Sum := Sum + Value (First_Digit) * 10 + Value (Last_Digit);
         end;

         exit when End_Of_File (File);
      end loop;
      return Sum;
   end Get_Calibration_Sum_Part2;
begin

   Put_Line ("Day 01 part 01 example:" &
               Get_Calibration_Sum_Part1 ("example.txt")'Img);
   Put_Line ("Day 01 part 01 my input:" &
               Get_Calibration_Sum_Part1 ("myinput.txt")'Img);

   Put_Line ("Day 01 part 02 example:" &
               Get_Calibration_Sum_Part2 ("example_part2.txt")'Img);
   Put_Line ("Day 01 part 02 my input:" &
               Get_Calibration_Sum_Part2 ("myinput_part2.txt")'Img);

end Day_01;

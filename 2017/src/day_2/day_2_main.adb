with Ada.Text_IO; use Ada.Text_IO;
with Day_2;

procedure Day_2_Main is
   Result       : Natural := 0;
   Part_One_Acc : Natural := 0;
   Part_Two_Acc : Natural := 0;
begin
   while not End_Of_File (Standard_Input) loop
      declare
         --  Get the puzzle input from the standard input
         Input  : constant String := Get_Line;
      begin

         exit when Input'Length = 0;

         --  Input sanitization
         if (for some C of Input => C not in '0' .. '9' | ' ' | ASCII.HT) then
            Put_Line ("Invalid character in puzzle input.");
            return;
         end if;

         Put_Line ("Puzzle line input is: '" & Input & "'");

         Result := Day_2.Solve_Part_One_Line (Input);
         Put_Line ("Part one result for line:" & Result'Img);
         Part_One_Acc := Part_One_Acc + Result;

         Result := Day_2.Solve_Part_Two_Line (Input);
         Put_Line ("Part two result for line:" & Result'Img);
         Part_Two_Acc := Part_Two_Acc + Result;
      end;
   end loop;

   Put_Line ("Part one answer is:" & Part_One_Acc'Img);
   Put_Line ("Part two answer is:" & Part_Two_Acc'Img);
end Day_2_Main;

with Ada.Text_IO; use Ada.Text_IO;
with Day_1;

procedure Day_1_Main is
   --  Get the puzzle input from the standard input
   Input  : constant String := Get_Line;

   Answer : Natural;
begin
   --  Input sanitization
   if (for some C of Input => C not in '0' .. '9') then
      Put_Line ("Invalid character in puzzle input.");
      return;
   end if;

   Put_Line ("Puzzle input is: '" & Input & "'");

   Answer := Day_1.Solve_Part_One_Puzzle (Input);
   Put_Line ("Part one answer is:" & Answer'Img);

   if Input'Length mod 2 /= 0 then
      Put_Line ("The puzzle input doesn't have an even number of elements.");
      Put_Line ("We can't solve part two.");
   else
      Answer := Day_1.Solve_Part_Two_Puzzle (Input);
      Put_Line ("Part two answer is:" & Answer'Img);
   end if;
end Day_1_Main;

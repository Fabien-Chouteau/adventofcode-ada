with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO;
with Day_3;

procedure Day_3_Main is
   Input  : Integer;
   Result : Natural;
begin
   while not End_Of_File (Standard_Input) loop
      --  Get the puzzle input from the standard input
      Ada.Integer_Text_IO.Get (Input);

      Put_Line ("Puzzle line input is: " & Input'Img);

      if Input > 0 then
         Result := Day_3.Solve_Part_One (Input);
         Put_Line ("Part one result is:" & Result'Img);
      else
         Put_Line ("Invalid input");
      end if;
   end loop;
end Day_3_Main;

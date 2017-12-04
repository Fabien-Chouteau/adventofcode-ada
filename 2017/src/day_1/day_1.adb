package body Day_1 is

   ---------------------------
   -- Solve_Part_One_Puzzle --
   ---------------------------

   function Solve_Part_One_Puzzle
     (Input : String)
      return Natural
   is
      Acc     : Natural := 0;
      Current : Character;
      Next    : Character;
   begin
      --  For each index of the input string
      for Index in Input'Range loop

         --  Take the character at the current index
         Current := Input (Index);

         --  Take the next charecter, possibly at the begining of the string
         if Index = Input'Last then
            Next := Input (Input'First);
         else
            Next := Input (Index + 1);
         end if;

         --  If the next character is the same as the current one, we add its
         --  value to the accumulator.
         if Next = Current then
            Acc := Acc + Character'Pos (Current) - Character'Pos ('0');
         end if;
      end loop;
      return Acc;
   end Solve_Part_One_Puzzle;

   ---------------------------
   -- Solve_Part_One_Puzzle --
   ---------------------------

   function Solve_Part_Two_Puzzle
     (Input : String)
      return Natural
   is
      Acc        : Natural := 0;
      Current    : Character;
      Next_Index : Natural;
      Next       : Character;
   begin
      --  For each index of the input string
      for Index in Input'Range loop

         --  Take the character at the current index
         Current := Input (Index);

         --  The caracter to compare is  halfway around the list
         Next_Index := Index + Input'Length / 2;

         --  If the index is not in the range of the input, we c
         if Next_Index not in Input'Range then
            Next_Index := Input'First + Next_Index - Input'Last - 1;
         end if;

         --  Take the next charecter
         Next := Input (Next_Index);

         --  If the next character is the same as the current one, we add its
         --  value to the accumulator.
         if Next = Current then
            Acc := Acc + Character'Pos (Current) - Character'Pos ('0');
         end if;
      end loop;
      return Acc;
   end Solve_Part_Two_Puzzle;
end Day_1;

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO;

with Ada.Containers.Vectors;

package body Day_2 is

   package Natural_Vector is new Ada.Containers.Vectors
     (Index_Type   => Natural,
      Element_Type => Natural);

   function To_Vector (Line : String) return Natural_Vector.Vector;

   ---------------
   -- To_Vector --
   ---------------

   function To_Vector
     (Line : String)
      return Natural_Vector.Vector
   is
      Vect : Natural_Vector.Vector;
      Num  : Integer;
      Last : Positive := Line'First;
   begin
      loop
         exit when Last >= Line'Last;

         Ada.Integer_Text_IO.Get (From => Line (Last .. Line'Last),
                                  Item => Num,
                                  Last => Last);
         Last := Last + 1;
         Vect.Append (Num);
      end loop;
      return Vect;
   end To_Vector;

   -------------------------
   -- Solve_Part_One_Line --
   -------------------------

   function Solve_Part_One_Line
     (Line : String)
      return Natural
   is
      Min  : Natural := Natural'Last;
      Max  : Natural := Natural'First;
      Vect : constant Natural_Vector.Vector := To_Vector (Line);
   begin
      for Num of Vect loop

         if Num > Max then
            Max := Natural (Num);
         end if;

         if Num < Min then
            Min := Natural (Num);
         end if;
      end loop;
      return Max - Min;
   end Solve_Part_One_Line;

   -------------------------
   -- Solve_Part_Wot_Line --
   -------------------------

   function Solve_Part_Two_Line
     (Line : String)
      return Natural
   is
      Vect : constant Natural_Vector.Vector := To_Vector (Line);
   begin

      for Num_1 of Vect loop
         for Num_2 of Vect loop
            if Num_1 /= Num_2 and then (Num_1 rem Num_2) = 0 then
               return Num_1 / Num_2;
            end if;
         end loop;
      end loop;
      raise Program_Error with "evenly divisible values not found...";
   end Solve_Part_Two_Line;

end Day_2;

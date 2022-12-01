package body AOC
with SPARK_Mode => On
is

   ---------
   -- Img --
   ---------

   function Img (Day : Day_Range) return Day_Image is
      Image : constant String := Day'Img;
      Result : Day_Image := "00";
   begin

      --  Day'Img can be either " X" or " XY"
      pragma Assume (Image'Length in 2 .. 3);

      case Day is

         when 1 .. 9   =>

            Result (Result'First) := '0';
            Result (Result'First + 1) := Image (Image'Last);

         when 10 .. 25 =>

            Result (Result'First .. Result'Last) :=
              Image (Image'Last - 1 .. Image'Last);
      end case;

      return Result;
   end Img;

end AOC;

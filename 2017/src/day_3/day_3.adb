with Ada.Text_IO; use Ada.Text_IO;

package body Day_3 is

   --------------------
   -- Solve_Part_One --
   --------------------

   function Solve_Part_One
     (Input : Positive)
      return Natural
   is
      Square_Size        : Natural := 1;
      Upper_Square       : Natural;
      Distance_To_Corner : Natural;

      X, Y : Integer;
   begin
      if Input = 1 then
         return 0;
      end if;

      --  17  16  15  14  13 .
      --  18   5   4   3  12 .
      --  19   6   1   2  11 .
      --  20   7   8   9  10 ^
      --  21  22  23  24  25 |

      loop
         Square_Size := Square_Size + 2;
         Upper_Square := Square_Size**2;

         if Upper_Square >= Input then
            exit;
         end if;
      end loop;

      Distance_To_Corner := Upper_Square - Input;

      for Side in 0 .. 3 loop
         if Distance_To_Corner < Square_Size - 1 then
            case Side is
               when 0 =>
                  X := 0;
                  Y := Distance_To_Corner;
               when 1 =>
                  X := Distance_To_Corner;
                  Y := Square_Size - 1;
               when 2 =>
                  X := Square_Size - 1;
                  Y := Square_Size - 1 - Distance_To_Corner;
               when 3 =>
                  X := Square_Size - 1 - Distance_To_Corner;
                  Y := 0;
            end case;
            exit;
         else
            Distance_To_Corner := Distance_To_Corner - (Square_Size - 1);
         end if;
      end loop;

      X := X - (Square_Size - 1) / 2;
      Y := Y - (Square_Size - 1) / 2;

      return abs X + abs Y;
   end Solve_Part_One;

end Day_3;

package AOC
with SPARK_Mode => On
is

   type Day_Range is range 1 .. 25;
   subtype Day_Image is String (1 .. 2);

   function Img (Day : Day_Range) return Day_Image;

end AOC;

with Ada.Text_IO; use Ada.Text_IO;

generic
   Resource_Day : AOC.Day_Range;
package AOC.Resources
with SPARK_Mode => On
is

   function Folder return String;

   procedure Open_In_File (File : in out Ada.Text_IO.File_Type;
                           Filename : String)
     with
       Pre    => not Is_Open (File),
       Post   => Is_Open (File) and then Ada.Text_IO.Mode (File) = In_File,
       Global => (In_Out => Ada.Text_IO.File_System);

end AOC.Resources;

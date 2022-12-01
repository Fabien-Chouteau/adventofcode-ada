
with Resources;
with Adventofcode_2022_Config;

package body AOC.Resources
with SPARK_Mode => Off
is

   package Base_Resources
   is new Standard.Resources (Adventofcode_2022_Config.Crate_Name);

   ------------
   -- Folder --
   ------------

   function Folder return String is
   begin
      return Base_Resources.Resource_Path & Img (Resource_Day) & "/";
   end Folder;

   ------------------
   -- Open_In_File --
   ------------------

   procedure Open_In_File (File : in out Ada.Text_IO.File_Type;
                           Filename : String)
   is
   begin
      Ada.Text_IO.Open (File,
                        Ada.Text_IO.In_File,
                        Folder & Filename);
   end Open_In_File;

end AOC.Resources;

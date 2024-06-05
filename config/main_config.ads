--  Configuration for main generated by Alire
pragma Restrictions (No_Elaboration_Code);
pragma Style_Checks (Off);

package Main_Config is
   pragma Pure;

   Crate_Version : constant String := "1.0.2";
   Crate_Name : constant String := "main";

   Alire_Host_OS : constant String := "macos";

   Alire_Host_Arch : constant String := "x86_64";

   Alire_Host_Distro : constant String := "homebrew";

   type Build_Profile_Kind is (release, validation, development);
   Build_Profile : constant Build_Profile_Kind := development;

end Main_Config;

pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__zode8.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__zode8.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E008 : Short_Integer; pragma Import (Ada, E008, "ada__exceptions_E");
   E013 : Short_Integer; pragma Import (Ada, E013, "system__soft_links_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exception_table_E");
   E032 : Short_Integer; pragma Import (Ada, E032, "ada__numerics_E");
   E026 : Short_Integer; pragma Import (Ada, E026, "system__exceptions_E");
   E021 : Short_Integer; pragma Import (Ada, E021, "system__soft_links__initialize_E");
   E031 : Short_Integer; pragma Import (Ada, E031, "system__img_int_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "ada__assertions_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "ada__io_exceptions_E");
   E061 : Short_Integer; pragma Import (Ada, E061, "ada__strings_E");
   E065 : Short_Integer; pragma Import (Ada, E065, "ada__strings__utf_encoding_E");
   E109 : Short_Integer; pragma Import (Ada, E109, "interfaces__c_E");
   E125 : Short_Integer; pragma Import (Ada, E125, "system__os_lib_E");
   E073 : Short_Integer; pragma Import (Ada, E073, "ada__tags_E");
   E063 : Short_Integer; pragma Import (Ada, E063, "ada__strings__text_buffers_E");
   E100 : Short_Integer; pragma Import (Ada, E100, "ada__streams_E");
   E131 : Short_Integer; pragma Import (Ada, E131, "system__file_control_block_E");
   E103 : Short_Integer; pragma Import (Ada, E103, "system__finalization_root_E");
   E098 : Short_Integer; pragma Import (Ada, E098, "ada__finalization_E");
   E123 : Short_Integer; pragma Import (Ada, E123, "system__file_io_E");
   E149 : Short_Integer; pragma Import (Ada, E149, "system__storage_pools_E");
   E145 : Short_Integer; pragma Import (Ada, E145, "system__finalization_masters_E");
   E118 : Short_Integer; pragma Import (Ada, E118, "ada__text_io_E");
   E084 : Short_Integer; pragma Import (Ada, E084, "ada__strings__maps_E");
   E080 : Short_Integer; pragma Import (Ada, E080, "ada__strings__unbounded_E");
   E139 : Short_Integer; pragma Import (Ada, E139, "system__img_uns_E");
   E151 : Short_Integer; pragma Import (Ada, E151, "system__pool_global_E");
   E143 : Short_Integer; pragma Import (Ada, E143, "variant_record_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      declare
         procedure F1;
         pragma Import (Ada, F1, "variant_record__finalize_spec");
      begin
         E143 := E143 - 1;
         F1;
      end;
      E151 := E151 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__pool_global__finalize_spec");
      begin
         F2;
      end;
      E080 := E080 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "ada__strings__unbounded__finalize_spec");
      begin
         F3;
      end;
      E118 := E118 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "ada__text_io__finalize_spec");
      begin
         F4;
      end;
      E145 := E145 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "system__finalization_masters__finalize_spec");
      begin
         F5;
      end;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__file_io__finalize_body");
      begin
         E123 := E123 - 1;
         F6;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (Ada, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;
   pragma Favor_Top_Level (No_Param_Proc);

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      Ada.Exceptions'Elab_Spec;
      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E025 := E025 + 1;
      Ada.Numerics'Elab_Spec;
      E032 := E032 + 1;
      System.Exceptions'Elab_Spec;
      E026 := E026 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E021 := E021 + 1;
      E013 := E013 + 1;
      System.Img_Int'Elab_Spec;
      E031 := E031 + 1;
      E008 := E008 + 1;
      Ada.Assertions'Elab_Spec;
      E006 := E006 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E101 := E101 + 1;
      Ada.Strings'Elab_Spec;
      E061 := E061 + 1;
      Ada.Strings.Utf_Encoding'Elab_Spec;
      E065 := E065 + 1;
      Interfaces.C'Elab_Spec;
      E109 := E109 + 1;
      System.Os_Lib'Elab_Body;
      E125 := E125 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E073 := E073 + 1;
      Ada.Strings.Text_Buffers'Elab_Spec;
      E063 := E063 + 1;
      Ada.Streams'Elab_Spec;
      E100 := E100 + 1;
      System.File_Control_Block'Elab_Spec;
      E131 := E131 + 1;
      System.Finalization_Root'Elab_Spec;
      E103 := E103 + 1;
      Ada.Finalization'Elab_Spec;
      E098 := E098 + 1;
      System.File_Io'Elab_Body;
      E123 := E123 + 1;
      System.Storage_Pools'Elab_Spec;
      E149 := E149 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E145 := E145 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E118 := E118 + 1;
      Ada.Strings.Maps'Elab_Spec;
      E084 := E084 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E080 := E080 + 1;
      System.Img_Uns'Elab_Spec;
      E139 := E139 + 1;
      System.Pool_Global'Elab_Spec;
      E151 := E151 + 1;
      Variant_Record'Elab_Spec;
      E143 := E143 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_main");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      if gnat_argc = 0 then
         gnat_argc := argc;
         gnat_argv := argv;
      end if;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   /Users/natha/Ada-1/obj/variant_record.o
   --   /Users/natha/Ada-1/obj/zode8.o
   --   -L/Users/natha/Ada-1/obj/
   --   -L/Users/natha/Ada-1/obj/
   --   -L/users/natha/.local/share/alire/toolchains/gnat_native_13.2.2_9be96041/lib/gcc/x86_64-apple-darwin21.6.0/13.2.0/adalib/
   --   -static
   --   -lgnat
--  END Object file/option list   

end ada_main;

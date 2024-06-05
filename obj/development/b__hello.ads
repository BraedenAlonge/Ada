pragma Warnings (Off);
pragma Ada_95;
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: 13.2.0" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   GNAT_Version_Address : constant System.Address := GNAT_Version'Address;
   pragma Export (C, GNAT_Version_Address, "__gnat_version_address");

   Ada_Main_Program_Name : constant String := "_ada_hello" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#469cad08#;
   pragma Export (C, u00001, "helloB");
   u00002 : constant Version_32 := 16#7320ff5f#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#36bba752#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#a201b8c5#;
   pragma Export (C, u00005, "ada__strings__text_buffersB");
   u00006 : constant Version_32 := 16#a7cfd09b#;
   pragma Export (C, u00006, "ada__strings__text_buffersS");
   u00007 : constant Version_32 := 16#e6d4fa36#;
   pragma Export (C, u00007, "ada__stringsS");
   u00008 : constant Version_32 := 16#24b500cb#;
   pragma Export (C, u00008, "systemS");
   u00009 : constant Version_32 := 16#c71e6c8a#;
   pragma Export (C, u00009, "system__exception_tableB");
   u00010 : constant Version_32 := 16#a99e76d2#;
   pragma Export (C, u00010, "system__exception_tableS");
   u00011 : constant Version_32 := 16#fd5f5f4c#;
   pragma Export (C, u00011, "system__soft_linksB");
   u00012 : constant Version_32 := 16#59289628#;
   pragma Export (C, u00012, "system__soft_linksS");
   u00013 : constant Version_32 := 16#d4c699bf#;
   pragma Export (C, u00013, "system__secondary_stackB");
   u00014 : constant Version_32 := 16#0cf7b57c#;
   pragma Export (C, u00014, "system__secondary_stackS");
   u00015 : constant Version_32 := 16#8f0fd326#;
   pragma Export (C, u00015, "ada__exceptionsB");
   u00016 : constant Version_32 := 16#78ad8bc6#;
   pragma Export (C, u00016, "ada__exceptionsS");
   u00017 : constant Version_32 := 16#0740df23#;
   pragma Export (C, u00017, "ada__exceptions__last_chance_handlerB");
   u00018 : constant Version_32 := 16#6dc27684#;
   pragma Export (C, u00018, "ada__exceptions__last_chance_handlerS");
   u00019 : constant Version_32 := 16#1610bff9#;
   pragma Export (C, u00019, "system__exceptionsS");
   u00020 : constant Version_32 := 16#69416224#;
   pragma Export (C, u00020, "system__exceptions__machineB");
   u00021 : constant Version_32 := 16#8bdfdbe3#;
   pragma Export (C, u00021, "system__exceptions__machineS");
   u00022 : constant Version_32 := 16#7706238d#;
   pragma Export (C, u00022, "system__exceptions_debugB");
   u00023 : constant Version_32 := 16#14bb5898#;
   pragma Export (C, u00023, "system__exceptions_debugS");
   u00024 : constant Version_32 := 16#5436dfa3#;
   pragma Export (C, u00024, "system__img_intS");
   u00025 : constant Version_32 := 16#f2c63a02#;
   pragma Export (C, u00025, "ada__numericsS");
   u00026 : constant Version_32 := 16#174f5472#;
   pragma Export (C, u00026, "ada__numerics__big_numbersS");
   u00027 : constant Version_32 := 16#de9f7f92#;
   pragma Export (C, u00027, "system__unsigned_typesS");
   u00028 : constant Version_32 := 16#385798c5#;
   pragma Export (C, u00028, "system__val_intS");
   u00029 : constant Version_32 := 16#2e4988f1#;
   pragma Export (C, u00029, "system__val_unsS");
   u00030 : constant Version_32 := 16#96e09402#;
   pragma Export (C, u00030, "system__val_utilB");
   u00031 : constant Version_32 := 16#1770d446#;
   pragma Export (C, u00031, "system__val_utilS");
   u00032 : constant Version_32 := 16#b98923bf#;
   pragma Export (C, u00032, "system__case_utilB");
   u00033 : constant Version_32 := 16#eba6d79e#;
   pragma Export (C, u00033, "system__case_utilS");
   u00034 : constant Version_32 := 16#ebda3270#;
   pragma Export (C, u00034, "system__wid_unsS");
   u00035 : constant Version_32 := 16#2a95d23d#;
   pragma Export (C, u00035, "system__storage_elementsB");
   u00036 : constant Version_32 := 16#8fe1682f#;
   pragma Export (C, u00036, "system__storage_elementsS");
   u00037 : constant Version_32 := 16#5c7d9c20#;
   pragma Export (C, u00037, "system__tracebackB");
   u00038 : constant Version_32 := 16#a22ff476#;
   pragma Export (C, u00038, "system__tracebackS");
   u00039 : constant Version_32 := 16#5f6b6486#;
   pragma Export (C, u00039, "system__traceback_entriesB");
   u00040 : constant Version_32 := 16#eca9bf47#;
   pragma Export (C, u00040, "system__traceback_entriesS");
   u00041 : constant Version_32 := 16#a0281f47#;
   pragma Export (C, u00041, "system__traceback__symbolicB");
   u00042 : constant Version_32 := 16#d9e66ad1#;
   pragma Export (C, u00042, "system__traceback__symbolicS");
   u00043 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00043, "ada__exceptions__tracebackB");
   u00044 : constant Version_32 := 16#eb07882c#;
   pragma Export (C, u00044, "ada__exceptions__tracebackS");
   u00045 : constant Version_32 := 16#a0d3d22b#;
   pragma Export (C, u00045, "system__address_imageB");
   u00046 : constant Version_32 := 16#85599df1#;
   pragma Export (C, u00046, "system__address_imageS");
   u00047 : constant Version_32 := 16#fd158a37#;
   pragma Export (C, u00047, "system__wch_conB");
   u00048 : constant Version_32 := 16#fdb623a8#;
   pragma Export (C, u00048, "system__wch_conS");
   u00049 : constant Version_32 := 16#5c289972#;
   pragma Export (C, u00049, "system__wch_stwB");
   u00050 : constant Version_32 := 16#d0a70fa9#;
   pragma Export (C, u00050, "system__wch_stwS");
   u00051 : constant Version_32 := 16#f8305de6#;
   pragma Export (C, u00051, "system__wch_cnvB");
   u00052 : constant Version_32 := 16#fb76e9d8#;
   pragma Export (C, u00052, "system__wch_cnvS");
   u00053 : constant Version_32 := 16#15f799c2#;
   pragma Export (C, u00053, "interfacesS");
   u00054 : constant Version_32 := 16#e538de43#;
   pragma Export (C, u00054, "system__wch_jisB");
   u00055 : constant Version_32 := 16#4ec18bf2#;
   pragma Export (C, u00055, "system__wch_jisS");
   u00056 : constant Version_32 := 16#821dff88#;
   pragma Export (C, u00056, "system__parametersB");
   u00057 : constant Version_32 := 16#f021a46d#;
   pragma Export (C, u00057, "system__parametersS");
   u00058 : constant Version_32 := 16#0286ce9f#;
   pragma Export (C, u00058, "system__soft_links__initializeB");
   u00059 : constant Version_32 := 16#2ed17187#;
   pragma Export (C, u00059, "system__soft_links__initializeS");
   u00060 : constant Version_32 := 16#8599b27b#;
   pragma Export (C, u00060, "system__stack_checkingB");
   u00061 : constant Version_32 := 16#8460a9d1#;
   pragma Export (C, u00061, "system__stack_checkingS");
   u00062 : constant Version_32 := 16#8b7604c4#;
   pragma Export (C, u00062, "ada__strings__utf_encodingB");
   u00063 : constant Version_32 := 16#4d0e0994#;
   pragma Export (C, u00063, "ada__strings__utf_encodingS");
   u00064 : constant Version_32 := 16#bb780f45#;
   pragma Export (C, u00064, "ada__strings__utf_encoding__stringsB");
   u00065 : constant Version_32 := 16#b85ff4b6#;
   pragma Export (C, u00065, "ada__strings__utf_encoding__stringsS");
   u00066 : constant Version_32 := 16#d1d1ed0b#;
   pragma Export (C, u00066, "ada__strings__utf_encoding__wide_stringsB");
   u00067 : constant Version_32 := 16#5678478f#;
   pragma Export (C, u00067, "ada__strings__utf_encoding__wide_stringsS");
   u00068 : constant Version_32 := 16#c2b98963#;
   pragma Export (C, u00068, "ada__strings__utf_encoding__wide_wide_stringsB");
   u00069 : constant Version_32 := 16#d7af3358#;
   pragma Export (C, u00069, "ada__strings__utf_encoding__wide_wide_stringsS");
   u00070 : constant Version_32 := 16#f38d604a#;
   pragma Export (C, u00070, "ada__tagsB");
   u00071 : constant Version_32 := 16#4d1deaec#;
   pragma Export (C, u00071, "ada__tagsS");
   u00072 : constant Version_32 := 16#3548d972#;
   pragma Export (C, u00072, "system__htableB");
   u00073 : constant Version_32 := 16#a56c5820#;
   pragma Export (C, u00073, "system__htableS");
   u00074 : constant Version_32 := 16#1f1abe38#;
   pragma Export (C, u00074, "system__string_hashB");
   u00075 : constant Version_32 := 16#0229d85f#;
   pragma Export (C, u00075, "system__string_hashS");
   u00076 : constant Version_32 := 16#0c865a1b#;
   pragma Export (C, u00076, "system__val_lluS");
   u00077 : constant Version_32 := 16#67eb6d5a#;
   pragma Export (C, u00077, "ada__text_ioB");
   u00078 : constant Version_32 := 16#5a29bd58#;
   pragma Export (C, u00078, "ada__text_ioS");
   u00079 : constant Version_32 := 16#b4f41810#;
   pragma Export (C, u00079, "ada__streamsB");
   u00080 : constant Version_32 := 16#67e31212#;
   pragma Export (C, u00080, "ada__streamsS");
   u00081 : constant Version_32 := 16#367911c4#;
   pragma Export (C, u00081, "ada__io_exceptionsS");
   u00082 : constant Version_32 := 16#abd3c34b#;
   pragma Export (C, u00082, "system__put_imagesB");
   u00083 : constant Version_32 := 16#381b07d4#;
   pragma Export (C, u00083, "system__put_imagesS");
   u00084 : constant Version_32 := 16#22b9eb9f#;
   pragma Export (C, u00084, "ada__strings__text_buffers__utilsB");
   u00085 : constant Version_32 := 16#89062ac3#;
   pragma Export (C, u00085, "ada__strings__text_buffers__utilsS");
   u00086 : constant Version_32 := 16#73d2d764#;
   pragma Export (C, u00086, "interfaces__c_streamsB");
   u00087 : constant Version_32 := 16#7acc80b4#;
   pragma Export (C, u00087, "interfaces__c_streamsS");
   u00088 : constant Version_32 := 16#7a273695#;
   pragma Export (C, u00088, "system__crtlS");
   u00089 : constant Version_32 := 16#1aa716c1#;
   pragma Export (C, u00089, "system__file_ioB");
   u00090 : constant Version_32 := 16#5817c59e#;
   pragma Export (C, u00090, "system__file_ioS");
   u00091 : constant Version_32 := 16#86c56e5a#;
   pragma Export (C, u00091, "ada__finalizationS");
   u00092 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00092, "system__finalization_rootB");
   u00093 : constant Version_32 := 16#6b47735b#;
   pragma Export (C, u00093, "system__finalization_rootS");
   u00094 : constant Version_32 := 16#1d7382c4#;
   pragma Export (C, u00094, "system__os_libB");
   u00095 : constant Version_32 := 16#ded9d094#;
   pragma Export (C, u00095, "system__os_libS");
   u00096 : constant Version_32 := 16#6e5d049a#;
   pragma Export (C, u00096, "system__atomic_operations__test_and_setB");
   u00097 : constant Version_32 := 16#57acee8e#;
   pragma Export (C, u00097, "system__atomic_operations__test_and_setS");
   u00098 : constant Version_32 := 16#e3d67aee#;
   pragma Export (C, u00098, "system__atomic_operationsS");
   u00099 : constant Version_32 := 16#29cc6115#;
   pragma Export (C, u00099, "system__atomic_primitivesB");
   u00100 : constant Version_32 := 16#63fc48ea#;
   pragma Export (C, u00100, "system__atomic_primitivesS");
   u00101 : constant Version_32 := 16#545fe66d#;
   pragma Export (C, u00101, "interfaces__cB");
   u00102 : constant Version_32 := 16#9d395173#;
   pragma Export (C, u00102, "interfaces__cS");
   u00103 : constant Version_32 := 16#256dbbe5#;
   pragma Export (C, u00103, "system__stringsB");
   u00104 : constant Version_32 := 16#bf3700d3#;
   pragma Export (C, u00104, "system__stringsS");
   u00105 : constant Version_32 := 16#8644f7da#;
   pragma Export (C, u00105, "system__file_control_blockS");
   u00106 : constant Version_32 := 16#1982dcd0#;
   pragma Export (C, u00106, "system__memoryB");
   u00107 : constant Version_32 := 16#7f31321b#;
   pragma Export (C, u00107, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  interfaces%s
   --  system%s
   --  system.atomic_operations%s
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%s
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.unsigned_types%s
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.case_util%s
   --  system.secondary_stack%s
   --  system.standard_library%s
   --  ada.exceptions%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.soft_links%s
   --  system.val_uns%s
   --  system.val_int%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  ada.exceptions.traceback%s
   --  ada.exceptions.traceback%b
   --  system.address_image%s
   --  system.address_image%b
   --  system.case_util%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.numerics%s
   --  ada.numerics.big_numbers%s
   --  system.exceptions%s
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  system.memory%s
   --  system.memory%b
   --  system.secondary_stack%b
   --  system.soft_links.initialize%s
   --  system.soft_links.initialize%b
   --  system.soft_links%b
   --  system.standard_library%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  system.wid_uns%s
   --  system.img_int%s
   --  ada.exceptions%b
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.strings.utf_encoding%s
   --  ada.strings.utf_encoding%b
   --  ada.strings.utf_encoding.strings%s
   --  ada.strings.utf_encoding.strings%b
   --  ada.strings.utf_encoding.wide_strings%s
   --  ada.strings.utf_encoding.wide_strings%b
   --  ada.strings.utf_encoding.wide_wide_strings%s
   --  ada.strings.utf_encoding.wide_wide_strings%b
   --  interfaces.c%s
   --  interfaces.c%b
   --  system.atomic_primitives%s
   --  system.atomic_primitives%b
   --  system.atomic_operations.test_and_set%s
   --  system.atomic_operations.test_and_set%b
   --  system.os_lib%s
   --  system.os_lib%b
   --  system.val_llu%s
   --  ada.tags%s
   --  ada.tags%b
   --  ada.strings.text_buffers%s
   --  ada.strings.text_buffers%b
   --  ada.strings.text_buffers.utils%s
   --  ada.strings.text_buffers.utils%b
   --  system.put_images%s
   --  system.put_images%b
   --  ada.streams%s
   --  ada.streams%b
   --  system.file_control_block%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  system.file_io%s
   --  system.file_io%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  hello%b
   --  END ELABORATION ORDER

end ada_main;

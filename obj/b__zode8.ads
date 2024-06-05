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

   Ada_Main_Program_Name : constant String := "_ada_zode8" & ASCII.NUL;
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
   u00001 : constant Version_32 := 16#cd75072d#;
   pragma Export (C, u00001, "zode8B");
   u00002 : constant Version_32 := 16#7320ff5f#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#36bba752#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#f64b89a4#;
   pragma Export (C, u00005, "ada__integer_text_ioB");
   u00006 : constant Version_32 := 16#dc1f7556#;
   pragma Export (C, u00006, "ada__integer_text_ioS");
   u00007 : constant Version_32 := 16#8f0fd326#;
   pragma Export (C, u00007, "ada__exceptionsB");
   u00008 : constant Version_32 := 16#78ad8bc6#;
   pragma Export (C, u00008, "ada__exceptionsS");
   u00009 : constant Version_32 := 16#0740df23#;
   pragma Export (C, u00009, "ada__exceptions__last_chance_handlerB");
   u00010 : constant Version_32 := 16#6dc27684#;
   pragma Export (C, u00010, "ada__exceptions__last_chance_handlerS");
   u00011 : constant Version_32 := 16#24b500cb#;
   pragma Export (C, u00011, "systemS");
   u00012 : constant Version_32 := 16#fd5f5f4c#;
   pragma Export (C, u00012, "system__soft_linksB");
   u00013 : constant Version_32 := 16#59289628#;
   pragma Export (C, u00013, "system__soft_linksS");
   u00014 : constant Version_32 := 16#d4c699bf#;
   pragma Export (C, u00014, "system__secondary_stackB");
   u00015 : constant Version_32 := 16#0cf7b57c#;
   pragma Export (C, u00015, "system__secondary_stackS");
   u00016 : constant Version_32 := 16#821dff88#;
   pragma Export (C, u00016, "system__parametersB");
   u00017 : constant Version_32 := 16#f021a46d#;
   pragma Export (C, u00017, "system__parametersS");
   u00018 : constant Version_32 := 16#2a95d23d#;
   pragma Export (C, u00018, "system__storage_elementsB");
   u00019 : constant Version_32 := 16#8fe1682f#;
   pragma Export (C, u00019, "system__storage_elementsS");
   u00020 : constant Version_32 := 16#0286ce9f#;
   pragma Export (C, u00020, "system__soft_links__initializeB");
   u00021 : constant Version_32 := 16#2ed17187#;
   pragma Export (C, u00021, "system__soft_links__initializeS");
   u00022 : constant Version_32 := 16#8599b27b#;
   pragma Export (C, u00022, "system__stack_checkingB");
   u00023 : constant Version_32 := 16#8460a9d1#;
   pragma Export (C, u00023, "system__stack_checkingS");
   u00024 : constant Version_32 := 16#c71e6c8a#;
   pragma Export (C, u00024, "system__exception_tableB");
   u00025 : constant Version_32 := 16#a99e76d2#;
   pragma Export (C, u00025, "system__exception_tableS");
   u00026 : constant Version_32 := 16#1610bff9#;
   pragma Export (C, u00026, "system__exceptionsS");
   u00027 : constant Version_32 := 16#69416224#;
   pragma Export (C, u00027, "system__exceptions__machineB");
   u00028 : constant Version_32 := 16#8bdfdbe3#;
   pragma Export (C, u00028, "system__exceptions__machineS");
   u00029 : constant Version_32 := 16#7706238d#;
   pragma Export (C, u00029, "system__exceptions_debugB");
   u00030 : constant Version_32 := 16#14bb5898#;
   pragma Export (C, u00030, "system__exceptions_debugS");
   u00031 : constant Version_32 := 16#5436dfa3#;
   pragma Export (C, u00031, "system__img_intS");
   u00032 : constant Version_32 := 16#f2c63a02#;
   pragma Export (C, u00032, "ada__numericsS");
   u00033 : constant Version_32 := 16#174f5472#;
   pragma Export (C, u00033, "ada__numerics__big_numbersS");
   u00034 : constant Version_32 := 16#de9f7f92#;
   pragma Export (C, u00034, "system__unsigned_typesS");
   u00035 : constant Version_32 := 16#385798c5#;
   pragma Export (C, u00035, "system__val_intS");
   u00036 : constant Version_32 := 16#2e4988f1#;
   pragma Export (C, u00036, "system__val_unsS");
   u00037 : constant Version_32 := 16#96e09402#;
   pragma Export (C, u00037, "system__val_utilB");
   u00038 : constant Version_32 := 16#1770d446#;
   pragma Export (C, u00038, "system__val_utilS");
   u00039 : constant Version_32 := 16#b98923bf#;
   pragma Export (C, u00039, "system__case_utilB");
   u00040 : constant Version_32 := 16#eba6d79e#;
   pragma Export (C, u00040, "system__case_utilS");
   u00041 : constant Version_32 := 16#ebda3270#;
   pragma Export (C, u00041, "system__wid_unsS");
   u00042 : constant Version_32 := 16#5c7d9c20#;
   pragma Export (C, u00042, "system__tracebackB");
   u00043 : constant Version_32 := 16#a22ff476#;
   pragma Export (C, u00043, "system__tracebackS");
   u00044 : constant Version_32 := 16#5f6b6486#;
   pragma Export (C, u00044, "system__traceback_entriesB");
   u00045 : constant Version_32 := 16#eca9bf47#;
   pragma Export (C, u00045, "system__traceback_entriesS");
   u00046 : constant Version_32 := 16#a0281f47#;
   pragma Export (C, u00046, "system__traceback__symbolicB");
   u00047 : constant Version_32 := 16#d9e66ad1#;
   pragma Export (C, u00047, "system__traceback__symbolicS");
   u00048 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00048, "ada__exceptions__tracebackB");
   u00049 : constant Version_32 := 16#eb07882c#;
   pragma Export (C, u00049, "ada__exceptions__tracebackS");
   u00050 : constant Version_32 := 16#a0d3d22b#;
   pragma Export (C, u00050, "system__address_imageB");
   u00051 : constant Version_32 := 16#85599df1#;
   pragma Export (C, u00051, "system__address_imageS");
   u00052 : constant Version_32 := 16#fd158a37#;
   pragma Export (C, u00052, "system__wch_conB");
   u00053 : constant Version_32 := 16#fdb623a8#;
   pragma Export (C, u00053, "system__wch_conS");
   u00054 : constant Version_32 := 16#5c289972#;
   pragma Export (C, u00054, "system__wch_stwB");
   u00055 : constant Version_32 := 16#d0a70fa9#;
   pragma Export (C, u00055, "system__wch_stwS");
   u00056 : constant Version_32 := 16#f8305de6#;
   pragma Export (C, u00056, "system__wch_cnvB");
   u00057 : constant Version_32 := 16#fb76e9d8#;
   pragma Export (C, u00057, "system__wch_cnvS");
   u00058 : constant Version_32 := 16#15f799c2#;
   pragma Export (C, u00058, "interfacesS");
   u00059 : constant Version_32 := 16#e538de43#;
   pragma Export (C, u00059, "system__wch_jisB");
   u00060 : constant Version_32 := 16#4ec18bf2#;
   pragma Export (C, u00060, "system__wch_jisS");
   u00061 : constant Version_32 := 16#67eb6d5a#;
   pragma Export (C, u00061, "ada__text_ioB");
   u00062 : constant Version_32 := 16#5a29bd58#;
   pragma Export (C, u00062, "ada__text_ioS");
   u00063 : constant Version_32 := 16#b4f41810#;
   pragma Export (C, u00063, "ada__streamsB");
   u00064 : constant Version_32 := 16#67e31212#;
   pragma Export (C, u00064, "ada__streamsS");
   u00065 : constant Version_32 := 16#367911c4#;
   pragma Export (C, u00065, "ada__io_exceptionsS");
   u00066 : constant Version_32 := 16#a201b8c5#;
   pragma Export (C, u00066, "ada__strings__text_buffersB");
   u00067 : constant Version_32 := 16#a7cfd09b#;
   pragma Export (C, u00067, "ada__strings__text_buffersS");
   u00068 : constant Version_32 := 16#e6d4fa36#;
   pragma Export (C, u00068, "ada__stringsS");
   u00069 : constant Version_32 := 16#8b7604c4#;
   pragma Export (C, u00069, "ada__strings__utf_encodingB");
   u00070 : constant Version_32 := 16#4d0e0994#;
   pragma Export (C, u00070, "ada__strings__utf_encodingS");
   u00071 : constant Version_32 := 16#bb780f45#;
   pragma Export (C, u00071, "ada__strings__utf_encoding__stringsB");
   u00072 : constant Version_32 := 16#b85ff4b6#;
   pragma Export (C, u00072, "ada__strings__utf_encoding__stringsS");
   u00073 : constant Version_32 := 16#d1d1ed0b#;
   pragma Export (C, u00073, "ada__strings__utf_encoding__wide_stringsB");
   u00074 : constant Version_32 := 16#5678478f#;
   pragma Export (C, u00074, "ada__strings__utf_encoding__wide_stringsS");
   u00075 : constant Version_32 := 16#c2b98963#;
   pragma Export (C, u00075, "ada__strings__utf_encoding__wide_wide_stringsB");
   u00076 : constant Version_32 := 16#d7af3358#;
   pragma Export (C, u00076, "ada__strings__utf_encoding__wide_wide_stringsS");
   u00077 : constant Version_32 := 16#f38d604a#;
   pragma Export (C, u00077, "ada__tagsB");
   u00078 : constant Version_32 := 16#4d1deaec#;
   pragma Export (C, u00078, "ada__tagsS");
   u00079 : constant Version_32 := 16#3548d972#;
   pragma Export (C, u00079, "system__htableB");
   u00080 : constant Version_32 := 16#a56c5820#;
   pragma Export (C, u00080, "system__htableS");
   u00081 : constant Version_32 := 16#1f1abe38#;
   pragma Export (C, u00081, "system__string_hashB");
   u00082 : constant Version_32 := 16#0229d85f#;
   pragma Export (C, u00082, "system__string_hashS");
   u00083 : constant Version_32 := 16#0c865a1b#;
   pragma Export (C, u00083, "system__val_lluS");
   u00084 : constant Version_32 := 16#abd3c34b#;
   pragma Export (C, u00084, "system__put_imagesB");
   u00085 : constant Version_32 := 16#381b07d4#;
   pragma Export (C, u00085, "system__put_imagesS");
   u00086 : constant Version_32 := 16#22b9eb9f#;
   pragma Export (C, u00086, "ada__strings__text_buffers__utilsB");
   u00087 : constant Version_32 := 16#89062ac3#;
   pragma Export (C, u00087, "ada__strings__text_buffers__utilsS");
   u00088 : constant Version_32 := 16#73d2d764#;
   pragma Export (C, u00088, "interfaces__c_streamsB");
   u00089 : constant Version_32 := 16#7acc80b4#;
   pragma Export (C, u00089, "interfaces__c_streamsS");
   u00090 : constant Version_32 := 16#7a273695#;
   pragma Export (C, u00090, "system__crtlS");
   u00091 : constant Version_32 := 16#1aa716c1#;
   pragma Export (C, u00091, "system__file_ioB");
   u00092 : constant Version_32 := 16#5817c59e#;
   pragma Export (C, u00092, "system__file_ioS");
   u00093 : constant Version_32 := 16#86c56e5a#;
   pragma Export (C, u00093, "ada__finalizationS");
   u00094 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00094, "system__finalization_rootB");
   u00095 : constant Version_32 := 16#6b47735b#;
   pragma Export (C, u00095, "system__finalization_rootS");
   u00096 : constant Version_32 := 16#1d7382c4#;
   pragma Export (C, u00096, "system__os_libB");
   u00097 : constant Version_32 := 16#ded9d094#;
   pragma Export (C, u00097, "system__os_libS");
   u00098 : constant Version_32 := 16#6e5d049a#;
   pragma Export (C, u00098, "system__atomic_operations__test_and_setB");
   u00099 : constant Version_32 := 16#57acee8e#;
   pragma Export (C, u00099, "system__atomic_operations__test_and_setS");
   u00100 : constant Version_32 := 16#e3d67aee#;
   pragma Export (C, u00100, "system__atomic_operationsS");
   u00101 : constant Version_32 := 16#29cc6115#;
   pragma Export (C, u00101, "system__atomic_primitivesB");
   u00102 : constant Version_32 := 16#63fc48ea#;
   pragma Export (C, u00102, "system__atomic_primitivesS");
   u00103 : constant Version_32 := 16#545fe66d#;
   pragma Export (C, u00103, "interfaces__cB");
   u00104 : constant Version_32 := 16#9d395173#;
   pragma Export (C, u00104, "interfaces__cS");
   u00105 : constant Version_32 := 16#256dbbe5#;
   pragma Export (C, u00105, "system__stringsB");
   u00106 : constant Version_32 := 16#bf3700d3#;
   pragma Export (C, u00106, "system__stringsS");
   u00107 : constant Version_32 := 16#8644f7da#;
   pragma Export (C, u00107, "system__file_control_blockS");
   u00108 : constant Version_32 := 16#44bc8f6a#;
   pragma Export (C, u00108, "ada__text_io__generic_auxB");
   u00109 : constant Version_32 := 16#ba6faca0#;
   pragma Export (C, u00109, "ada__text_io__generic_auxS");
   u00110 : constant Version_32 := 16#ed428335#;
   pragma Export (C, u00110, "system__img_biuS");
   u00111 : constant Version_32 := 16#a01c44eb#;
   pragma Export (C, u00111, "system__img_llbS");
   u00112 : constant Version_32 := 16#06f36f9c#;
   pragma Export (C, u00112, "system__img_lliS");
   u00113 : constant Version_32 := 16#b1382f51#;
   pragma Export (C, u00113, "system__val_lliS");
   u00114 : constant Version_32 := 16#cbd26169#;
   pragma Export (C, u00114, "system__wid_lluS");
   u00115 : constant Version_32 := 16#d7edb199#;
   pragma Export (C, u00115, "system__img_lllbS");
   u00116 : constant Version_32 := 16#e0548de8#;
   pragma Export (C, u00116, "system__img_llliS");
   u00117 : constant Version_32 := 16#8c760732#;
   pragma Export (C, u00117, "system__val_llliS");
   u00118 : constant Version_32 := 16#3a383bc1#;
   pragma Export (C, u00118, "system__val_llluS");
   u00119 : constant Version_32 := 16#a86fb42a#;
   pragma Export (C, u00119, "system__wid_llluS");
   u00120 : constant Version_32 := 16#dd99a895#;
   pragma Export (C, u00120, "system__img_lllwS");
   u00121 : constant Version_32 := 16#fc2e31e0#;
   pragma Export (C, u00121, "system__img_llwS");
   u00122 : constant Version_32 := 16#d2983807#;
   pragma Export (C, u00122, "system__img_wiuS");
   u00123 : constant Version_32 := 16#efe4284a#;
   pragma Export (C, u00123, "expr_typesS");
   u00124 : constant Version_32 := 16#808a6ee4#;
   pragma Export (C, u00124, "system__return_stackS");
   u00125 : constant Version_32 := 16#d50f3cfb#;
   pragma Export (C, u00125, "system__stream_attributesB");
   u00126 : constant Version_32 := 16#38db27a7#;
   pragma Export (C, u00126, "system__stream_attributesS");
   u00127 : constant Version_32 := 16#3aecdcda#;
   pragma Export (C, u00127, "system__stream_attributes__xdrB");
   u00128 : constant Version_32 := 16#42985e70#;
   pragma Export (C, u00128, "system__stream_attributes__xdrS");
   u00129 : constant Version_32 := 16#e787dfa7#;
   pragma Export (C, u00129, "system__fat_fltS");
   u00130 : constant Version_32 := 16#c1b5d6aa#;
   pragma Export (C, u00130, "system__fat_lfltS");
   u00131 : constant Version_32 := 16#bb657840#;
   pragma Export (C, u00131, "system__fat_llfS");
   u00132 : constant Version_32 := 16#ca878138#;
   pragma Export (C, u00132, "system__concat_2B");
   u00133 : constant Version_32 := 16#914e733c#;
   pragma Export (C, u00133, "system__concat_2S");
   u00134 : constant Version_32 := 16#970de68d#;
   pragma Export (C, u00134, "system__img_fltS");
   u00135 : constant Version_32 := 16#1b28662b#;
   pragma Export (C, u00135, "system__float_controlB");
   u00136 : constant Version_32 := 16#c44943f7#;
   pragma Export (C, u00136, "system__float_controlS");
   u00137 : constant Version_32 := 16#ab2f9e09#;
   pragma Export (C, u00137, "system__img_unsS");
   u00138 : constant Version_32 := 16#4f0058da#;
   pragma Export (C, u00138, "system__img_utilB");
   u00139 : constant Version_32 := 16#53aca472#;
   pragma Export (C, u00139, "system__img_utilS");
   u00140 : constant Version_32 := 16#81afb973#;
   pragma Export (C, u00140, "system__powten_fltS");
   u00141 : constant Version_32 := 16#1982dcd0#;
   pragma Export (C, u00141, "system__memoryB");
   u00142 : constant Version_32 := 16#7f31321b#;
   pragma Export (C, u00142, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  interfaces%s
   --  system%s
   --  system.atomic_operations%s
   --  system.float_control%s
   --  system.float_control%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.powten_flt%s
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.return_stack%s
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
   --  system.img_biu%s
   --  system.img_llb%s
   --  system.img_lllb%s
   --  system.img_lllw%s
   --  system.img_llw%s
   --  system.img_wiu%s
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.concat_2%s
   --  system.concat_2%b
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
   --  system.fat_flt%s
   --  system.fat_lflt%s
   --  system.fat_llf%s
   --  system.os_lib%s
   --  system.os_lib%b
   --  system.val_lllu%s
   --  system.val_llli%s
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
   --  system.stream_attributes%s
   --  system.stream_attributes.xdr%s
   --  system.stream_attributes.xdr%b
   --  system.stream_attributes%b
   --  system.val_lli%s
   --  ada.text_io%s
   --  ada.text_io%b
   --  ada.text_io.generic_aux%s
   --  ada.text_io.generic_aux%b
   --  system.img_uns%s
   --  system.img_util%s
   --  system.img_util%b
   --  system.img_flt%s
   --  system.wid_lllu%s
   --  system.img_llli%s
   --  system.wid_llu%s
   --  system.img_lli%s
   --  ada.integer_text_io%s
   --  ada.integer_text_io%b
   --  expr_types%s
   --  zode8%b
   --  END ELABORATION ORDER

end ada_main;

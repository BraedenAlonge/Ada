with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
package Variant_Record is
   --  Forward declarations
   type Expr;
   type ExprC;
   type Value;
   type Binding_List;
   type Env;

   -- Expressions
   type ExprC_Type is (NumC, AppC, idC, LamC, ifC, StrC);

   type Unbounded_String_Array is array (Positive range <>) of Unbounded_String;

   -- Access

   type Unbounded_String_Array_Access is access Unbounded_String_Array;

   type ExprC_Access is access ExprC;

   type ExprC_Array is array (Positive range <>) of ExprC_Access;

   type ExprC_Array_Access is access ExprC_Array;

   type Value_Access is access Value;

   type Binding_List_Access is access Binding_List;

   type Env_Access is access Env;

   type ExprC (Kind : ExprC_Type) is record
      case Kind is
         when NumC =>
            N : Float;
         when AppC =>
            Name : Unbounded_String;
            Args : ExprC_Array_Access;
         when LamC =>
            Params : Unbounded_String_Array_Access;
            Exp : ExprC_Access;
         when ifC =>
            Condition : ExprC_Access;
            TrueExp : ExprC_Access;
            FalseExp : ExprC_Access;
         when StrC =>
            Str : Unbounded_String;
         when idC =>
            Id : Unbounded_String;
      end case;
   end record;

   -- Bindings
   type Binding is record
      Name : Unbounded_String;
      Val : Value_Access;
   end record;

   type Binding_List is array (Positive range <>) of Binding;

   -- Environments
   type Env is record
      Binds : Binding_List_Access;
   end record;

   -- Values
   type Value_Type is (NumV, CloV, StrV, BoolV, PrimV);

   type Value (Kind : Value_Type) is record
      case Kind is
         when NumV =>
            Val : Float;
         when CloV =>
            Params : Unbounded_String_Array_Access;
            Bod : ExprC_Access;
            Env : Env_Access;
         when StrV =>
            Str : Unbounded_String;
         when BoolV =>
            Bool : Boolean;
         when PrimV =>
            Prim : Unbounded_String;
      end case;
   end record;

   --  Access to a Expr
   type Expr_Access is access Expr;

   type Expr_Kind_Type is (Bin_Op_Plus,
                           Bin_Op_Minus,
                           Bin_Op_Div,
                           Bin_Op_Mult,
                           Num);
   --  A regular enumeration type

   type Expr (Kind : Expr_Kind_Type) is record
      --      ^ The discriminant is an
      --        enumeration value
      case Kind is
         when Bin_Op_Plus | Bin_Op_Minus | Bin_Op_Div | Bin_Op_Mult =>
            Left, Right : Expr_Access;
         when Num =>
            Val : Integer;
      end case;
      --  Variant part. Only one, at the end of
      --  the record definition, but can be
      --  nested
   end record;
end Variant_Record;
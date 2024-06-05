package Expr_Types is
   type ExprC is abstract tagged null record;

   type NumC is new ExprC with record
      N : Float;
   end record;

   type NumC is new ExprC with record
      N : Float;
   end record;
   
end Expr_Types;

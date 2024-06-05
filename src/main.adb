with Ada.Text_IO;    use Ada.Text_IO;

with Variant_Record; use Variant_Record;

procedure Main is
   function Eval_Expr (E : Expr) return Integer is
        (case E.Kind is
        when Bin_Op_Plus  =>
            Eval_Expr (E.Left.all)
            + Eval_Expr (E.Right.all),
        when Bin_Op_Minus =>
            Eval_Expr (E.Left.all)
            - Eval_Expr (E.Right.all),
        when Bin_Op_Mult =>
            Eval_Expr (E.Left.all)
            * Eval_Expr (E.Right.all),
        when Bin_Op_Div =>
            Eval_Expr (E.Left.all)
            / Eval_Expr (E.Right.all),
    
    when Num => E.Val);

    E : Expr := (Bin_Op_Plus,
                new Expr'(Bin_Op_Minus,
                          new Expr'(Num, 10),
                          new Expr'(Num, 15)),
                new Expr'(Num, -5));
    E : Expr := (Bin_Op_Div, 
        num Expr'(Num, 1), 
        num Expr'(Num, 1));
begin
   Put_Line (Integer'Image (Eval_Expr (E)));
end Main; 
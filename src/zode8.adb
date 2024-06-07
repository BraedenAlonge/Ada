with Ada.Text_IO;    use Ada.Text_IO;

with Variant_Record; use Variant_Record;

procedure Main is

    function Convert_To_NumV (NC : NumC) return NumV is
    begin
        return (Val => NC.Value);
    end Convert_To_NumV;

    function Convert_To_StrV (SC : StrC) return StrV is
    begin
        return (Str => SC.Value);
    end Convert_To_NumV;
    

    function Interp (exp : ExprC; env : En) return Integer is 
        (case exp.Kind is
        when NumC =>
            Convert_To_NumV(exp),
        when StrC =>
            Convert_To_NumV(exp),
        when PrimV =>
            Prim_Op(exp.Prim, exp.Left.all, exp.Right.all)
        
        );
        
    

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
    E1 : Expr := (Bin_Op_Div, 
        new Expr'(Num, 1), 
        new Expr'(Num, 1));
begin
    Put_Line (Integer'Image (Eval_Expr (E1)));

end Main; 
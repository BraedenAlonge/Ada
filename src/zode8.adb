with Ada.Text_IO;    use Ada.Text_IO;
with Ada.Assertions; use Ada.Assertions;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Variant_Record; use Variant_Record;

procedure Main is

    function Convert_To_NumV (NC : NumC) return NumV is
    begin
        return (Val => NC.Value);
    end Convert_To_NumV;

    function Convert_To_StrV (SC : StrC) return StrV is
    begin
        return (Str => SC.Value);
    end Convert_To_StrV;
    

    function Interp (exp : ExprC; env : En) return Integer is 
        (case exp.Kind is
        when NumC =>
            Convert_To_NumV(exp),
        when StrC =>
            Convert_To_NumV(exp),
        when PrimV =>
            Prim_Op(exp.Prim, exp.Left.all, exp.Right.all)
        
        );
        
    

    -- Define the calc_primop function
    function Calc_Primop (Op : String; Left : ExprC; Right : ExprC) return Value is
        Result : Value := (Kind => NumV, Val => 0.0); -- Initialize Result
    begin
        if Op = "+" then
            Result := (Kind => NumV, Val => Left.N + Right.N);
        elsif Op = "-" then
            Result := (Kind => NumV, Val => Left.N - Right.N);
        elsif Op = "*" then
            Result := (Kind => NumV, Val => Left.N * Right.N);
        elsif Op = "/" then
            Result := (Kind => NumV, Val => Left.N / Right.N);
        else
            Result := (Kind => NumV, Val => 0.0);
        end if;
        return Result;
    end Calc_Primop;

    -- Helper function to compare floats within a tolerance
    function Float_Equal (A, B : Float) return Boolean is
    begin
        return abs (A - B) <= 0.01;
    end Float_Equal;

    -- Define variables for testing
    Num1 : ExprC := (Kind => NumC, N => 3.14);
    Num2 : ExprC := (Kind => NumC, N => 5.80);
    Result_Float : Float;
    Result_Value : Value := (Kind => NumV, Val => 0.0); -- Initialize Result_Value

begin
    Put_Line (Integer'Image (Eval_Expr (E1)));
end Main; 
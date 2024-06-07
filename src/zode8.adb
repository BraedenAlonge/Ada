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
    -- Test case 1: NumC
    Result_Float := Num1.N;
    Assert (Float_Equal (Result_Float, 3.14), "Test case 1 failed: expected 3.14, got " & Float'Image (Result_Float));

    -- Test case 2: Addition
    Result_Value := Calc_Primop("+", Num1, Num2);
    Assert (Float_Equal (Result_Value.Val, 3.14 + 5.80), "Addition Test case failed: expected " & Float'Image(3.14 + 5.80) & ", got " & Float'Image(Result_Value.Val));

    -- Test case 3: Subtraction
    Result_Value := Calc_Primop("-", Num1, Num2);
    Assert (Float_Equal (Result_Value.Val, 3.14 - 5.80), "Subtraction Test case failed: expected " & Float'Image(3.14 - 5.80) & ", got " & Float'Image(Result_Value.Val));

    -- Test case 4: Multiplication
    Result_Value := Calc_Primop("*", Num1, Num2);
    Assert (Float_Equal (Result_Value.Val, 3.14 * 5.80), "Multiplication Test case failed: expected " & Float'Image(3.14 * 5.80) & ", got " & Float'Image(Result_Value.Val));

    -- Test case 5: Division
    Result_Value := Calc_Primop("/", Num1, Num2);
    Assert (Float_Equal (Result_Value.Val, 3.14 / 5.80), "Division Test case failed: expected " & Float'Image(3.14 / 5.80) & ", got " & Float'Image(Result_Value.Val));

    -- Output a success message if all tests pass
    Ada.Text_IO.Put_Line("All test cases passed successfully.");
end Main; 
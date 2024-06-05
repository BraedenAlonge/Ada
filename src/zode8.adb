with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Expr_Types;          -- Import the Expr_Types package

procedure Zode8 is
    -- TestNumC : Expr_Types.NumC;
        -- TestStrC : Expr_Types.StrC;
    use Expr_types; -- make every entity in Expr package visible

    TestNumC : NumC := NumC'(N => 5.0);  -- Declare an expression of type NumC


begin


    -- Access and use the fields of the record
    Put_Line("Num: " & Float'Image(TestNumC.N));


    -- Put_Line("String: " & TestStrC.S);
end Zode8;

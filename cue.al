page 50145 Cue
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            cuegroup("Group_1")
            {
                Caption = 'Cue page one';
                field("Sales (LCY)"; Rec."Sales (LCY)")
                {
                    ApplicationArea = All;
                    Caption = 'Sales (LCY)';
                    ToolTip = 'You can see the Sales (LCY) by clicking here';
                    trigger OnDrillDown()
                    begin

                    end;
                }
                field("Inv. Amounts (LCY)"; Rec."Inv. Amounts (LCY)")
                {
                    ApplicationArea = All;
                    Caption = 'invoice amount (LCY)';
                    ToolTip = 'You can see the invoice amount(LCY) by clicking here';
                    Style = Strong;


                }

            }
            cuegroup("Grop_2")
            {
                caption = 'Cue Page Two';
                field("Invoice Copies"; Rec."Invoice Copies")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Customer List";
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        myInt := 2 + 2;
        Message('2 + 2 = ' + Format(myInt));
    end;

    var
        myInt: Integer;
}




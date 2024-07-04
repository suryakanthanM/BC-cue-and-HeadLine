pageextension 50146 MyExtension extends "Headline RC Business Manager"
{
    layout
    {
        addbefore(Control1)
        {

            field(myInt; myInt)
            {
                ApplicationArea = All;
                trigger OnDrillDown()
                var
                    myInt: Integer;
                begin
                    HyperLink('https://businesscentral.dynamics.com/33672e45-e6a6-44bf-84e2-46781814c4c8/Training?company=BDL%20Medicals&node=0000233e-438d-0000-0c28-4f00836bd2d2&page=22&dc=0&bookmark=15_EgAAAAJ7BTEAMAAwADAAMA');
                end;
            }
        }
    }
    trigger OnOpenPage()

    begin
        myInt := 'You can go to the<emphasize>Customer list </emphasize>Page by clicking here:)';
    end;



    var
        myInt: Text[200];

}

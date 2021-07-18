pageextension 60001 CustomerCardExtn extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field(Latitude; Rec.Latitude)
            {
                ApplicationArea = All;
            }
            field(Longitude; Rec.Longitude)
            {
                ApplicationArea = All;
            }
        }

        // MAP Page for Customer
        addfirst(FactBoxes)
        {
            // part(GooglePieChart; "Google Pie Chart")
            // {
            //     SubPageLink = "No." = field("No.");
            //     Caption = 'Google Pie Chart';
            //     ApplicationArea = All;
            // }
            part(MapWebPage; "MAP WebPage")
            {
                SubPageLink = "No." = field("No.");
                Caption = 'Bing MAP';
                ApplicationArea = All;
                Visible = false;
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    begin

    end;

    var
        myInt: Integer;
}
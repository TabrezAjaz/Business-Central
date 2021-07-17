pageextension 60001 CustomerCardExtn extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field(Latitude; Latitude)
            {
                ApplicationArea = All;
            }
            field(Longitude; Longitude)
            {
                ApplicationArea = All;
            }
        }

        // MAP Page for Customer
        addfirst(FactBoxes)
        {
            part(MapWebPage; "MAP WebPage")
            {
                SubPageLink = "No." = field("No.");
                Caption = 'Bing MAP';
                ApplicationArea = All;
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    begin

    end;

    var
        myInt: Integer;
}
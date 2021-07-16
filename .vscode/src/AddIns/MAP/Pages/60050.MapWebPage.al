page 60050 "MAP WebPage"
{
    PageType = CardPart;
    SourceTable = Customer; // Change SourceTable for other Records

    layout
    {
        area(Content)
        {
            usercontrol(BingMap; "Bing Map")
            {
                ApplicationArea = All;
                trigger Ready()
                begin
                    ////if (Rec.Latitude <> '') and (Rec.Longitude <> '') then
                    CurrPage.BingMap.embedMAP(Rec.Latitude, Rec.Latitude);
                end;
            }
        }
    }
    trigger OnAfterGetCurrRecord()
    begin
        //if (Rec.Latitude <> '') and (Rec.Longitude <> '') then
        CurrPage.BingMap.embedMAP(Rec.Latitude, Rec.Longitude);
    end;
}
page 60004 "Google Pie Chart"
{
    // ApplicationArea = All;
    // UsageCategory = Administration;
    PageType = CardPart;
    SourceTable = Customer; // Change SourceTable for other Records    
    layout
    {
        area(Content)
        {
            usercontrol(GooglePieChart; GooglePieChartControlAddIns)
            {
                ApplicationArea = All;

                trigger PieChartControlReadyEvent()
                var
                    TotalBlanketOrder: Integer;
                    TotalCreditMemo: Integer;
                    TotalSalesInvoice: Integer;
                    TotalSalesOrder: Integer;
                    TotalSalesQuotes: Integer;
                    TotalReturnOrder: Integer;
                begin
                    PrepareGooglePieChartData(TotalBlanketOrder, TotalCreditMemo, TotalSalesInvoice, TotalSalesOrder, TotalSalesQuotes, TotalReturnOrder);
                    //CurrPage.GooglePieChart.RenderPieChart('<div id="piechart" style="width: 500px; height: 500px;"></div>', TotalBlanketOrder, TotalCreditMemo, TotalSalesInvoice, TotalSalesOrder, TotalSalesQuotes, TotalReturnOrder);
                    CurrPage.GooglePieChart.RenderPieChart('<div id="piechart" style="width: 300px; height: 300px;"></div>', TotalBlanketOrder, TotalCreditMemo, TotalSalesInvoice, TotalSalesOrder, TotalSalesQuotes, TotalReturnOrder);
                    //CurrPage.GooglePieChart.RenderPieChart('<div id="piechart" style="width: 500px; height: 500px;"></div>');
                    //CurrPage.GooglePieChart.RenderPieChart('<div id="piechart" style="width: 500px; height: 500px;"></div>', PrepareGooglePieChartData);
                end;
            }
        }
    }
    trigger OnAfterGetCurrRecord()
    var
        TotalBlanketOrder: Integer;
        TotalCreditMemo: Integer;
        TotalSalesInvoice: Integer;
        TotalSalesOrder: Integer;
        TotalSalesQuotes: Integer;
        TotalReturnOrder: Integer;
    begin
        //if (Rec.Latitude <> '') and (Rec.Longitude <> '') then
        //CurrPage.BingMap.embedMAP(Rec.Latitude, Rec.Longitude);
        CurrPage.GooglePieChart.RenderPieChart('<div id="piechart" style="width: 300px; height: 300px;"></div>', TotalBlanketOrder, TotalCreditMemo, TotalSalesInvoice, TotalSalesOrder, TotalSalesQuotes, TotalReturnOrder);
    end;

    procedure PrepareGooglePieChartData(var TotalBlanketOrder: Integer; var TotalCreditMemo: Integer; var TotalSalesInvoice: Integer; var TotalSalesOrder: Integer; var TotalSalesQuotes: Integer; var TotalReturnOrder: Integer): Text
    //procedure PrepareGooglePieChartData(): Text
    var
        SalesHeader: Record "Sales Header";
        SalesInvHeader: Record "Sales Invoice Header";
        SalesShipMent: Record "Sales Shipment Header";
        // TotalBlanketOrder: Integer;
        // TotalCreditMemo: Integer;
        // TotalSalesInvoice: Integer;
        // TotalSalesOrder: Integer;
        // TotalSalesQuotes: Integer;
        // TotalReturnOrder: Integer;
        out: Text;
    begin
        SalesHeader.SetRange("Sell-to Customer No.", Rec."No.");
        if SalesHeader.FindSet() then begin
            repeat
                IF SalesHeader."Document Type" = SalesHeader."Document Type"::"Blanket Order" THEN
                    TotalBlanketOrder += 1;
                IF SalesHeader."Document Type" = SalesHeader."Document Type"::"Credit Memo" THEN
                    TotalCreditMemo += 1;
                IF SalesHeader."Document Type" = SalesHeader."Document Type"::Invoice THEN
                    TotalSalesInvoice += 1;
                IF SalesHeader."Document Type" = SalesHeader."Document Type"::Order THEN
                    TotalSalesOrder += 1;
                IF SalesHeader."Document Type" = SalesHeader."Document Type"::Quote THEN
                    TotalSalesQuotes += 1;
                IF SalesHeader."Document Type" = SalesHeader."Document Type"::"Return Order" THEN
                    TotalReturnOrder += 1;
            until SalesHeader.Next() = 0;
            // out := 'google.visualization.arrayToDataTable([';
            // out += '["Customer",''Analytics''],';
            // out += '["Blanket Order",' + format(TotalBlanketOrder) + '],';
            // out += '["Credit Memo",' + format(TotalCreditMemo) + '],';
            // out += '["Invoice",' + format(TotalSalesInvoice) + '],';
            // out += '["Order",' + format(TotalSalesOrder) + '],';
            // out += '["Quote",' + format(TotalSalesQuotes) + '],';
            // out += '["Return Order",' + format(TotalReturnOrder) + ']';
            // //out += ']);';
            // out += '])';
        end;
        exit(out);
    end;

}
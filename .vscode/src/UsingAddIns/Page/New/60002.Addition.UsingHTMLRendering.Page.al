page 60002 "Addition Demo"
{
    PageType = List;
    Caption = 'Addition Demo';
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            usercontrol(htmlrenderingUserControl; HTMLRendering)
            {
                ApplicationArea = All;

                trigger ControlReady()
                var
                begin
                    // CurrPage.htmlrenderingUserControl.Render('<a href="https://tabrezajaz.com">Tabrez Ajaz Portfolio</a>'); => Render Output_1.png
                    //CurrPage.htmlrenderingUserControl.Render(CreateTable(2, 2)); /// passing to IFrame -> means to our control addin
                    CurrPage.htmlrenderingUserControl.Render(DetailsTable);
                end;
            }
        }
    }
    procedure DetailsTable(): Text
    var
        recItem: Record Item;
        out: Text;
        // r, c : Integer; // Single Declaration is Avaialable in version 5
        r: Integer;
        c: Integer;
        recCust: Record Customer;
        custCount: Integer;
    begin
        recCust.Reset();
        recCust.FindSet();
        custCount := recCust.Count;
        out :=
        '<!DOCTYPE html>'
        + '<html>'
        + '  <head>'
        + '  <style>'
        + '     #myDivContent{'
        + '     padding: 5px;'
        + '     margin: 5px;'
        + '     border: 2px solid red;'
        + '     float:left;'
        + '     width: 50%;'
        + '     }'
        + '  </style>'
        + '     <script type="text/javascript">'
        + '         function doSum(){' // This will not work need to write JS Code on Script file 
        + '         var value1= document.getElementById("val1");'
        + '         var value2= document.getElementById("val2");'
        + '         var result= document.getElementById("result");'
        + '         result.value = parseInt(value1.value) + parseInt(value2.value);'
        + '         }'
        + '     </script>'
        + '  </head>'
        + '  <body>'
        + '     <div id="myDivContent">'
        + '         Value 1: <input type="number" id="val1" value="11">'
        + '         <br/>'
        + '         Value 2: <input type="number" id="val2" value="22">'
        + '         <br/> '
        + '         Sum: <input type="number" id="result" value="">'
        + '         <br/>'
        + '         <button id="btnSum" onclick="doSum()">Sum: Not Working</button>'
        + '         <button id="btnSums" onclick="doAddtion()">Sum: Working</button>'
        + '     </div>'
        + '   </body>  '
        + '</html>';
        exit(out);
    end;

    procedure CreateTable(rows: Integer;
    Columns: Integer): Text
    var
        recItem: Record Item;
        out: Text;
        // r, c : Integer; // Single Declaration is Avaialable in version 5
        r: Integer;
        c: Integer;
    begin
        // Find GL Accounts
        recItem.FindSet();
        out := '<h1>Business Central <> Shopify</h1>';
        out += '<table border="1" style="width:100%;overflow-x:auto;overflow-y:scroll;overflow:scroll;">';
        for r := 1 to rows do begin
            out += '<tr>';
            for c := 1 to Columns do begin
                // out += '<td>.</td>';
                //  let's add some actual names
                out += '<td>' + recItem.Description + '</td>';
                recItem.Next();
            end;
            out += '</tr>';
        end;
        out += '</table>';
        out += '<style>table {  border-collapse: collapse;  border-spacing: 0;width: 100%; border: 1px solid #ddd;}' + 'th, td {  text-align: left;  padding: 8px;} ' + 'tr:nth-child(even){background-color: #f2f2f2}</style>';
        exit(out);
    end;

    trigger OnInit();
    begin
        LoadTopBanners();
    end;

    local procedure LoadTopBanners();
    begin
        if MediaRepositoryStandard.GET('AssistedSetup-NoText-400px.png', FORMAT(CurrentClientType())) AND MediaRepositoryDone.GET('AssistedSetupDone-NoText-400px.png', FORMAT(CurrentClientType())) then if MediaResourcesStandard.GET(MediaRepositoryStandard."Media Resources Ref") AND MediaResourcesDone.GET(MediaRepositoryDone."Media Resources Ref") then TopBannerVisible := MediaResourcesDone."Media Reference".HasValue();
    end;

    var
        myInt: Integer;
        MediaResourcesStandard: Record "Media Resources";
        MediaRepositoryDone: Record "Media Repository";
        MediaRepositoryStandard: Record "Media Repository";
        MediaResourcesDone: Record "Media Resources";
        TopBannerVisible: Boolean;
        TotalBCCustomers: Integer;
        TotalShopifyCustomers: Integer;
}

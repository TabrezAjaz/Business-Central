page 60000 "Contact us"
{
    PageType = List;
    Caption = 'Contact us';
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
        '<!DOCTYPE html> '
            + '<head>'
            + '<meta name="viewport" content="width=device-width, initial-scale=1">'
            + '<style>'
            + '    body {  '
            + '     font-family: Arial, Helvetica, sans-serif;'
            + '     margin: 0;}'
            + 'html {  box-sizing: border-box;}*, *:before, *:after {  box-sizing: inherit;}.column {  float: left;  width: 33.3%;  margin-bottom: 16px;  padding: 0 8px;} '
            + '.card {  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);  margin: 8px;} #controlAddIn{overflow-y: auto;}'
            + '.about-section {  padding: 10px;  text-align: center;  background-color: #474e5d;  color: white;}'
            + '.container {  padding: 1px 16px;}.container::after, .row::after {  content: "";  clear: both;  display: table;}'
            + '.title {  color: grey;}.button {  border: none;  outline: 0;  display: inline-block;  padding: 8px;  color: white;  background-color: #000;  text-align: center;  cursor: pointer;  width: 100%;}'
            + '.button:hover {  background-color: #555;}@media screen and (max-width: 650px) {  .column { width: 100%; display: block; }}'
            + '</style>'
            + '</head>'
            + '<body>'
            + '<div class="about-section">'
            + '  <h1>TecTree Software Consulting Private Limited</h1>'
            + '  <p>Integrating Business & Technology</p>'
            + '</div>'
            + '<h2 style="text-align:center">Our Team</h2>'
            + '<div class="row"> '
            + '  <div class="column">'
            + '    <div class="card">'
            + '    <div class="container"><h2>Vijay Khurana</h2><p class="title">Director - COO</p><p>MS Dynamics Practice</p> <p><a class="button" href="mailto:vijay.khurana@tectreeconsulting.com">Contact</a></p></div>'
            + '    </div>'
            + '  </div>'
            + '  <div class="column">'
            + '    <div class="card">'
            + '     <div class="container"><h2>Saurabh Gupta</h2><p class="title">Director - CTO</p> <p>MS Dynamics Practice</p><p><a class="button" href="mailto:saurabh.gupta@tectreeconsulting.com">Contact</a></p></div>'
            + '    </div>'
            + '  </div>'
            + '  <div class="column">'
            + '    <div class="card">'
            + '     <div class="container"><h2>Tabrez Ajaz</h2><p class="title">Project Lead</p><p>Sr. Consultant</p><p> <a class="button" href="mailto:tabrez.ajaz@tectreeconsulting.com">Contact</a></p></div>'
            + '    </div>'
            + '  </div></div>'
            + '</body>'
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

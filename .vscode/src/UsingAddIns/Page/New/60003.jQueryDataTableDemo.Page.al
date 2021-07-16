page 60003 "Demo - jQuery Data Table"
{
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Demo - jQuery Data Table';
    layout
    {
        area(Content)
        {
            usercontrol(jQueryDataTableAddIn; jQueryDataTableAddIn)
            {
                ApplicationArea = All;
                trigger ControlReady()
                var
                begin
                    // CurrPage.htmlrenderingUserControl.Render('<a href="https://tabrezajaz.com">Tabrez Ajaz Portfolio</a>'); => Render Output_1.png
                    CurrPage.jQueryDataTableAddIn.Render(CreateTable(10, 8)); /// passing to IFrame -> means to our control addin
                end;
            }
        }
    }
    procedure CreateTable(rows: Integer; Columns: Integer): Text
    var
        recItem: Record Item;
        out: Text;
        r, c : Integer;
    begin
        // Find GL Accounts
        recItem.FindSet();
        // out := '$(document).ready(function(){'
        //         + '$("#example").DataTable( {'
        //         + '  order: [[2, ''asc'']],'
        //         + '  rowGroup: {'
        //         + '  dataSrc: 2'
        //         + '}'
        //         + '} );alert("tabrez");'
        //         + '});';
        //out := '<table border="1" style="width:100%;overflow-x:auto;overflow-y:scroll;overflow:scroll;">';
        //out := '<div style="overflow:scroll;"><table id="example" class="display" border="1" style="width:100%;overflow-x:auto;overflow-y:scroll;overflow:scroll;">';
        //out += '<div>';
        out := '<table id="example" class="display">';
        out += '<thead><tr><th>No</th><th>Description</th><th>Search Description</th><th>Unit Price</th><th>Unit Cost</th><th>Base UOM</th></tr></thead>';
        //out += '<tbody>';
        out += '<tbody id="tbodyId">';
        repeat
            out += '<tr>';
            out += '<td>' + recItem."No." + '</td>';
            out += '<td>' + recItem.Description + '</td>';
            out += '<td>' + recItem."Search Description" + '</td>';
            out += '<td>' + Format(recItem."Unit Price") + '</td>';
            out += '<td>' + Format(recItem."Unit Cost") + '</td>';
            out += '<td>' + recItem."Base Unit of Measure" + '</td>';
            out += '</tr>';
        until recItem.Next() = 0;
        // for r := 1 to rows do begin
        //     out += '<tr>';
        //     for c := 1 to Columns do begin
        //         // out += '<td>.</td>';
        //         //  let's add some actual names
        //         out += '<td>' + recItem."No." + '</td>';
        //         out += '<td>' + recItem.Description + '</td>';
        //         out += '<td>' + recItem."Search Description" + '</td>';
        //         out += '<td>' + Format(recItem."Unit Price") + '</td>';
        //         out += '<td>' + Format(recItem."Unit Cost") + '</td>';
        //         out += '<td>' + recItem."Base Unit of Measure" + '</td>';
        //         recItem.Next();
        //     end;
        //     out += '</tr>';
        // end;
        out += '</tbody>';
        //out += '<tfoot><tr><th>No</th><th>Description</th><th>Search Description</th><th>Unit Price</th><th>Unit Cost</th><th>Base UOM</th></tr></tfoot>';
        out += '</table>';
        //out += '</div>';
        // out += '<style>table {  border-collapse: collapse;  border-spacing: 0;width: 100%; border: 1px solid #ddd;}' +
        // 'th, td {  text-align: left;  padding: 8px;} ' +
        // 'tr:nth-child(even){background-color: #f2f2f2}</style>';
        // out += '<style>#tbodyId{style="height:450px;display:block;overflow:scroll"}</style>';
        exit(out);
    end;
}
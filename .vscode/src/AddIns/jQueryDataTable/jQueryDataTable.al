controladdin jQueryDataTableAddIn
{


    Scripts = '.vscode/src/AddIns/jQueryDataTable/scripts/Demo.js',
    'https://code.jquery.com/jquery-3.5.1.js',
    'https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js',
    'https://cdn.datatables.net/1.10.25/js/dataTables.jqueryui.min.js',
    'https://cdn.datatables.net/rowgroup/1.1.3/js/dataTables.rowGroup.min.js';

    StartupScript = '.vscode/src/AddIns/jQueryDataTable/scripts/jQueryDataTableStartup.js';

    StyleSheets = '.vscode/src/AddIns/jQueryDataTable/styles/style.css',
    'https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css',
    'https://cdn.datatables.net/1.10.25/css/dataTables.jqueryui.min.css',
    'https://cdn.datatables.net/rowgroup/1.1.3/css/rowGroup.jqueryui.min.css';
    VerticalStretch = true;
    HorizontalStretch = true;
    RequestedWidth = 700;

    event ControlReady();

    procedure Render(HTML: Text);
}

/*
Imp URLs:
---------
https://datatables.net/extensions/rowgroup/examples/styling/jqueryui.html

*/

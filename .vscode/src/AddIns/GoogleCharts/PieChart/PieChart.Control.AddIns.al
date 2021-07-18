controladdin GooglePieChartControlAddIns
{
    // RequestedHeight = 300;
    // MinimumHeight = 300;
    // MaximumHeight = 300;
    // RequestedWidth = 700;
    // MinimumWidth = 700;
    // MaximumWidth = 700;
    // VerticalStretch = true;
    // VerticalShrink = true;
    // HorizontalStretch = true;
    // HorizontalShrink = true;
    VerticalStretch = true;
    HorizontalStretch = true;
    RequestedWidth = 700;
    Scripts =
        '.vscode/src/AddIns/GoogleCharts/PieChart/scripts/Main.js';
    StyleSheets =
        '.vscode/src/AddIns/GoogleCharts/PieChart/styles/style.css';
    StartupScript = '.vscode/src/AddIns/GoogleCharts/PieChart/scripts/Startup.js';
    // RecreateScript = 'recreateScript.js';
    // RefreshScript = 'refreshScript.js';
    // Images =
    //     'image1.png',
    //     'image2.png';

    event PieChartControlReadyEvent()

    //procedure RenderPieChart(html: Text; pieChartData: Text)
    procedure RenderPieChart(html: Text; TotalBlanketOrder: Integer; TotalCreditMemo: Integer; TotalSalesInvoice: Integer; TotalSalesOrder: Integer; TotalSalesQuotes: Integer; TotalReturnOrder: Integer)
    //procedure RenderPieChart(html: Text)
}
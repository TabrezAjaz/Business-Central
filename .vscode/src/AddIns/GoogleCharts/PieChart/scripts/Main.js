//function RenderPieChart(html,pieChartData){
function RenderPieChart(html,TotalBlanketOrder, TotalCreditMemo, TotalSalesInvoice, TotalSalesOrder, TotalSalesQuotes, TotalReturnOrder){        
    HTMLContainer.insertAdjacentHTML('beforeend',html);
    
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {        
        var data = google.visualization.arrayToDataTable([
            ['Customer', 'Analytics'],
            ['Blanket Order',     TotalBlanketOrder],
            ['Credit Memo',      TotalCreditMemo],
            ['Invoice',  TotalSalesInvoice],
            ['Order', TotalSalesOrder],
            ['Quote',    TotalSalesQuotes],
            ['Return Order',    TotalReturnOrder]
          ]);        
        var options = {
            //title: 'Customer Statistics',
            legend: 'none'       
        };
        
        var chart = new google.visualization.PieChart(document.getElementById('piechart'));
        chart.draw(data, options);
    }
}
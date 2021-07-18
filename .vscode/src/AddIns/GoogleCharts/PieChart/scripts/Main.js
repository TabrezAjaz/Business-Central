//function RenderPieChart(html,pieChartData){
function RenderPieChart(html,TotalBlanketOrder, TotalCreditMemo, TotalSalesInvoice, TotalSalesOrder, TotalSalesQuotes, TotalReturnOrder){        
    HTMLContainer.insertAdjacentHTML('beforeend',html);
    alert(html);
    alert(pieChartData);
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {

        // var data = google.visualization.arrayToDataTable([
        //   pieChartData
        // ]);
        // var data = google.visualization.arrayToDataTable([
        //     ['Customer', 'Analytics'],
        //     ['Blanket Order',     TotalBlanketOrder],
        //     ['Credit Memo',      TotalCreditMemo],
        //     ['Invoice',  TotalSalesInvoice],
        //     ['Order', TotalSalesOrder],
        //     ['Quote',    TotalSalesQuotes],
        //     ['Return Order',    TotalReturnOrder]
        //   ]);
        // var data = google.visualization.arrayToDataTable([
        //     ['Customer', 'Analytics'],
        //     ['Blanket Order',     10],
        //     ['Credit Memo',      10],
        //     ['Invoice',  20],
        //     ['Order', 20],
        //     ['Quote', 10],
        //     ['Return Order', 30]
        //   ]);
        var data = google.visualization.arrayToDataTable([
            ['Task', 'Hours per Day'],
            ["Work",     11],
            ['Eat',      2],
            ['Commute',  2],
            ['Watch TV', 2],
            ['Sleep',    7]
          ]);
        var options = {
            title: 'Customer Statistics',
            legend: 'none'       
        };
        alert(data);
        alert(options);
        var chart = new google.visualization.PieChart(document.getElementById('piechart'));
        chart.draw(data, options);
    }
}
Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('Ready', '');
 
function createIframe()
{
    var placeholder = document.getElementById('controlAddIn');
    var webPage = document.createElement('iframe');
    webPage.id = 'webPage';
    webPage.height = '100%';
    webPage.width = '100%';
    placeholder.appendChild(webPage);
}
 
//createIframe();
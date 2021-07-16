controladdin "Bing Map"
{
    RequestedHeight = 300;
    MinimumHeight = 300;
    // MaximumHeight = 300;    // RequestedWidth = 700;    // MinimumWidth = 700;    // MaximumWidth = 700;
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;
    //Scripts = 'APIs/MAP_Add-In/JsScript/Demo.js';
    // JS files required for Bootstrap
    Scripts = 'https://code.jquery.com/jquery-3.5.1.slim.min.js',
        'https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js',
        'https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js',
        '.vscode/src/AddIns/MAP/JsScript/Demo.js',
        'https://www.bing.com/api/maps/mapcontrol?branch=release&callback=loadMapScenario';

    StartupScript = '.vscode/src/AddIns/MAP/JsScript/Start.js';

    // Bootstrap css    //StyleSheets = 'https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css';    //Scripts = 'APIs/MAP_Add-In/ControlAddin/JsScript/demo.js';    // 'script1.js',    // 'script2.js';
    StyleSheets =
        '.vscode/src/AddIns/MAP/StyleSheet/StyleSheet.css';
    //StartupScript = 'AddIn/JsScript/Start.js';    // ReccreateScript = 'recreateScript.js';    // RefreshScript = 'refreshScript.js';    // Images =    //     'image1.png',    //     'image2.png';

    procedure embedMAP(latitude: Text; longitude: Text)
    event Ready()
}
controladdin HTMLRendering
{
    Scripts = '.vscode/src/AddIns/HTMLRendering.Control-Add-In/scripts/HTMLRenderScripts.js';
    StartupScript = '.vscode/src/AddIns/HTMLRendering.Control-Add-In/scripts/HTMLRenderStartupScript.js';
    StyleSheets = '.vscode/src/AddIns/HTMLRendering.Control-Add-In/styles/style.css';
    VerticalStretch = true;
    HorizontalStretch = true;

    event ControlReady();
    procedure Render(HTML: Text);
}

controladdin ColorPickerAddIn
{
    RequestedHeight = 200;
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;
    Scripts = '.vscode/src/AddIns/ColorPicker/scripts/jscolor.js', '.vscode/src/AddIns/ColorPicker/scripts/Demo.js';
    StartupScript = '.vscode/src/AddIns/ColorPicker/scripts/ColorPickerStartup.js';
    StyleSheets = '.vscode/src/AddIns/ColorPicker/styles/style.css';
    procedure getColorCode(ColorCode: Text)
    event ColorPickerControlReady()
    event ColorPicked(ColorInfo: Text)

    // if you need any other color picker on same page need to repeat the process
    procedure getColorCodeForAnotherColorPicker(ColorCode: Text)
    event GetPickedColor(ColorInfo: Text)
}

/*
// Detail
controladdin MyControlAddIn
{
    // RequestedHeight specifies the initial height of the control add-in.
    RequestedHeight = 300;
    // Specifies the minimum height that the control add-in can be shrunk to. This setting only applies if the VerticalShrink setting is specified.
    MinimumHeight = 300;
    // Specifies the maximum height that the control add-in can be stretched to. This setting only applies if the VerticalStretch setting is specified.
    MaximumHeight = 300;
    // RequestedWidth specifies the initial width of the control add-in.
    RequestedWidth = 700;
    // Specifies the minimum width that the control add-in can be shrunk to. This setting only applies if the HorizontalShrink setting is specified.
    MinimumWidth = 700;
    // Specifies the maximum width that the control add-in can be stretched to. This setting only applies if the HorizontalStretch setting is specified.
    MaximumWidth = 700;
    // VerticalStretch specifies that the control add-in can be made larger vertically. This setting is optional.
    VerticalStretch = true;
    // VerticalShrink specifies that the control add-in can be made smaller vertically. This setting is optional.
    VerticalShrink = true;
    // HorizontalStretch specifies that the control add-in can be made larger horizontally. This setting is optional.
    HorizontalStretch = true;
    // HorizontalShrink specifies that the control add-in can be made smaller horizontally. This setting is optional.
    HorizontalShrink = true;
    // Specifies the list of scripts to include in the control add-in. The scripts could be local files in the package or references to external files using the http or the https protocol.
    Scripts =
        'script1.js',
        'script2.js';
    //Specifies the list of stylesheets to include in the control add-in. The stylesheets could be local files in the package or references to external files using the http or the https protocol.        
    StyleSheets =
        'style.css';
    // Specifies the script which is invoked when web page with the control add-in is loaded.
    StartupScript = 'startupScript.js';
    // Specifies the script which is invoked when the control add-in is recreated.
    RecreateScript = 'recreateScript.js';
    // Specifies the script which is invoked when the control add-in is refreshed.
    RefreshScript = 'refreshScript.js';
    // Specifies the list of images to include in the control add-in.
    Images =
        'image1.png',
        'image2.png';

    event MyEvent()

    procedure MyProcedure()
}
*/

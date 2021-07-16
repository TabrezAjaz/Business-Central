// Create variable
// A control AddIn or User Control AddIn in business central is actually hosted inside an iframe and there is a div sigment with id = controlAddIn
HTMLContainer = document.getElementById("controlAddIn");

Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("ControlReady",[]);


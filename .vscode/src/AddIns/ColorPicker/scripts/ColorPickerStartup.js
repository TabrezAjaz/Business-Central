HTMLContainer = document.getElementById("controlAddIn");

update = function(picker){
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("ColorPicked",[picker.toString()]);  
    //Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("ColorPicked",[picker.toRGBAString()]);      
}



Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("ColorPickerControlReady",[]);
HTMLContainer.insertAdjacentHTML('beforeend','<p><span class="ColorPicker_TabStyle">Report Layout Color </span><button id="myColorInput" style="float: right;" data-jscolor="{onChange: \'update(this)\'}"></button></p>');

HTMLContainer1 = document.getElementById("myColorInput"); 
anotherUpdate = function(picker){
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("GetPickedColor",[picker.toString()]);        
    //Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("GetPickedColor",[picker.toRGBAString()]);
}
HTMLContainer1.insertAdjacentHTML('afterend','<p><span class="ColorPicker_TabStyle">Report Font Color </span><button id="myColorInput1" style="float: right;" data-jscolor="{onChange: \'anotherUpdate(this)\'}"></button></p>');

jscolor.install();

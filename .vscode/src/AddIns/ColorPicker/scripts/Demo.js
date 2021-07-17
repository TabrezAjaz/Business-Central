function getColorCode(ColorCode) {             
    document.getElementById('myColorInput').jscolor.fromString(ColorCode);
    //alert(ColorCode);
    // var colorFieldValue = document.getElementById('myColorInput');
    // colorFieldValue.jscolor.fromString(ColorCode);
    // colorFieldValue.value = ColorCode;  
}

function getColorCodeForAnotherColorPicker(ColorCode) {        
    document.getElementById('myColorInput1').jscolor.fromString(ColorCode);
}
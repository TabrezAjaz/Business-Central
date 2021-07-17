function Render(html){
    HTMLContainer.insertAdjacentHTML('beforeend',html);
}

function doAddtion(){
    var value1= document.getElementById('val1');
    var value2= document.getElementById('val2');
    var result= document.getElementById('result');
    result.value = parseInt(value1.value) + parseInt(value2.value);
  }
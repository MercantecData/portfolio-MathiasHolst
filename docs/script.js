function displayTime() {
  document.getElementById('time').innerHTML=Date()
  }

function changeSize() {
  document.getElementById('test').style.fontSize='40px'
}

function showNew(){
  document.getElementById('show').style.display='block'
}

function hide(){
  document.getElementById('Hide').style.display='none'
}

function add(){
  var p = document.createElement("p");
  var text = document.createTextNode("New paragraph");
  p.appendChild(text);
  var element = document.getElementById('test1');
  element.appendChild(p);
}

function remove(){
  var remove = document.getElementById('test2');
  remove.remove();
}

function changeText(){
  document.getElementById('change').innerHTML = "Ny text";
}

function arrayPrintUd(id){
  var array = ["hej", "hej2", "hej3", "hej4"];
  var i = 0;
  var e;
  var n;
  while(array.length > i){
    var p = document.createElement('p');
    n = document.createTextNode(array[i]);
    p.appendChild(n);
    e = document.getElementById(id);
    e.appendChild(p);
    i++;
  }
}

var i = 0;
var txt = 'Computer Science Student';
var speed = 45;

function typeWriter() {
  if (i < txt.length) {
    document.getElementById("demo").innerHTML += txt.charAt(i);
    i++;
    setTimeout(typeWriter, speed);
  }
}

function display() 
    {
    var x = document.getElementById("myDIV");
    if (x.style.display === "none") {
      x.style.display = "block";
        } 
    else 
    {
      x.style.display = "none";
        }
}


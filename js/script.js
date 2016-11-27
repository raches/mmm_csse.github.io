function respond(){
	var c=confirm("Are You Sure");
	if(c==true)window.location="http://www.mmmut.ac.in/";
	else exit;
	}
	
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
        x.classList.toggle("change");
        
    } else {
        x.className = "topnav";
    }

    
}
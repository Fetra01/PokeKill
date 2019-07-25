var modal= document.getElementById("modalitem");
var choixitem=document.getElementById("choixitem");
var span = document.getElementById("close");

choixitem.onclick=function(){
		modal.style.display="block";
		
	}
	
	span.onclick = function() {
  		modal.style.display = "none";
	}

	window.onclick = function(event) {
  		if (event.target == modal) {
    	modal.style.display = "none";
 		 }
	}
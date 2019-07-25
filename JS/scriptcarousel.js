var modal= document.getElementById("modalcarousel");
var choixpokemon=document.getElementById("choixpokemon");
var span = document.getElementById("close");
var $carousel = document.getElementById("carousel"),
$suivant = document.getElementById("suivant"),
positionCarousel = 0,
i;
//MODAL Sauvegarde
	var modalsauvegarde= document.getElementById("modalsauvegarde");
	var sauvegarde=document.getElementById("sauvegarde");
	var spans = document.getElementById("closed");


function suivant()
{
	positionCarousel++;

	// Si on est arrivé à la fin, on revient au début
	if (positionCarousel == $carousel.children.length)
	{
		positionCarousel = 0;
	}

	// La classe active correspond à la diapo affichée ; on la retire de tous les <li>
	for (i = 0; i < $carousel.children.length; i++)
	{
		$carousel.children[i].classList.remove("active");
	}

	// Puis remet la classe active sur la diapo en cours
	$carousel.children[positionCarousel].classList.add("active");
}

$suivant.onclick = suivant;




choixpokemon.onclick=function(){
		modal.style.display="block";

	}

	span.onclick = function() {
  		modal.style.display = "none";
	}

	window.onclick = function(event) {
  		if (event.target == modal ) {
			modal.style.display = "none";

 		 }
	}

	//MODAL Sauvegarde
		sauvegarde.onclick=function(){
				modalsauvegarde.style.display="block";

			}

			spans.onclick = function() {
		  		modalsauvegarde.style.display = "none";
			}
		

$(document).ready(function(){
	
	//on lance la fonction d'adaptation du design à chaque fois
	//si l'utilisateur actualise sa page, le style ne bougera pas
	adapterDesign();
	//--------------------//
	
	
	//les menus déroulants
	$(".menu_dropdown").menu();
	$(".menu_dropdown, .fleche_bulle").hide();
	
	
	
	$('.elem_menu_top').hover(function () {
		$(this).children(".menu_dropdown, .fleche_bulle").stop(true, false).slideDown();
		},

		function () {
			$(this).children(".menu_dropdown, .fleche_bulle").stop(true, false).slideUp();
	});
	//--------------//
	
	
	//gestion de la position des éléments suivant la largeur de la fenêtre
	$(window).resize(function(){
		adapterDesign();
	});
	//---------------------------//
	
	//positionnement des sous-menus du menu boutiques
	$('#menu_boutiques').menu({
		position: { my: "left top", at: "right+14 top-14 ", of: ".first" }
	});
	
	$('.submenu').height( $('#menu_boutiques').height() );
	//--------------------------------------------//
	
	
});

function adapterDesign()
{
	var windowWidth = $(window).width();
	
	if (windowWidth <= 1000)
	{
		$('#menu_sous_recherche').removeClass("col-xs-4");
		$('#menu_sous_recherche').addClass("col-xs-8");
		
		$('#img_bann').detach();
		
		$('.search_bar').removeClass("col-xs-6");
		$('.search_bar').addClass("col-xs-12");
	}
	else
	{
		if ($('#menu_sous_recherche').hasClass("col-xs-8"))
		{
			$('#menu_sous_recherche').removeClass("col-xs-8");
			$('#menu_sous_recherche').addClass("col-xs-4");
		}
		
		if ($('.search_bar').hasClass("col-xs-12"))
		{
			$('.search_bar').removeClass("col-xs-12");
			$('.search_bar').addClass("col-xs-6");
			
			$('.row .top').append("#img_bann")
		}
	}
}
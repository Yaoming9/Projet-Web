$(document).ready(function(){
	//les menus déroulants
	$(".menu_dropdown").menu();
	$(".menu_dropdown").hide();
	
	$('.elem_menu_top').hover(function () {
		$(this).children(".menu_dropdown").stop(true, false).slideDown();
		},

		function () {
			$(this).children(".menu_dropdown").stop(true, false).slideUp();
	});

	//positionnement des sous-menus du menu boutiques
	$('#menu_boutiques').menu({
		position: { my: "left top", at: "right+14 top-14 ", of: ".first" }
	});
	
	$('.submenu').height( $('#menu_boutiques').height() );
	//--------------------------------------------//
	
	
	//carousel
	$('.carousel_produits')
		.on('jcarousel:firstin', '.first', function(event, carousel){
			$('.carousel_produits-prev').css('opacity', '.5');
		})
		.on('jcarousel:firstout', '.first', function(event, carousel){
			$('.carousel_produits-prev').css('opacity', '1');
		})
		.on('jcarousel:lastin', '.last', function(event, carousel){
			$('.carousel_produits-next').css('opacity', '.5');
		})
		.on('jcarousel:lastout', '.last', function(event, carousel){
			$('.carousel_produits-next').css('opacity', '1');
		})
		.jcarousel({
			// Configuration du carousel ici
			transitions: true
		});
	
	$('.carousel_produits-prev').jcarouselControl({
        target: '-=5'
    });

    $('.carousel_produits-next').jcarouselControl({
        target: '+=5'
    });	

	$('.carousel-btn').hide();
	$('.carousel-item').hover(function () {
		$(this).children(".carousel-btn").fadeIn(25);
		},

		function () {
			$(this).children(".carousel-btn").fadeOut(25);
	});
	//-------------------//
});
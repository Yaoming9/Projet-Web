$(document).ready(function(){
	//les menus déroulants
	$(".menu_dropdown").menu();
	$(".menu_dropdown").hide();
	
	setupCarousel(carousel_1, prev_1, next_1);
	setupCarousel(carousel_2, prev_2, next_2);
	setupCarousel(carousel_3, prev_3, next_3);
	setupCarousel(carousel_4, prev_4, next_4);
	setupCarousel(carousel_5, prev_5, next_5);
	setupCarousel(carousel_6, prev_6, next_6);
	setupCarousel(carousel_7, prev_7, next_7);
	
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
	
	
	$('.carousel-btn').hide();
	$('.carousel-item').hover(function () {
		$(this).children(".carousel-btn").fadeIn(25);
		},

		function () {
			$(this).children(".carousel-btn").fadeOut(25);
	});
	//-------------------//
});

function setupCarousel(id_carou, id_prev, id_next){
	//carousel
	$(id_carou)
		.on('jcarousel:firstin', '.first', function(event, carousel){
			$(id_prev).css('opacity', '.5');
		})
		.on('jcarousel:firstout', '.first', function(event, carousel){
			$(id_prev).css('opacity', '1');
		})
		.on('jcarousel:lastin', '.last', function(event, carousel){
			$(id_next).css('opacity', '.5');
		})
		.on('jcarousel:lastout', '.last', function(event, carousel){
			$(id_next).css('opacity', '1');
		})
		.jcarousel({
			// Configuration du carousel ici
			transitions: true
		});
	
	$(id_prev).jcarouselControl({
        target: '-=5'
    });

    $(id_next).jcarouselControl({
        target: '+=5'
    });	

}
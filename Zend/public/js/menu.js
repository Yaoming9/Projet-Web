$(document).ready(function(){
	//les menus déroulants
	$(".menu_dropdown").menu();
	$(".menu_dropdown").hide();	
	//--------------------------//
	
	//gestion des carousel produits
	setupCarousel(carousel_1, prev_1, next_1);
	setupCarousel(carousel_2, prev_2, next_2);
	setupCarousel(carousel_3, prev_3, next_3);
	setupCarousel(carousel_4, prev_4, next_4);
	setupCarousel(carousel_5, prev_5, next_5);
	setupCarousel(carousel_6, prev_6, next_6);
	setupCarousel(carousel_7, prev_7, next_7);
	//--------------------------------//
	
	
	//Gestion carousel des recommendations
	$("#carousel_reco")
		.on('jcarousel:firstin', '.first', function(event, carousel){
			$('.pageNum').text("1");
		})
		.on('jcarousel:lastin', '.last', function(event, carousel){
			$('.pageNum').text("3");
		})
		.jcarousel({
			// Configuration du carousel ici
			transitions: true,
			wrap: 'both'
		});
	
	$("#prev_reco").jcarouselControl({
        target: '-=8'
    });

    $("#next_reco").jcarouselControl({
        target: '+=8'
    });
	//-------------------------------------//
	
	
	$('.elem_menu_top').hover(function () {
		$(this).children(".menu_dropdown").stop(true, false).slideDown();
		},

		function () {
			$(this).children(".menu_dropdown").stop(true, false).slideUp();
	});

	//positionnement des sous-menus du menu boutiques
	$('#menu_boutiques').menu({
		position: { my: "left top", at: "right-1 top ", of: "#menu_boutiques" }
	});

	// gestion des border-radius
	$('#menu_boutiques .item').hover(function(){
			$('#menu_boutiques').css('border-radius','5px 0px 0px 5px');
		},
		function(){
			$('#menu_boutiques').css('border-radius','5px 5px 5px 5px');
		});
	
	$('.submenu').height( $('#menu_boutiques').height() );
	
	//--------------------------------------------//
	
	
	
	//Gestion des boutons au niveau des carousel
	$('.carousel-btn').hide();
	
	$('.carousel-item').hover(function () {
		$(this).children(".carousel-btn").fadeIn(25);
		$(this).css('cursor','pointer');
		$(this).children(".carousel-btn").width($(this).width());
		},

		function () {
			$(this).children(".carousel-btn").fadeOut(25);
	});
	//-------------------//
});



function setupCarousel(id_carou, id_prev, id_next){
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
			transitions: true
		});
	
	$(id_prev).jcarouselControl({
        target: '-=5'
    });

    $(id_next).jcarouselControl({
        target: '+=5'
    });	

}
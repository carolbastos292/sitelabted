$(document).ready(function(){

	var $target = $(".anime"), 
		animationClass = "anime-start",
		offset = $(window).height()*4/5;

	var documentTop = $(document).scrollTop();


	function animeScroll(){
		$target.each(function(){
			var itemTop = $(this).offset().top;

			documentTop = $(document).scrollTop();

			if (documentTop > itemTop - offset) 
			{
				$(this).addClass(animationClass);

			}else
			{
				$(this).removeClass(animationClass);
			}
		});

	}

	animeScroll();

	$(window).scroll(function(){
		animeScroll();
	});
});




//<!-- Animação rolagem suave -->
jQuery(document).ready(function($) {
	var menuHeight = $('nav').innerHeight();

	console.log(menuHeight);
    $(".scroll").click(function(event){        

	    $('html,body').animate({scrollTop:$(this.hash).offset().top-menuHeight}, 600);
	});
});
//<!-- fim animação -->
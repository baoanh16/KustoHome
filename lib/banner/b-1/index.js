$(function() {
	$('.canhcam-banner-1 .list-items').each(function() {
		$('.canhcam-banner-1 .list-items').slick({
			slidesToShow: 1,
			slidesToScroll: 1,
			arrows: true,
			fade: false,
			infinite: false,
			dots: true,
			speed: 1000,
			autoplay: false,
			autoplaySpeed: 2500,
			responsive: [{
				breakpoint: 991,
				settings: {
					arrows: false,
				}
			}]
		});
		var slides = $(".canhcam-banner-1 .list-items .item .title h1");
		$('.canhcam-banner-1 .list-items').on('beforeChange', function(event, slick, currentSlide, nextSlide) {
			slides.removeClass('fadeInRight');
			// use custom transition
			slides.eq(nextSlide).addClass('fadeInRight');
		});
	});

	$(".scroll").kAnimation({
		ClassName: 'animated',
		Animation: 'fadeInUp',
		// Delay: 0,
		ScrollLoop: false,
		Type: 'Scroll'
	});
	
	slideHeight();
});

function slideHeight(){

	var slideHeight = $('.canhcam-banner-1 .slick-track').outerHeight();
	$('.canhcam-banner-1 .item iframe').height(slideHeight);
	setTimeout(function(){
		$('.canhcam-banner-1 .item iframe').show()
	}, 1200)
}
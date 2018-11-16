$(document).ready(function () {
	$('.canhcam-testimonials-1 .owl-carousel').owlCarousel({
		items: 1,
		center: false,
		padding: 10,
		rewind: true,
		margin: 20,
		navText: ['<span class="mdi mdi-chevron-left"></span>', '<span class="mdi mdi-chevron-right"></span>'],
		nav: true,
		dots: false,
		autoplay: false,
		callbacks: true,
		dotsEach: 1,
		autoplayTimeout: 3000,
		autoplaySpeed: 1500,
		responsive: {
			576: {
				items: 2,
			},
			992: {
				mouseDrag: false,
				pullDrag: false,
				items: 3,
			},
		}
	});

	$('a.fancybox').fancybox();
});
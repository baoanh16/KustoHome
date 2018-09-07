$(function() {
    if ($('.canhcam-carousel-4 .owl-carousel').length) {
        $('.canhcam-carousel-4 .owl-carousel').owlCarousel({
            animateIn: 'fadeIn',
            animateOut: 'fadeOut',
            items: 2,
            loop: true,
            center: false,
            padding: 10,
            margin: 0,
            navText: ['<span class="mdi mdi-chevron-left"></span>', '<span class="mdi mdi-chevron-right"></span>'],
            nav: true,
            dots: false,
            autoplay: true,
            autoplayTimeout: 3000,
            autoplayHoverPause: false,
            callbacks: true,
            responsive: {
                480: {
                    items: 3
                },
                768: {
                    items: 4
                },
                992: {
                    nav: false,
                    items: 6
                },
                1200: {
                    items: 7
                }
            }
        });
    }
	$(".scroll-partner").kAnimation({
        ClassName: 'animated',
        Animation: 'zoomIn',
        // Delay: 0,
        ScrollLoop: false,
        Type: 'Scroll'
    });
});
$(document).ready(function() {
    $('.canhcam-testimonials-1 .owl-carousel').owlCarousel({
        items: 1,
        loop: true,
        center: false,
        padding: 10,
        margin: 20,
        navText: ['<i class="fa fa-chevron-left"></i>', '<i class="fa fa-chevron-right"></i>'],
        nav: false,
        dots: true,
        autoplay: false,
        callbacks: true,
        dotsEach: 1,
        responsive: {
            576: {
                items: 2,
            },
            992: {
                mouseDrag: false,
                pullDrag: false,
                items: 3
            },
        }
    });
});
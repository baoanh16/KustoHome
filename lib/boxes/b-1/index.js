$(document).ready(function() {
    $('.canhcam-boxes-1 .owl-carousel').owlCarousel({
        items: 1,
        loop: true,
        margin: 30,
        nav: true,
        dots: false,
        navText: ['<span class="mdi mdi-chevron-left"></span>', '<span class="mdi mdi-chevron-right"></span>'],
        responsive: {
            768: {
                items: 2,
            }
        }
    });
})
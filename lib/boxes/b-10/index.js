$(function() {
    $('.canhcam-boxes-10 .residential-gallery .owl-carousel').owlCarousel({
        items: 1,
        nav: true,
        loop: true,
        // autoplay: true,
        autoplaySpeed: 750,
        autoplayTimeout: 3500,
        margin: 30,
        startPosition: 0,
        navText: ['<span class="lnr lnr-arrow-left"></span>', '<span class="lnr lnr-arrow-right"></span>'],
        responsive: {
            992: {
                items: 1.3,
            }
        }
    });

    $('.canhcam-boxes-10 .owl-carousel').on('changed.owl.carousel', function(e) {
        var idx = e.item.index + 1;
        $('.owl-item .item').removeClass('cover');
        $('.owl-item .item').eq(idx).addClass('cover');
    });
});
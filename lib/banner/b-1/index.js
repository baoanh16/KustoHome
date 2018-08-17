$(function() {
    $('.canhcam-banner-1 .list-items').each(function() {
        $('.canhcam-banner-1 .list-items').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: true,
            fade: false,
            infinite: false,
            dots: true,
            speed: 300,
            autoplay: true,
            autoplaySpeed: 2000,
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

});
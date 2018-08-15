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
            autoplay: false,
            autoplaySpeed: 2000,
            responsive: [{
                breakpoint: 991,
                settings: {
                    arrows: false,
                }
            }]
        })
    });
});
// $(document).ready(function() {
//   var owl = $('.list-items');

//   owl.owlCarousel({
//     items: 1,
//     loop: true,
//     autoplay: true,
//     autoplayTimeout: 3500,
//     nav: true,
//     margin: 10,
//   });

//   owl.on('changed.owl.carousel', function(event) {
//       var item = event.item.index - 2;     // Position of the current item
//       $('h1').removeClass('animated bounce');
//  $('.item').not('.cloned').eq(item).find('h1').addClass('animated bounce');
//   });

// });
  
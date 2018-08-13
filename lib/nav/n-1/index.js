$(document).on('click', 'a[href^="#"]', function(e) {
    // target element id
    $('.canhcam-nav-1 .nav-item').removeClass('active');
    $(this).parent().addClass('active')
    var id = $(this).attr('href');

    // target element
    var $id = $(id);
    if ($id.length === 0) {
        return;
    }

    // prevent standard hash navigation (avoid blinking in IE)
    e.preventDefault();

    // top position relative to the document
    var pos = $id.offset().top - 110;

    // animated top scrolling
    $('body, html').animate({ scrollTop: pos });
});
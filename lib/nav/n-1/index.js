// $(document).ready(function() {
//     // Cache selectors
//     var lastId,
//         topMenu = $(".canhcam-nav-1"),
//         topMenuHeight = topMenu.outerHeight() + $('header').outerHeight(),
//         // All list items
//         menuItems = topMenu.find("a"),
//         allHeight = $('header').height() + $('.canhcam-nav-1').height(),
//         // Anchors corresponding to menu items
//         scrollItems = menuItems.map(function() {
//             var item = $($(this).attr("href"));
//             if (item.length) { return item; }
//         });

//     // Bind click handler to menu items
//     // so we can get a fancy scroll animation
//     menuItems.click(function(e) {
//         var href = $(this).attr("href"),
//             offsetTop = href === "#" ? 0 : $(href).offset().top;
//         $('html, body').stop().animate({
// 			// scrollTop: offsetTop - allHeight
// 			scrollTop: offsetTop - allHeight
//         }, 300);
//         e.preventDefault();
//     });

//     // Bind to scroll
//     $(window).scroll(function() {
//         // Get container scroll position
//         var fromTop = $(this).scrollTop() + 110;

//         // Get id of current scroll item
//         var cur = scrollItems.map(function() {
//             if ($(this).offset().top < fromTop)
//                 return this;
//         });
//         // Get the id of the current element
//         cur = cur[cur.length - 1];
//         var id = cur && cur.length ? cur[0].id : "";

//         if (lastId !== id) {
//             lastId = id;
//             // Set/remove active class -- This is the part.
//             menuItems
//             .parent().find('a').removeClass("active")
//             .find('a').end().filter("[href='#" + id + "']").addClass("active");
//         }
//     });
// })

$(document).on('click', 'a[href^="#"]', function(e) {
    // target element id
    $('.canhcam-nav-1 .nav-item .nav-link').removeClass('active');
    $(this).addClass('active')
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
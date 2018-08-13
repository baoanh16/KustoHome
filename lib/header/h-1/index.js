function menuMobile() {
    $('.canhcam-header-1 .toggle-menu-mobile').click(function() {
        $('.canhcam-header-1 .menu').toggleClass('active');
    })
}

function searchForm() {
    $('.canhcam-header-1 .search .search-icon').click(function() {
        $('.canhcam-header-1 .search .searchbox').toggleClass('show');
    })
}



$(document).ready(function() {
    // active select Language
    var href = $('.canhcam-header-1 #lang');
    if (window.location.pathname.search('vi-VN') == 1) {
        document.getElementById("lang").value = 'VN';
    } else {
        document.getElementById("lang").value = 'EN';
    };
    $(href).on('change', function() {
        if (href.val() == 'VN') {
            window.location.pathname = '/vi-VN/Default.aspx';

        } else {
            window.location.pathname = '';

        }
    });


    if (window.location.pathname.search('projects') == 1) {
        $('.canhcam-header-1 .menu .nav-item:nth-child(2) .nav-link').addClass('active');
    } else {
        $('.canhcam-header-1 .menu .nav-item:nth-child(2) .nav-link').removeClass('active');
    };

    if (window.location.pathname.search('media-center') == 1) {
        $('.canhcam-header-1 .menu .nav-item:nth-child(4) .nav-link').addClass('active');
    } else {
        $('.canhcam-header-1 .menu .nav-item:nth-child(4) .nav-link').removeClass('active');
    };

    menuMobile();
    searchForm();
})
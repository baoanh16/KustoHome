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

function changeLink() {

}

$(document).ready(function() {
    menuMobile();
    searchForm();
})
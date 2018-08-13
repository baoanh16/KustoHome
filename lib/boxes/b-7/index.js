function toggleApplyForm() {
    $('.canhcam-boxes-7 .vacancie-detail .kusto-toggle-form').click(function() {
        $('.canhcam-boxes-7 .vacancie-detail #kusto-form-apply').slideToggle();
    })
}
$(document).ready(function() {
    toggleApplyForm();
})
$(function () {
   let spec = $('#site-spec input').val().replace(/\n/g, "<br />");
    $('#site-spec').html(spec);
    let notice = $('#notice input').val().replace(/\n/g, "<br>");
    $('#notice').html(notice);
})

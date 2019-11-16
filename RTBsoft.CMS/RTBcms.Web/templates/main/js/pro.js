$(function () {

    let specHtml = '<table>';
    let spec = $('#site-spec input').val().split(/\n/);
    spec.forEach(function (item) {
        let it = item.split('：');
        specHtml += '<tr class="clearfix"><th class="row-title-n">' + it[0] + '：</th><td class="r-txt">' + it[1] + '</td></tr>';
    });
    specHtml += '</table>';
    $('#site-spec').html(specHtml);

    let noticeHtml = '<table>';
    let notice = $('#notice input').val().split(/\n/);
    spec.forEach(function (item) {
        let it = item.split('：');
        noticeHtml += '<tr class="clearfix"><th class="row-title-n">' + it[0] + '：</th><td class="r-txt">' + it[1] + '</td></tr>';
    })
    noticeHtml += '</table>';
    $('#notice').html(noticeHtml);

})

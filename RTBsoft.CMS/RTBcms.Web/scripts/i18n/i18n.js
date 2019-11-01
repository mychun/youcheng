$(function () {
    i18n.init({
        lng: geti18nCookie("i18next") || 'zh',
        resGetPath: '/scripts/i18n/locales/__lng__/__ns__.json?v=2.1'
    }, function (t) {
        $('body').i18n();
    });

    $('#zh, #en').click(function () {
        i18n.init({
            resGetPath: '/scripts/i18n/locales/__lng__/__ns__.json?v=2.1',
            lng: $(this).prop('id')
        }, function (t) {
            $('body').i18n();
        });
    });
});
function geti18nCookie(name) {
    var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
    if (arr = document.cookie.match(reg))
        return unescape(arr[2]);
    else
        return null;
}
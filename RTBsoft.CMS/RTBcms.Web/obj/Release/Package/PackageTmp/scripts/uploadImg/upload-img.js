﻿//点击
var clickImg = function (obj) {
    $(obj).parent().find('.upload_input').click();
}
//删除
var deleteImg = function (obj) {
    $(obj).parent().find('input').val('');
    $(obj).parent().find('img.preview').attr("src", "");
    //IE9以下
    $(obj).parent().find('img.preview').css("filter", "");
    $(obj).hide();
    $(obj).parent().find('.addImg').show();
    $(obj).parent().find('.preBlock').hide();
}
//选择图片
function change(file) {
    //预览
    var pic = $(file).parent().find(".preview");
    var preBlock = $(file).parent().find(".preBlock");
    //添加按钮
    var addImg = $(file).parent().find(".addImg");
    //删除按钮
    var deleteImg = $(file).parent().find(".delete");

    var ext = file.value.substring(file.value.lastIndexOf(".") + 1).toLowerCase();

    // gif在IE浏览器暂时无法显示
    if (ext != 'png' && ext != 'jpg' && ext != 'jpeg') {
        if (ext != '') {
            alert("图片的格式必须为png或者jpg或者jpeg格式！");
        }
        return;
    }
    //判断IE版本
    var isIE = navigator.userAgent.match(/MSIE/) != null,
        isIE6 = navigator.userAgent.match(/MSIE 6.0/) != null;
    isIE10 = navigator.userAgent.match(/MSIE 10.0/) != null;
    if (isIE && !isIE10) {
        file.select();
        var reallocalpath = document.selection.createRange().text;

        // IE6浏览器设置img的src为本地路径可以直接显示图片
        if (isIE6) {
            pic.attr("src", reallocalpath);
        } else {
            // 非IE6版本的IE由于安全问题直接设置img的src无法显示本地图片，但是可以通过滤镜来实现             
            pic.css("filter", "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale',src=\"" + reallocalpath + "\")");
            // 设置img的src为base64编码的透明图片 取消显示浏览器默认图片
            pic.attr('src', 'data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==');
        }
        addImg.hide();
        preBlock.show();
        deleteImg.show();
    } else {
        html5Reader(file, pic, addImg, deleteImg, preBlock);
    }
}
//H5渲染
function html5Reader(file, pic, addImg, deleteImg, preBlock) {
    var file = file.files[0];
    var reader = new FileReader();
    reader.readAsDataURL(file);
    reader.onload = function (e) {
        pic.attr("src", this.result);
    }
    addImg.hide();
    preBlock.show();
    deleteImg.show();
}
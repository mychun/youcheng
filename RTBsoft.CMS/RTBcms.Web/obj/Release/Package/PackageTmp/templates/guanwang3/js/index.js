﻿
$(function () {
    //首页头部logo
    //未滚动时，头部显示的logo
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=38",
        dataType: "json",
        success: function (data) {
            if (data.hasOwnProperty('file_path'))
                $(".logo-img-active").attr("src", data[0].file_path);
        }
    });

    //菜单滚动改变
    $(window).scroll(function () {
        $(window).scrollTop() > 60 ? $("body").addClass("page-on-scroll") : $("body").removeClass("page-on-scroll")
    });

    //查询切换
    $(".fix-head span").click(function () {
        if ($(this).hasClass("active") == false) {
            $(this).addClass("active").siblings().removeClass("active");
            $(".f-list").eq($(this).index()).fadeIn().siblings().hide();
        }
    });

    //友情链接滚动
    $("#friendBox").parallelRoll();

    //头部背景图内容
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=3",
        dataType: "json",
        success: function (data) {
            var src = data[0].file_path;
            $(".banner").css("background-image", "url(" + src + ")");
            let html = '<img src="' + src + '" >';
            html += data[0].content;
            $(".banner").append(html);
        }
    });

    //关于我们内容
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=20",
        dataType: "json",
        success: function (data) {
            $(".dynamic-product-title").text(data[0].title);
            $(".dynamic-product-txt").text(data[0].content);
            $(".dynamic-product-more").attr('href', data[0].link_url);
        }
    });

    function addIcon() {
        let html = '';
        $.ajax({
            type: "post",
            url: "/plugins/advert/advert.ashx?id=22",
            dataType: "json",
            success: function (data) {
                $('.icon-k').each(function (i) {
                    let fp = data[i].file_path;
                    let title = data[i].title;
                    let html = '<img src="' + fp + '" alt="' + title + '" >';
                    $(this).append(html);
                })
            }
        });
    }

    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=21",
        dataType: "json",
        success: function (data) {
            let html = "";
            for (let i = 0; i < data.length; i++) {
                html += '<li><img src="' + data[i].file_path + '" alt="' + data[i].title + '" ><span class="fixed-wrap">';
                html += '<i class="icon-k"></i>';
                html += '<i class="txt-k">' + data[i].title + '</i></span></li>';
            }
            $(".dynamic-product-list").append(html);
            addIcon();
        }
    });

    //关于我们内容
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=23",
        dataType: "json",
        success: function (data) {
            $(".dynamic-about-title").text(data[0].title);
            $(".dynamic-about-txt").text(data[0].content);
            $(".dynamic-about-more").attr('href', data[0].link_url);
        }
    });

    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=24",
        dataType: "json",
        success: function (data) {
            let html = "";
            for (let i = 0; i < data.length; i++) {
                html += '<dl><dt><img src="' + data[i].file_path + '" alt="' + data[i].title + '" ></dt><dd>' + data[i].title + '</dd></dl>';
            }
            $(".dynamic-about-list").append(html);
        }
    });

})
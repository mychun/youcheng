﻿$(function () {
    //试算与轨迹查询切换
    $(".fix-head span").click(function () {
        if ($(this).hasClass("active") == false) {
            $(this).addClass("active").siblings().removeClass("active");
            $(".f-list").eq($(this).index()).fadeIn().siblings().hide();
        }
    });

    //友情链接滚动
    $("#friendBox").parallelRoll();

    //幻灯片内容
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=1",
        dataType: "json",
        success: function (data) {
            var html = "";
            for (var i = 0; i < data.length; i++){
                html += '<li style="background-image: url(\'' + data[i].file_path + '\');"></li>';
            }
            $(".slides").append(html);

            $('.flexslider').flexslider({
                directionNav: false,
                slideshowSpeed: 3000,
                before: function (slider){
                    slider.pause()
                    slider.play();
                }
            });
        }
    });

    //关于我们内容
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=10",
        dataType: "json",
        success: function (data) {
            $(".dynamic-about-me-title").text(data[0].title);
            $(".dynamic-about-me-txt").text(data[0].content);
        }
    });
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=11",
        dataType: "json",
        success: function (data) {
            let html = "";
            for (let i = 0; i < data.length; i++) {
                html += '<dl><dt><img src="' + data[i].file_path + '" alt="' + data[i].title + '" ></dt><dd>' + data[i].title + '</dd></dl>';
            }
            $(".dynamic-about-list").append(html);
        }
    });

    //产品服务内容
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=12",
        dataType: "json",
        success: function (data) {
            $(".dynamic-product-title").text(data[0].title);
            $(".dynamic-product-txt").text(data[0].content);
        }
    });
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=13",
        dataType: "json",
        success: function (data) {
            let html = "";
            for (let i = 0; i < data.length; i++) {
                html += '<dl class="col-dl"><dt><img src="' + data[i].file_path + '" alt="' + data[i].title + '" ></dt><dd><h3>' + data[i].title + '</h3><p>' + data[i].content + '</p></dd></dl>';
            }
            $(".dynamic-product-list").append(html);
        }
    });

    //新闻资讯
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=14",
        dataType: "json",
        success: function (data) {
            $(".dynamic-news-title").text(data[0].title);

            let html = '<img src="' + data[0].file_path + '" alt="' + data[0].title + '" >';
            $(".dynamic-news-img").append(html);
        }
    });

})
$(function () {

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
        url: "/plugins/advert/advert.ashx?id=5",
        dataType: "json",
        success: function (data) {
            var html = "";
            for (var i = 0; i < data.length; i++) {
                html += '<div class="swiper-slide"><a href="' + data[i].link_url + '" target="_blank"><img src="' + data[i].file_path + '" /></a></div>';
            }
            //添加html，触发幻灯片插件
            $(".swiper-wrapper").append(html);

            //幻灯片插件
            var swiper = new Swiper('.swiper-container', {
                autoplay: 2000,
                loop: true,
                pagination: ".swiper-pagination",
                calculateHeight: true,
                paginationClickable: true

            });
            $(".swiper-button-prev").on('click', function () {
                swiper.swipePrev()
            });
            $(".swiper-button-next").on('click', function () {
                swiper.swipeNext()
            });
            $(".swiper-container").hover(function () {
                swiper.stopAutoplay();
            }, function () {
                swiper.startAutoplay();
            });
        }
    });

    //标语内容
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=27",
        dataType: "json",
        success: function (data) {
            let html = "";
            for (let i = 0; i < data.length; i++) {
                html += '<div class="info-lump"><div class="i-top"><img src="' + data[i].file_path + '" alt="' + data[i].title + '" ></div><div class="i-bottom"><h3>' + data[i].title + '</h3><p>' + data[i].content + '</p></div></div>';
            }
            $(".dynamic-slogan").append(html);
        }
    });

    //关于我们内容
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=28",
        dataType: "json",
        success: function (data) {
            let html = "";
            for (let i = 0; i < data.length; i++) {
                html += '<h3><img class="iconf" src="' + data[i].file_path + '" alt="' + data[i].title + '" ><span class="title-txt">' + data[i].title + '</span></h3><p>' + data[i].content + '</p>';
            }
            $(".dynamic-about-title").append(html);
        }
    });

    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=29",
        dataType: "json",
        success: function (data) {
            let html = "";
            for (let i = 0; i < data.length; i++) {
                html += '<div class="l-fl fl"> <img src="' + data[i].file_path + '" alt="' + data[i].title + '"></div><div class="l-fr fr"><p class="row-p">' + data[i].content + '</p></div>';
            }
            $(".dynamic-about-list").append(html);
        }
    });

    //产品服务内容
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=30",
        dataType: "json",
        success: function (data) {
            let html = "";
            for (let i = 0; i < data.length; i++) {
                html += '<h3><img class="iconf" src="' + data[i].file_path + '" alt="' + data[i].title + '" ><span class="title-txt">' + data[i].title + '</span></h3><p>' + data[i].content + '</p>';
            }
            $(".dynamic-server-title").append(html);
        }
    });
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=31",
        dataType: "json",
        success: function (data) {
            let html = "";
            for (let i = 0; i < data.length; i++) {
                html += '<dl><dt><img src="' + data[i].file_path + '" alt="' + data[i].title + '"></dt><dd><h3>' + data[i].title + '</h3><p>' + data[i].content + '</p></dd></dl>';
            }
            $(".dynamic-server-list").append(html);
        }
    });

    //新闻资讯图片内容
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=32",
        dataType: "json",
        success: function (data) {
            let html = "";
            for (let i = 0; i < data.length; i++) {
                html += '<img src="' + data[i].file_path + '" alt="' + data[i].title + '">';
            }
            $(".dynamic-news-img").append(html);
        }
    });

});
$(function () {
    var swiper = new Swiper('.swiper-container', {
        autoplay: 3000,
        loop: true,
        pagination: ".swiper-pagination",
        slidesPerView: 1,
        calculateHeight: true,
        paginationClickable: true

    });
    $(".swiper-button-next").on('click', function () {
        swiper.swipePrev()
    });
    $(".swiper-button-prev").on('click', function () {
        swiper.swipeNext()
    });
    $(".swiper-container").hover(function () {
        swiper.stopAutoplay();
    }, function () {
        swiper.startAutoplay();
    });

    //友情链接滚动
    $("#friendBox").parallelRoll();

    //幻灯片内容
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=6",
        dataType: "json",
        success: function (data) {
            var html = "";
            for (var i = 0; i < data.length; i++) {
                html += '<div class="swiper-slide" style="background-image:url(' + data[i].file_path + ')">' + data[i].content + '</div>';
            }
            //添加html，触发幻灯片插件
            $(".swiper-wrapper").append(html);

            //幻灯片插件
            var swiper = new Swiper('.swiper-container', {
                autoplay: 3000,
                loop: true,
                speed: 1500,
                pagination: ".swiper-pagination",
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

    //产品服务内容
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=33",
        dataType: "json",
        success: function (data) {
            let html = "";
            for (let i = 0; i < data.length; i++) {
                html += '<dl class="list-dl"><dt><img src="' + data[i].file_path + '" alt="' + data[i].title + '" /></dt><dd><h3><span>' + data[i].title + '</span></h3><p>' + data[i].content + '</p></dd></dl>';
            }
            $(".dynamic-product-list").append(html);
        }
    });

    //关于我们内容
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=34",
        dataType: "json",
        success: function (data) {
            $(".dynamic-about-title").text(data[0].title);
            $(".dynamic-about-txt").text(data[0].content);
        }
    });

    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=35",
        dataType: "json",
        success: function (data) {
            let html = "";
            for (let i = 0; i < data.length; i++) {
                html += '<dl class="info-dl"><dt class="icon-k"><img src="' + data[i].file_path + '" alt="' + data[i].title + '" ></dt><dd><h3>' + data[i].title + '</h3><p>' + data[i].content + '</p></dd></dl>';
            }
            $(".dynamic-about-list").append(html);
        }
    });

    //新闻资讯图片内容
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=36",
        dataType: "json",
        success: function (data) {
            let html = "";
            for (let i = 0; i < data.length; i++) {
                html += '<img src="' + data[i].file_path + '" alt="' + data[i].title + '">';
            }
            $(".dynamic-news-img").append(html);
        }
    });

    //滚动动画
    $('.animate').scrolla({
        mobile: false,
        once: true
    });
});
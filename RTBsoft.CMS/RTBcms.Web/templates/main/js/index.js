$(function () {
    //幻灯片
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=39",
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

    //菜单
    $(".nav-wrap span").click(function () {
        $(this).addClass("sel").siblings().removeClass("sel");
        
        $('.son-lump .son-wrap').hide();
        $('.son-lump .son-wrap').eq($(this).index()).fadeIn();
    });
    $('.s-item').click(function () {
        $('.s-item').removeClass("sel");
        $(this).addClass("sel");

        let navInex = $(".nav-wrap span.sel").index();

        $('.i-pro-list').hide();
        $('.i-pro-list').eq(navInex).fadeIn();
        $('.i-pro-list').eq(navInex).children().hide();
        $('.i-pro-list').eq(navInex).children().eq($(this).index()).show();
    });

    
})

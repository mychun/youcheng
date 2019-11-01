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
        url: "/plugins/advert/advert.ashx?id=2",
        dataType: "json",
        success: function (data) {
            var html = "";
            for (var i = 0; i < data.length; i++) {
                html += '<li style="background-image: url(\'' + data[i].file_path + '\');"><a href="' + data[i].link_url + '" target="_blank"></a></li>';
            }
            $(".slides").append(html);

            //显示隐藏左右切换幻灯片按钮
            $('.flexslider').flexslider({
                slideshowSpeed: 3000,
                before: function (slider) {
                    slider.pause()
                    slider.play();
                }
            });
            $(".flexslider").hover(function () {
                $(".flex-prev, .flex-next").stop().fadeIn();
            }, function () {
                $(".flex-prev, .flex-next").stop().fadeOut();
            });
        }
    });

    //产品服务内容
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=15",
        dataType: "json",
        success: function (data) {
            $(".dynamic-product-title").text(data[0].title);
            $(".dynamic-product-txt").text(data[0].content);
            $(".dynamic-product-more").attr('href', data[0].link_url);
        }
    });

    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=16",
        dataType: "json",
        success: function (data) {
            let html = "";
            for (let i = 0; i < data.length; i++) {
                html += '<dl><dt><img src="' + data[i].file_path + '" alt="' + data[i].title + '" ></dt><dd>' + data[i].title + '</dd><dd class="dd-b">' + data[i].content + '</dd></dl>';
            }
            $(".dynamic-product-list").append(html);
        }
    });

    //关于我们内容
    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=17",
        dataType: "json",
        success: function (data) {
            $(".dynamic-about-title").text(data[0].title);
            $(".dynamic-about-txt").text(data[0].content);
            $(".dynamic-about-more").attr('href', data[0].link_url);
        }
    });

    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=18",
        dataType: "json",
        success: function (data) {
            let html = "";
            for (let i = 0; i < data.length; i++) {
                html += '<dl><dt><img src="' + data[i].file_path + '" alt="' + data[i].title + '" ></dt><dd>' + data[i].title + '</dd></dl>';
            }
            $(".dynamic-about-list").append(html);
        }
    });

    $.ajax({
        type: "post",
        url: "/plugins/advert/advert.ashx?id=19",
        dataType: "json",
        success: function (data) {
            $(".dynamic-about-cont").text(data[0].content);
        }
    });
})
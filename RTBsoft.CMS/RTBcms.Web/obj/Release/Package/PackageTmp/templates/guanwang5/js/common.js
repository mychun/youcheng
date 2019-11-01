//获取在线订单地址
var onlineOrderUrl = $("#onlineOrderUrl").val();

//获取url参数
$.getUrlParam = function (name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); return null;
}

//国家选择框
$(function () {
    //选择框显示隐藏
    var txtCountry = $("#txtCountry");
    var fbt = $(".fbt");
    txtCountry.click(function () {
        var left = txtCountry.offset().left + txtCountry.outerWidth() + 5;
        var top = txtCountry.offset().top;
        fbt.css({ "top": top, "left": left, "margin-left": "0px", "margin-top": "0px" });
        fbt.fadeIn();
    })

    $(".fblist").on("click","a", function () {
        var title = $(this).attr("title");
        txtCountry.val(title);
        fbt.fadeOut();
    });
    
    $(".boxcolse").click(function () {
        fbt.fadeOut();
    })
    $(".fbtitle1 a").each(function (i) {
        $(this).click(function () {
            $(".tabcon >div").eq(i).show().siblings().hide();
        })
    })

    //选择框拖拽
    var _move = false;
    $(".fbtitle").mousedown(function (e) {
        _move = true;
        _x = e.pageX - parseInt($(this).parent("div").css("left"));
        _y = e.pageY - parseInt($(this).parent("div").css("top"));
        //$(this).fadeTo(20, 0.25);//点击后开始拖动并透明显示
    });

    $(document).mousemove(function (e) {
        if (_move) {
            var x = e.pageX - _x;//移动时根据鼠标位置计算控件左上角的绝对位置      
            var y = e.pageY - _y;
            if (y < 0) {
                y = 0;
            }
            $(".fbtitle").each(function () {
                if ($(this).is(":hidden")) {

                }
                else {
                    $(this).parent("div").css({ "top": y, "left": x });//控件新位置
                }
            })
        }
    }).mouseup(function () {
        _move = false;
        //$(this).fadeTo("fast", 1);//松开鼠标后停止移动并恢复成不透明
    })
    $(".search_bt").mousedown(function (e) {
        e.stopPropagation();
    })
});

//国家列表
function GetCountry() {
    $.ajax({
        type: "POST",
        async: true,
        url: onlineOrderUrl + "/webservice/Service.ashx",
        data: { method: "country"},
        dataType: 'jsonp',
        jsonp: "callbackparam",
        success: function (result) {
            if (result != null) {
                countryData = result.data;
                var count = countryData.length;
                for (var i = 0; i < count; i++) {
                    var country_code = countryData[i].code;
                    var country_cnname = countryData[i].cnname;
                    var country_enname = countryData[i].enname;
                    var firstLetter = country_enname.substr(0, 1);
                    if ("US,DE,AU,CA,FR,IT,JP,RU,GB,ES".indexOf(country_code) >= 0) {
                        $("#CommonCountry").append("<li><a href=\"javascript:;\" title=\"" + country_code + "\">" + country_cnname + "(" + country_enname + ")</a></li>");
                    }
                    $("#" + firstLetter).append("<li><a href=\"javascript:;\" title=\"" + country_code + "\">" + country_cnname + "-" + country_enname + "</a></li>");
                }
            }
            else {
            }
        },
        error: function () {
        }
    });
}
GetCountry();

//查询国家
function SearchCountry() {
    var txt = $.trim($("#Content").val());
    if (txt != "") {
        $.ajax({
            type: "POST",
            async: true,
            url: onlineOrderUrl + "/webservice/Service.ashx",
            data: { method: "country", keyword: txt },
            dataType: 'jsonp',
            jsonp: "callbackparam",
            success: function (result) {
                $("#SearchRes").html("");
                if (result != null) {
                    countryData = result.data;
                    var count = countryData.length;
                    for (var i = 0; i < count; i++) {
                        var country_code = countryData[i].code;
                        var country_cnname = countryData[i].cnname;
                        var country_enname = countryData[i].enname;
                        $("#SearchRes").append("<li><a href=\"javascript:;\" title=\"" + country_code + "\">" + country_cnname + "-" + country_enname + "</a></li>");
                    }
                }
                $("#Search").css("display", "block");
                $("#SearchRes").css("display", "block");
            },
            error: function () {
            }
        });
    } else {
        alert("请输入需要查询的国家！");
        $("#SearchRes").html("");
    }
}

//起运地
function startCity() {
    $.ajax({
        type: "POST",
        async: true,
        url: onlineOrderUrl + "/webservice/Service.ashx",
        data: { method: "location" },
        dataType: 'jsonp',
        jsonp: "callbackparam",
        success: function (result) {
            if (result != null) {
                cityData = result.data;
                var count = cityData.length;
                for (var i = 0; i < count; i++) {
                    var city_code = cityData[i].code;
                    var city_cnname = cityData[i].cnname;
                    $("#txtLocation").append("<option value='" + city_code + "'>" + city_cnname + "</option>");
                }

                if ($.getUrlParam('txtLocation')) {
                    $("#txtLocation").val($.getUrlParam('txtLocation'));
                }
            }
            else {
            }
        },
        error: function () {
        }
    });
}
startCity();

//试算查询
function searchBudgetFuc(){
    if ($("#txtCountry").val() == "请选择") {
        alert("请选择目的地国家！");
        return false;
    }
    if ($("#txtWeight").val() == "") {
        alert("请输入包裹重量！");
        return false;
    }

    return true;
}

//轨迹查询
function searchOrder() {
    if ($("#trackNumber").val() == "") {
        alert("请输入需要查询的单号！");
        return false;
    }

}
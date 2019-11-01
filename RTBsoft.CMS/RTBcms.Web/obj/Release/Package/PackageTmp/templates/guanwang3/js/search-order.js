﻿//获取在线订单地址
var onlineOrderUrl = $("#onlineOrderUrl").val();

var trackNumber = $("#trackNumber");

//展开信息
function showmore(o) {
    var nextDom = $(o).next();
    if (nextDom.css("display") == "none") {
        $(o).addClass("active");
        nextDom.fadeIn();
    }
    else {
        $(o).removeClass("active");
        nextDom.fadeOut();
    }
}

//获取轨迹数据
function searchOrder(TrackNumberArr) {
    $("#appendBody").empty();
    $("#appendBody").append('<tr><td colspan="2" class="hint-td">正在查询...</td><tr>');

    settings = {
        "sp": "",
        "nums": TrackNumberArr
    }
    console.log(settings);
    var jsonStr = JSON.stringify(settings);
    var hash = hex_md5(jsonStr);
    var b = new Base64();
    var keyEnc = b.encode(hash);

    $.ajax({
        type: "POST",
        async: true,
        url: onlineOrderUrl + "/webservice/Service.ashx",
        data: {
            method: "track",
            key: keyEnc,
            param: jsonStr
        },
        dataType: 'jsonp',
        jsonp: "callbackparam",
        success: function (result) {
            if (result != null) {
                searchData = result.data;
                console.log(searchData);
                var html = "";

                $("#appendBody").empty();

                if (searchData != "undefined" && searchData != undefined) {
                    for (var i = 0; i < searchData.length; i++) {

                        var server_hawbcode = searchData[i].server_hawbcode;
                        var track_status_name = searchData[i].track_status_name;
                        var destination_country_name = searchData[i].destination_country_name;
                        var details = searchData[i].details;

                        html += '<tr class="h-pointer" onclick="showmore(this);"><td><i class="icon-active"></i></td>';
                        html += '<td><p class="row-wrap"><span class="col-wrap"><i class="order-icon"></i>';
                        html += '<i>' + server_hawbcode + '</i>';
                        html += '<i class="order-status">' + track_status_name + '</i></span></p>';
                        html += '<p class="row-wrap"><span class="col-wrap">';
                        html += '<i class="area-icon"></i>目的国家：<i>' + destination_country_name + '</i></span>';
                        html += '<span class="col-wrap"><i class="dibiao-icon"></i>最新轨迹：<i>' + details[0].track_occur_date + '&nbsp;&nbsp;' + details[0].track_location + '&nbsp;&nbsp;' + details[0].track_description + '</i></span>';
                        html += '</p></td></tr>';

                        html += '<tr class="display-none"><td></td><td><ul class="info-show">';
                        for(var y = 0; y < details.length; y++){
                            html += '<li><span class="circle"></span>';
                            html += '<span class="info-wrap">' + details[y].track_occur_date + '</span>'
                            html += '<span class="dibiao-blue-icon"></span>';
                            html += '<span class="info-wrap">' + details[y].track_location + '</span>';
                            html += '<span class="qizi-blue-icon"></span>';
                            html += '<span class="info-wrap">' + details[y].track_description + '</span></li>'
                        }
                        html += '</ul></td></tr>'
                    }
                } else {
                    html = '<tr><td colspan="13" class="hint-td">暂无数据</td><tr>';
                }
                $("#appendBody").append(html);
                $("#btnSubmit").val("查 询").attr("disabled", false);
            }
            else {
            }
        },
        error: function () {
        }
    });
}

//初始查询
function loadValue() {
    $.getUrlParam = function (name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]); return null;
    }
    if ($.getUrlParam('txtWeight') == "") {
        return false;
    }

    var paramTrackNumber = $.getUrlParam('trackNumber');
    var TrackNumberArr = new Array();

    trackNumber.val(paramTrackNumber);
    var reg = /[a-zA-Z0-9_\\-]+/g;
    TrackNumberArr = paramTrackNumber.match(reg);

    searchOrder(TrackNumberArr);
}
loadValue();

function searchOrderMeth() {
    if (trackNumber.val() == "") {
        alert("请输入需要查询的单号！");
        return false;
    }
    $("#btnSubmit").val("查询中...").attr("disabled", true);
    return true;
}
﻿var txtCountry = $("#txtCountry");
var txtWeight = $("#txtWeight");
var txtLocation = $("#txtLocation");
var ddlProductGroup = $("#ddlProductGroup");
var txtLength = $("#txtLength");
var txtWidth = $("#txtWidth");
var txtHeight = $("#txtHeight");
var txtCargoType = $("#txtCargoType");
var cblType = $("#cblType");
var otherServiceValue = [];

//运输类型
function shippingTypeFuc() {
    $.ajax({
        type: "POST",
        async: true,
        url: onlineOrderUrl + "/webservice/Service.ashx",
        data: { method: "productgroup" },
        dataType: 'jsonp',
        jsonp: "callbackparam",
        success: function (result) {
            if (result != null) {
                groupData = result.data;
                var count = groupData.length;
                for (var i = 0; i < count; i++) {
                    var group_code = groupData[i].code;
                    var group_cnname = groupData[i].cnname;
                    ddlProductGroup.append("<option value='" + group_code + "'>" + group_cnname + "</option>");
                }
                if ($.getUrlParam('ddlProductGroup')) {
                    ddlProductGroup.val($.getUrlParam('ddlProductGroup'));
                }
            }
            else {
            }
        },
        error: function () {
        }
    });
}
shippingTypeFuc()

//包裹类型
function cargoType() {
    $.ajax({
        type: "POST",
        async: true,
        url: onlineOrderUrl + "/webservice/Service.ashx",
        data: { method: "cargotype" },
        dataType: 'jsonp',
        jsonp: "callbackparam",
        success: function (result) {
            if (result != null) {
                typeData = result.data;
                var count = typeData.length;
                for (var i = 0; i < count; i++) {
                    var type_code = typeData[i].code;
                    var type_cnname = typeData[i].cnname;
                    txtCargoType.append("<option value='" + type_code + "'>" + type_cnname + "</option>");
                }
                if (txtCargoType.find("option[value='W']").length >= 1) {
                    txtCargoType.val("W");
                }
                if ($.getUrlParam('txtCargoType')) {
                    txtCargoType.val($.getUrlParam('txtCargoType'));
                }
            }
            else {
            }
        },
        error: function () {
        }
    });
}
cargoType();


//额外服务
function otherService() {
    $.ajax({
        type: "POST",
        async: true,
        url: onlineOrderUrl + "/webservice/Service.ashx",
        data: { method: "trail_extraservice" },
        dataType: 'jsonp',
        jsonp: "callbackparam",
        success: function (result) {
            if (result != null) {
                serviceData = result.data;
                var count = serviceData.length;

                let html = '';
                for (var i = 0; i < count; i++) {
                    var service_code = serviceData[i].code;
                    var service_cnname = serviceData[i].cnname;
                    html += '<label class="checkbox"><input name="extraService' + i + '" value="' + service_code + '" type="checkbox">' + service_cnname + '</label>';
                }
                if (html == '') {
                    cblType.hide();
                } else {
                    cblType.append(html);
                }

                for (var i = 0; i < cblType.children().length; i++) {
                    var getVal = "extraService" + i;
                    if ($.getUrlParam(getVal)) {
                        var checkbox = $(".checkbox input[name='" + getVal + "']")
                        checkbox.prop("checked", true);
                        otherServiceValue.push(checkbox.val());
                    }
                }
            }
            else {
            }
        },
        error: function () {
        }
    });
}
otherService();


//获取试算数据
function searchBudget(options) {
    $("#appendBody").empty();
    $("#appendBody").append('<tr><td colspan="13" class="hint-td">正在查询...</td><tr>');

    var settings = $.extend({
        shipping_method: "",
        country_code: "",
        productgroup: "",
        weight: "",
        length: "",
        width: "",
        height: "",
        location: "",
        cargo_type: "",
        extra_service: []
    }, options);
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
            method: "feetrail",
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
                    var listNum = 0;
                    for (var i = 0; i < searchData.length; i++) {
                        var ServiceCnName = searchData[i].ServiceCnName;
                        var Effectiveness = searchData[i].Effectiveness ;
                        var FreightFee = searchData[i].FreightFee;
                        var FuelFee = searchData[i].FuelFee;
                        var RegisteredFee = searchData[i].RegisteredFee;
                        var OtherFee = searchData[i].OtherFee;
                        var OtherFeeDetails = searchData[i].OtherFeeDetails;
                        var ChargeWeight = searchData[i].ChargeWeight;
                        var TotalFee = searchData[i].TotalFee;
                        var Traceability = searchData[i].Traceability;
                        var VolumeCharge = searchData[i].VolumeCharge;
                        var Formula = searchData[i].Formula;
                        var Remark = searchData[i].Remark;
                        var incidentals = parseFloat(FuelFee) + parseFloat(OtherFee);

                        html += '<tr class="h-pointer"><td><i class="icon-active"></i></td>';
                        html += '<td>' + (++listNum) + '</td>';
                        html += '<td>' + ServiceCnName + '</td>';
                        html += '<td>' + Effectiveness + '</td>';
                        html += '<td>' + parseFloat(FreightFee).toFixed(2) + '</td>';
                        html += '<td>' + ((parseFloat(FuelFee).toFixed(2) == 0) ? "-" : FuelFee) + '</td>';
                        html += '<td>' + ((parseFloat(RegisteredFee).toFixed(2) == 0) ? "-" : RegisteredFee) + '</td>';

                        if (parseFloat(OtherFee) == 0) {
                            html += '<td>' + '-' + '</td>';
                        } else {
                            var sonHTML = '<i>';
                            for (var y = 0; y < OtherFeeDetails.length; y++) {
                                sonHTML += '<em>' + OtherFeeDetails[y].FeeCnName + '：' + parseFloat(OtherFeeDetails[y].FeeAmount).toFixed(2) + '</em>';
                            }
                            sonHTML += '</i>'
                            html += '<td><span class="show-i">' + parseFloat(OtherFee).toFixed(2) + sonHTML + '</span></td>';
                        }

                        html += '<td>' + parseFloat(ChargeWeight).toFixed(2) + 'KG</td>';
                        html += '<td><span class="f-green f-blod">' + parseFloat(TotalFee).toFixed(2) + '</span> RMB</td>';
                        if(Traceability == "Y"){
                            html += '<td><i class="icon-gou"></i></td>';
                        } else{
                            html += '<td></td>';
                        }
                        html += '<td>' + VolumeCharge + '</td>';
                        html += '<td><a class="active-btn" target="_blank" href="' + onlineOrderUrl + '">立即下单</a></td></tr>';
                        html += '<tr class="display-none"><td></td><td colspan="12"><p class="info-p">';
                        html += '<span class="l-txt">计算公式：</span>';
                        if (incidentals > 0) {
                            html += '<i class="f-blue">运费：</i>' + parseFloat(Formula).toFixed(2) + '<span class="f-red"> + </span><i class="f-blue">杂费：</i>' + parseFloat(incidentals).toFixed(2) + '</p>';
                        } else {
                            html += '<i class="f-blue">运费：</i>' + parseFloat(Formula).toFixed(2) + '</p>';
                        }
                        html += '<p class="info-p"><span class="l-txt">备注：</span><span class="remark-txt">' + Remark + '</span></p></td></tr>';
                    }
                    
                } else {
                    html = '<tr><td colspan="13" class="hint-td">暂无数据</td><tr>';
                }
                $("#appendBody").append(html);
                $("#btnSubmit").val("试 算").attr("disabled", false);
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
    
    if ($.getUrlParam('txtWeight') == "") {
        return false;
    }

    var paramCountry = $.getUrlParam('txtCountry');
    var paramWeight = $.getUrlParam('txtWeight');
    var paramLength = $.getUrlParam('txtLength');
    var paramWidth = $.getUrlParam('txtWidth');
    var paramHeight = $.getUrlParam('txtHeight');
    var paramLocation = $.getUrlParam('txtLocation');
    var paramDdlProductGroup = $.getUrlParam('ddlProductGroup');
    var paramCargoType = $.getUrlParam('txtCargoType');

    if(paramDdlProductGroup == null){
        paramDdlProductGroup = "";
    }
    if (paramCargoType == null) {
        paramCargoType = "";
    }

    txtCountry.val(paramCountry);
    txtWeight.val(paramWeight);
    txtLength.val(paramLength);
    txtWidth.val(paramWidth);
    txtHeight.val(paramHeight);

    var options = {
        country_code: paramCountry,
        weight: paramWeight,
        length: paramLength,
        width: paramWidth,
        height: paramHeight,
        location: paramLocation,
        extra_service: otherServiceValue,
        productgroup: paramDdlProductGroup,
        cargo_type: paramCargoType
    }

    searchBudget(options);
}
loadValue();


//展开详情
function showmore(o) {
    
}
$("#appendBody").on('click', '.h-pointer', function () {
    var nextDom = $(this).next();
    if (nextDom.css("display") == "none") {
        $(this).addClass("active");
        nextDom.fadeIn();
    }
    else {
        $(this).removeClass("active");
        nextDom.fadeOut();
    }
});
//禁止事件冒泡
$("#appendBody").on('click', '.active-btn', function (e) {
    e.stopPropagation();
});

//试算查询
function searchBudgetMeth() {
    if ($("#txtCountry").val() == "") {
        alert("请选择目的地国家！");
        return false;
    }
    if ($("#txtWeight").val() == "") {
        alert("请输入包裹重量！");
        return false;
    }

    $("#btnSubmit").val("查询中...").attr("disabled", true);

    return true;
}
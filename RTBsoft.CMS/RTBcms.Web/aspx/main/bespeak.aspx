<%@ Page Language="C#" AutoEventWireup="true" Inherits="RTBcms.Web.UI.Page.article_list" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="RTBcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by RTBcms Template Engine at 2019/11/2 23:58:07.
		本页面代码由RTBcms模板引擎生成于 2019/11/2 23:58:07. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const string channel = "about";
	const int pagesize = 20;

	templateBuilder.Append("<!DOCTYPE html>\r\n<html>\r\n<head>\r\n    <meta charset=\"utf-8\" />\r\n    <title>预约演示 - 深圳市友程电子科技有限公司</title>\r\n    <meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.seokeyword));
	templateBuilder.Append("\" />\r\n    <meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.seodescription));
	templateBuilder.Append("\" />\r\n    <link rel=\"icon\" type=\"image/png\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo-16-16.png\" sizes=\"16x16\">\r\n    <link rel=\"icon\" type=\"image/png\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo-32-32.png\" sizes=\"32x32\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css?v=1.2\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link type=\"text/css\" rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" />\r\n    <link type=\"text/css\" rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/ui-dialog.css\" />\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n<body  id=\"bespeak\">\r\n    ");

	templateBuilder.Append("<div class=\"header\">\r\n    <div class=\"content clearfix\">\r\n        <span class=\"logo\"><a href='");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("'><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.weblogo));
	templateBuilder.Append("\" alt=\"友程科技\" /></a></span>\r\n        <div class=\"fl nav\">\r\n            <ul class=\"clearfix\">\r\n                <li><a class=\"p-index nav-list\" href='");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("'>智能开关</a></li>\r\n                <li>\r\n                    <a class=\"p-productService nav-list\" href='");
	templateBuilder.Append(linkurl("product_service1"));

	templateBuilder.Append("'>产品中心</a>\r\n                </li>\r\n                <li><a class=\"p-news nav-list\" href='");
	templateBuilder.Append(linkurl("news_list",87));

	templateBuilder.Append("'>新闻资讯</a></li>\r\n                <li><a class=\"p-about nav-list\" href='");
	templateBuilder.Append(linkurl("about"));

	templateBuilder.Append("'>关于我们</a></li>\r\n                <li><a class=\"p-case nav-list\" href='");
	templateBuilder.Append(linkurl("case_list",84));

	templateBuilder.Append("'>渠道合作</a></li>\r\n            </ul>\r\n        </div>\r\n        <div class=\"right-top\">\r\n            <nofollow><a href=\"http://tool.ruantongbao.com\" class=\"pro-down\" target=\"_blank\"><i class=\"product-icon\"></i>APP下载</a></nofollow>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<script>\r\n    $(function () {\r\n        $(\".nav ul li\").hover(function () {\r\n            $(this).find(\".son-nav\").stop().slideDown();\r\n        }, function () {\r\n            $(this).find(\".son-nav\").stop().slideUp();\r\n        });\r\n    })\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n\r\n    <div class=\"main\">\r\n        <div class=\"top-banner\">\r\n            <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/p1.png\">\r\n            <span class=\"top-txt\">\r\n                <i>预约演示</i>\r\n                <em>Appointment Presentation</em>\r\n            </span>\r\n        </div>\r\n        <div class=\"bg2\">\r\n            <div class=\"content pt100 pb100\">\r\n                <div class=\"top-title\">\r\n                    <h3>填写预约演示</h3>\r\n                </div>\r\n                <form class=\"from-cont\" id=\"feedback_form\" name=\"feedback_form\" url=\"http://service.ruantongbao.com/SystemService.ashx?method=SaveInterestedBuyers\">\r\n                    <input type=\"hidden\" id=\"system\" name=\"system\" value=\"TMS\" />\r\n                    <p class=\"f-row\">\r\n                        <label class=\"label-name must-control\">公司名称：</label>\r\n                        <input class=\"f-control\" id=\"company_name\" name=\"company_name\" type=\"text\" datatype=\"*1-50\" nullmsg=\"请输入公司名称！\" errormsg=\"\" sucmsg=\" \" />\r\n                    </p>\r\n                    <p class=\"f-row\">\r\n                        <label class=\"label-name must-control\">姓名：</label>\r\n                        <input id=\"name\" name=\"name\" class=\"f-control\" type=\"text\" datatype=\"*1-20\" nullmsg=\"请输入姓名！\" errormsg=\"\" sucmsg=\" \" />\r\n                    </p>\r\n                    <p class=\"f-row\">\r\n                        <label class=\"label-name must-control\">联系电话：</label>\r\n                        <input id=\"phone\" name=\"phone\" class=\"f-control\" type=\"text\" datatype=\"*1-25\" nullmsg=\"请输入联系电话！\" errormsg=\"请输入正确的联系电话\" sucmsg=\" \" />\r\n                    </p>\r\n                    <p class=\"f-row\">\r\n                        <label class=\"label-name must-control\">所在城市：</label>\r\n                        <input class=\"f-control\" id=\"city\" name=\"city\" datatype=\"*1-50\" errormsg=\" \" nullmsg=\"请输入所在城市！\" sucmsg=\" \" type=\"text\" />\r\n                    </p>\r\n                    <p class=\"f-row clearfix\">\r\n                        <label style=\"top:-4px;\" class=\"label-name must-control\">意向产品：</label>\r\n                        <label class=\"checkbox\"><input name=\"model\" value=\"国际物流\" type=\"checkbox\">国际物流</label>\r\n                        <label class=\"checkbox\"><input name=\"model\" value=\"海外仓储\" type=\"checkbox\">海外仓储</label>\r\n                        <label class=\"checkbox\"><input name=\"model\" value=\"转运进出口\" type=\"checkbox\" datatype=\"*\" nullmsg=\"至少选择一个意向产品！\" sucmsg=\" \">转运进出口</label>\r\n                    </p>\r\n                    <p class=\"f-row\">\r\n                        <label class=\"label-name must-control\">系统预算：</label>\r\n                        <select class=\"select-contrl\" name=\"reserved_field1\" id=\"systemBudget\" datatype=\"*\" nullmsg=\"请选择系统预算金额！\" sucmsg=\" \">\r\n                            <option value=\"\">请选择</option>\r\n                            <option value=\"3-5万\">3-5万</option>\r\n                            <option value=\"5-10万\">5-10万</option>\r\n                            <option value=\"10+万\">10+万</option>\r\n                        </select>\r\n                        <span class=\"hint-info\">\r\n                            <i>适合国际快递、邮政小包、专线为主的普通代理商</i>\r\n                            <i>适合运营自主专线的跨境物流商</i>\r\n                            <i>适合定制开发需求较多的大型跨境物流商</i>\r\n                        </span>\r\n                    </p>\r\n                    <p class=\"f-row\">\r\n                        <label class=\"label-name must-control\">验证码：</label>\r\n                        <input class=\"f-control\" id=\"txtCode\" name=\"txtCode\" type=\"text\" placeholder=\"验证码\" style=\"width:100px;\" datatype=\"*\" nullmsg=\"请输入验证码\" sucmsg=\" \" />\r\n                        <a id=\"verifyCode\" href=\"javascript:;\" onclick=\"ToggleCode(this, '/tools/verify_code.ashx');return false;\"><img src=\"/tools/verify_code.ashx\" width=\"80\" height=\"30\" style=\"vertical-align:middle;\" /> 看不清楚？</a>\r\n                    </p>\r\n\r\n                    <p class=\"f-row f-bottom\">\r\n                        <input id=\"btnSubmit\" name=\"btnSubmit\" class=\"submit-btn\" type=\"submit\" value=\"提交预约\" />\r\n                    </p>\r\n                </form>\r\n                <input id=\"turl\" type=\"hidden\" value='");
	templateBuilder.Append(linkurl("bespeak"));

	templateBuilder.Append("' />\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    ");

	templateBuilder.Append("<div class=\"footer\">\r\n    <div class=\"content clearfix\">\r\n        <dl class=\"wrap-cont\">\r\n            <dt>快速链接</dt>\r\n            <dd>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("product_service1"));

	templateBuilder.Append("'>货代管理系统</a></p>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("product_service1"));

	templateBuilder.Append("?pro=0#appCase'>国际小包系统</a></p>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("product_service1"));

	templateBuilder.Append("?pro=1#appCase'>国际快递系统</a></p>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("product_service1"));

	templateBuilder.Append("?pro=2#appCase'>国际专线系统</a></p>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("case_list",84));

	templateBuilder.Append("'>客户合作</a></p>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("bespeak"));

	templateBuilder.Append("'>预约演示</a></p>\r\n            </dd>\r\n        </dl>\r\n        <!--<dl class=\"wrap-cont\">\r\n            <dt>友情链接</dt>\r\n            <dd>\r\n                ");
	DataTable txtList = new RTBcms.Web.Plugin.Link.link().get_link_list(5, "");

	foreach(DataRow dr in txtList.Rows)
	{

	templateBuilder.Append("\r\n                <p><a class=\"link\" target=\"_blank\" href=\"" + Utils.ObjectToStr(dr["site_url"]) + "\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a></p>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n            </dd>\r\n        </dl>-->\r\n        <dl class=\"wrap-cont\">\r\n            <dt>联系方式</dt>\r\n            <dd>\r\n                <p>联&nbsp;系QQ：  543981157、41340112</p>\r\n                <!--<p>手机号码： 17722631710</p>-->\r\n                <p>总部热线： ");
	templateBuilder.Append(Utils.ObjectToStr(config.webtel));
	templateBuilder.Append("</p>\r\n                <p>义乌分部： 13065987667</p>\r\n                <p>联系邮箱： ");
	templateBuilder.Append(Utils.ObjectToStr(config.webmail));
	templateBuilder.Append("</p>\r\n                <p>联系地址：");
	templateBuilder.Append(Utils.ObjectToStr(config.webaddress));
	templateBuilder.Append("</p>\r\n            </dd>\r\n        </dl>\r\n        <div class=\"foot-gzh\">\r\n            <h3>微信公众号</h3>\r\n            <p><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/gzh.jpg\"></p>\r\n        </div>\r\n    </div>\r\n    <div class=\"content bottom-t\">\r\n        ");
	templateBuilder.Append(Utils.ObjectToStr(config.seocopyright));
	templateBuilder.Append("&nbsp;&nbsp;<a target=\"_blank\" href=\"http://www.miitbeian.gov.cn\">");
	templateBuilder.Append(Utils.ObjectToStr(config.webcrod));
	templateBuilder.Append("</a>\r\n    </div>\r\n\r\n    <!--右侧客服和返回顶部-->\r\n    <div class=\"right-active\">\r\n        <ul>\r\n            <li class=\"return-top display-none\"><div class=\"icon-wrap\"><i class=\"right-icon icon-up\"></i></div></li>\r\n        </ul>\r\n    </div>\r\n</div>\r\n\r\n<script type=\"text/javascript\">\r\n    //顶部主菜单滚动\r\n    window.onload = function () {\r\n        $(window).scroll(function () {\r\n\r\n            var st = $(this).scrollTop();\r\n            //当滚动条的位置处于距顶部500像素以下时，显示返回顶部按钮\r\n            if (st > 500) {\r\n                $(\".right-active\").show();\r\n                $(\".return-top\").slideDown();\r\n            }\r\n            else {\r\n                $(\".return-top\").slideUp();\r\n            }\r\n        });\r\n\r\n        //当点击跳转链接后，回到页面顶部位置\r\n        $(\".return-top\").click(function () {\r\n            $('body,html').animate({ scrollTop: 0 }, 100);\r\n        });\r\n    }\r\n\r\n</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append(Utils.ObjectToStr(config.webcountcode));


	templateBuilder.Append("\r\n\r\n    \r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.form.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/Validform_v5.3.2_min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/dialog-plus-min.js\"></");
	templateBuilder.Append("script>\r\n    <script>\r\n        //切换验证码\r\n        function ToggleCode(obj, codeurl) {\r\n            $(obj).children(\"img\").eq(0).attr(\"src\", codeurl + \"?time=\" + Math.random());\r\n            return false;\r\n        }\r\n\r\n        /*表单AJAX提交封装(包含验证)\r\n        ------------------------------------------------*/\r\n        function AjaxInitForm(formObj, btnObj, isDialog, urlObj, callback) {\r\n            var argNum = arguments.length; //参数个数\r\n            $(formObj).Validform({\r\n                tiptype: 3,\r\n                callback: function (form) {\r\n                    $(form).ajaxSubmit({\r\n                        beforeSubmit: formRequest,\r\n                        success: formResponse,\r\n                        error: formError,\r\n                        url: $(formObj).attr(\"url\"),\r\n                        type: \"post\",\r\n                        dataType: \"jsonp\",\r\n                        timeout: 60000,\r\n                        jsonp: \"callbackparam\"\r\n                    });\r\n                    return false;\r\n                }\r\n            });\r\n\r\n            //表单提交前\r\n            function formRequest(formData, jqForm, options) {\r\n                $(btnObj).prop(\"disabled\", true);\r\n                $(btnObj).val(\"提交中...\");\r\n            }\r\n\r\n            //表单提交后\r\n            function formResponse(data, textStatus) {\r\n                if (data.status == 1) {\r\n                    $(btnObj).val(\"提交成功\");\r\n                    //是否提示，默认不提示\r\n                    if (isDialog == 1) {\r\n                        var d = dialog({ content: \"预约演示提交成功，我们尽快与您联系！\" }).show();\r\n                        setTimeout(function () {\r\n                            d.close().remove();\r\n                            if (argNum == 5) {\r\n                                callback();\r\n                            } else if (data.url) {\r\n                                location.href = data.url;\r\n                            } else if ($(urlObj).length > 0 && $(urlObj).val() != \"\") {\r\n                                location.href = $(urlObj).val();\r\n                            } else {\r\n                                location.reload();\r\n                            }\r\n                        }, 2000);\r\n                    } else {\r\n                        if (argNum == 5) {\r\n                            callback();\r\n                        } else if (data.url) {\r\n                            location.href = data.url;\r\n                        } else if ($(urlObj)) {\r\n                            location.href = $(urlObj).val();\r\n                        } else {\r\n                            location.reload();\r\n                        }\r\n                    }\r\n                }\r\n                 \r\n            }\r\n           \r\n            //表单提交出错\r\n            function formError(XMLHttpRequest, textStatus, errorThrown) {\r\n                dialog({ title: '提示', content: '状态：' + textStatus + '；出错提示：' + errorThrown, okValue: '确定', ok: function () { } }).showModal();\r\n                $(btnObj).prop(\"disabled\", false);\r\n                $(btnObj).val(\"再次提交\");\r\n            }\r\n            return false;\r\n            \r\n        }\r\n\r\n        $(document).ready(function (e) {\r\n            //初始化发表评论表单\r\n            AjaxInitForm('#feedback_form', '#btnSubmit', 1, '#turl');\r\n            \r\n            //选择系统预算显示提示\r\n            $(\"#systemBudget\").change(function () {\r\n                var val = $(this).val();\r\n                var hintInfo = $('.hint-info i');\r\n                hintInfo.hide();\r\n                if (val == \"3-5万\") {\r\n                    hintInfo.eq(0).show();\r\n                }\r\n                if (val == \"5-10万\") {\r\n                    hintInfo.eq(1).show();\r\n                }\r\n                if (val == \"10+万\") {\r\n                    hintInfo.eq(2).show();\r\n                }\r\n            })\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>

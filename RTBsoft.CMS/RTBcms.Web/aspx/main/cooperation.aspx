<%@ Page Language="C#" AutoEventWireup="true" Inherits="RTBcms.Web.UI.Page.article_list" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="RTBcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by RTBcms Template Engine at 2019-11-14 9:43:51.
		本页面代码由RTBcms模板引擎生成于 2019-11-14 9:43:51. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const string channel = "about";
	const int pagesize = 20;

	templateBuilder.Append("<!DOCTYPE html>\r\n<html>\r\n<head>\r\n    <meta charset=\"utf-8\" />\r\n    <title>渠道合作 - 深圳市友程电子科技有限公司</title>\r\n    <meta name=\"keywords\" content=\"");
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
	templateBuilder.Append("script>\r\n</head>\r\n<body  id=\"cooperation\">\r\n    ");

	templateBuilder.Append("<div class=\"header\">\r\n    <div class=\"content clearfix\">\r\n        <span class=\"logo\"><a href='");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("'><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.weblogo));
	templateBuilder.Append("\" alt=\"友程科技\" /></a></span>\r\n        <div class=\"fl nav\">\r\n            <ul class=\"clearfix\">\r\n                <li><a class=\"p-index nav-list\" href='");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("'>智能开关插座</a></li>\r\n                <li><a class=\"p-productService nav-list\" href='");
	templateBuilder.Append(linkurl("product_service_list",90));

	templateBuilder.Append("'>产品中心</a></li>\r\n                <li><a class=\"p-news nav-list\" href='");
	templateBuilder.Append(linkurl("news_list",87));

	templateBuilder.Append("'>新闻资讯</a></li>\r\n                <li><a class=\"p-about nav-list\" href='");
	templateBuilder.Append(linkurl("about"));

	templateBuilder.Append("'>关于我们</a></li>\r\n                <li><a class=\"p-cooperation nav-list\" href='");
	templateBuilder.Append(linkurl("cooperation"));

	templateBuilder.Append("'>渠道合作</a></li>\r\n            </ul>\r\n        </div>\r\n        <div class=\"right-top\">\r\n            <nofollow><a href=\"about.html#contact\" class=\"pro-down\" target=\"_blank\"><i class=\"phone-icon\"></i>联系我们</a></nofollow>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<script>\r\n    $(function () {\r\n        $(\".nav ul li\").hover(function () {\r\n            $(this).find(\".son-nav\").stop().slideDown();\r\n        }, function () {\r\n            $(this).find(\".son-nav\").stop().slideUp();\r\n        });\r\n    })\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n\r\n    <div class=\"main\">\r\n        <div class=\"top-banner\">\r\n            <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/p1.png\">\r\n            <span class=\"top-txt\">\r\n                <i>渠道合作</i>\r\n                <em>Cooperation</em>\r\n            </span>\r\n        </div>\r\n        <div class=\"content pt100 pb100\">\r\n            <dl class=\"company-info clearfix custom-info\">\r\n                <dt>\r\n                    <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/coo.jpg\" />\r\n                </dt>\r\n                <dd>\r\n                    <p>本司专注于智能开关插座研发、生产、销售，主营产品有：智能触摸开关、智能按键开关、无线控制开关、触摸计量插座、智能多孔插座等；覆盖国标、欧规、中欧规、美规等多个产品型号，满足全球大多数市场需要，欢迎各跨境电商、国内电商、线下电器开关门店渠道洽谈。</p>\r\n                    <p class=\"contact-txt\">渠道联系电话：<span>13332969249（微信同号）</span></p>\r\n                 </dd>\r\n            </dl>\r\n            \r\n        </div>\r\n    </div>\r\n\r\n    ");

	templateBuilder.Append("<div class=\"footer\">\r\n    <div class=\"content clearfix\">\r\n        <dl class=\"wrap-cont\">\r\n            <dt>快速链接</dt>\r\n            <dd>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("product_service_list",90));

	templateBuilder.Append("'>产品中心</a></p>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("news_list",87));

	templateBuilder.Append("'>新闻资讯</a></p>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("about"));

	templateBuilder.Append("'>关于我们</a></p>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("cooperation"));

	templateBuilder.Append("'>渠道合作</a></p>\r\n            </dd>\r\n        </dl>\r\n        <dl class=\"wrap-cont\">\r\n            <dt>联系方式</dt>\r\n            <dd>\r\n                <p>联系热线： ");
	templateBuilder.Append(Utils.ObjectToStr(config.webtel));
	templateBuilder.Append("</p>\r\n                <p>联系邮箱： ");
	templateBuilder.Append(Utils.ObjectToStr(config.webmail));
	templateBuilder.Append("</p>\r\n                <p>联系地址：");
	templateBuilder.Append(Utils.ObjectToStr(config.webaddress));
	templateBuilder.Append("</p>\r\n            </dd>\r\n        </dl>\r\n    </div>\r\n    <div class=\"content bottom-t\">\r\n        ");
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

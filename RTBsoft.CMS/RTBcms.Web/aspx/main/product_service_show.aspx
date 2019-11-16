<%@ Page Language="C#" AutoEventWireup="true" Inherits="RTBcms.Web.UI.Page.article_show" ValidateRequest="false" %>
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
	const string channel = "product_service";

	templateBuilder.Append("<!DOCTYPE html>\r\n<html>\r\n<head>\r\n    <meta charset=\"utf-8\" />\r\n    ");
	string category_title = get_category_title(model.category_id,"新闻资讯");

	templateBuilder.Append("\r\n    <title>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(config.seotitle));
	templateBuilder.Append("</title>\r\n    <meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_keywords));
	templateBuilder.Append("\" />\r\n    <meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_description));
	templateBuilder.Append("\" />\r\n    <link rel=\"icon\" type=\"image/png\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo-16-16.png\" sizes=\"16x16\">\r\n    <link rel=\"icon\" type=\"image/png\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo-32-32.png\" sizes=\"32x32\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css?v=1.1\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-3.3.1.min.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n<body style=\"background-color:#fafafa;\">\r\n    ");

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


	templateBuilder.Append("\r\n\r\n    <div class=\"content\">\r\n        <div class=\"pro-wrap\">\r\n            <div class=\"prc-cont clearfix\">\r\n                <div class=\"prc-img\"><div><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.img_url));
	templateBuilder.Append("\" /></div></div>\r\n                <ul class=\"prc-info\">\r\n                    <li class=\"prc-title\">");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</li>\r\n                    <li class=\"prc-price\">&yen;" + Utils.ObjectToStr(model.fields["site_price"]) + "</li>\r\n                    <li class=\"son-row\">\r\n                        <h4 class=\"son-txt\">" + Utils.ObjectToStr(model.fields["site_pro_type"]) + "</h4>\r\n                        <h4 class=\"son-txt\">产品参数</h4>\r\n                        <div class=\"o-txt custom-txt\" id=\"site-spec\"><input type=\"hidden\" value=\"" + Utils.ObjectToStr(model.fields["site_spec"]) + "\" /></div>\r\n                    </li>\r\n                    <li class=\"son-row zysx-row\">\r\n                        <h4 class=\"son-txt\">安装注意事项</h4>\r\n                        <div class=\"o-txt custom-txt\" id=\"notice\"><input type=\"hidden\" value=\"" + Utils.ObjectToStr(model.fields["site_notice"]) + "\" /></div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class=\"pro-detail\">\r\n                <h3 class=\"p-dtitle\">产品详情</h3>\r\n                <div class=\"p-dcont\">\r\n                    ");
	templateBuilder.Append(Utils.ObjectToStr(model.content));
	templateBuilder.Append("\r\n                </div>\r\n            </div>\r\n            <div class=\"next-box clearfix\">\r\n                <p class=\"prev-page fl\"><span>上个产品：</span>");
	templateBuilder.Append(get_prevandnext_article("product_service_show", -1, "没有了", 0).ToString());

	templateBuilder.Append("</p>\r\n                <p class=\"next-page fr\"><span>下个产品：</span>");
	templateBuilder.Append(get_prevandnext_article("product_service_show", 1, "没有了", 0).ToString());

	templateBuilder.Append("</p>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    ");

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


	templateBuilder.Append("\r\n    <script src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/pro.js?v=1.0\"></");
	templateBuilder.Append("script>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>

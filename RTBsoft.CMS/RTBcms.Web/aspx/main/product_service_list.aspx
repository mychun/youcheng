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
	const string channel = "product_service";
	const int pagesize = 20;

	templateBuilder.Append("<!DOCTYPE html>\r\n<html>\r\n<head>\r\n    <meta charset=\"utf-8\" />\r\n    <title>产品中心 - 深圳市友程电子科技有限公司</title>\r\n    <meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.seokeyword));
	templateBuilder.Append("\" />\r\n    <meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.seodescription));
	templateBuilder.Append("\" />\r\n    <link rel=\"icon\" type=\"image/png\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo-16-16.png\" sizes=\"16x16\">\r\n    <link rel=\"icon\" type=\"image/png\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo-32-32.png\" sizes=\"32x32\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css?v=1.2\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-3.3.1.min.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n<body  id=\"productService\">\r\n    ");

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


	templateBuilder.Append("\r\n    <div class=\"main\">\r\n        <div class=\"top-banner\">\r\n            <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/p1.png\">\r\n            <span class=\"top-txt\">\r\n                <i>产品中心</i>\r\n                <em>Product center</em>\r\n            </span>\r\n        </div>\r\n\r\n        <div class=\"content list-wrap clearfix\">\r\n            <div class=\"list-fl\">\r\n                <h1>\r\n                    产品中心\r\n                </h1>\r\n                <div class=\"fl-nav\">\r\n                    <input id=\"categoryId\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(category_id));
	templateBuilder.Append("\" hidden />\r\n                    ");
	DataTable categoryList = get_category_child_list(channel,0);

	foreach(DataRow cdr in categoryList.Rows)
	{

	templateBuilder.Append("\r\n                    <ul class=\"p-nav\">\r\n                        <li>\r\n                            <span class=\"nav-l\">" + Utils.ObjectToStr(cdr["title"]) + "</span>\r\n                            ");
	DataTable dt = get_category_child_list(channel, Utils.StrToInt(Utils.ObjectToStr(cdr["id"]), 0));

	foreach(DataRow dr1 in dt.Rows)
	{

	templateBuilder.Append("\r\n                            <ul class=\"s-nav\">\r\n                                <li><a class=\"nav-l title-row\" href='");
	templateBuilder.Append(linkurl("product_service_list",Utils.ObjectToStr(dr1["id"])));

	templateBuilder.Append("' data-key=\"" + Utils.ObjectToStr(dr1["id"]) + "\">" + Utils.ObjectToStr(dr1["title"]) + "</a></li>\r\n                            </ul>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                        </li>\r\n                    </ul>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </div>\r\n            </div>\r\n            <div class=\"list-fr\">\r\n                <div class=\"list-row\">\r\n                    <div class=\"case clearfix\">\r\n                        ");
	DataTable newsList = get_article_list(channel, category_id, pagesize, page, "status=0", out totalcount, out pagelist, "news_list", category_id, "__id__");

	templateBuilder.Append("<!--取得一个分页DataTable-->\r\n                        ");
	foreach(DataRow dr1 in newsList.Rows)
	{

	templateBuilder.Append("\r\n                        <div class=\"case-w\">\r\n                            <dl>\r\n                                <dt>\r\n                                    <a title=\"" + Utils.ObjectToStr(dr1["title"]) + "\" href='");
	templateBuilder.Append(linkurl("product_service_show",Utils.ObjectToStr(dr1["id"])));

	templateBuilder.Append("'><img src=\"" + Utils.ObjectToStr(dr1["img_url"]) + "\"></a>\r\n                                </dt>\r\n                                <dd>\r\n                                    <h3>" + Utils.ObjectToStr(dr1["title"]) + "</h3>\r\n                                    <p>" + Utils.ObjectToStr(dr1["zhaiyao"]) + "</p>\r\n                                </dd>\r\n                            </dl>\r\n                        </div>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </div>\r\n                </div>\r\n\r\n                <!--页码列表-->\r\n                <div class=\"page-box\">\r\n                    <div class=\"digg\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div>\r\n                </div>\r\n                <!--/页码列表-->\r\n            </div>\r\n        </div>\r\n    </div>\r\n    ");

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


	templateBuilder.Append("\r\n\r\n    <script>\r\n        $(function () {\r\n\r\n            //加载展开当前菜单\r\n            var showMenuKey = $('#categoryId').val();\r\n            $(\".title-row\").each(function () {\r\n                if ($(this).data(\"key\") == showMenuKey) {\r\n                    $(this).parents(\"li\").each(function () {\r\n                        $(this).find('ul').show();\r\n                    });\r\n                    $(this).addClass(\"sel\");\r\n                }\r\n            });\r\n\r\n            $(\".p-nav > li > .nav-l\").click(function () {\r\n                $(this).siblings('ul').slideToggle();\r\n            });\r\n\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>

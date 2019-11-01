<%@ Page Language="C#" AutoEventWireup="true" Inherits="RTBcms.Web.UI.Page.article_list" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="RTBcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by RTBcms Template Engine at 2019/8/6 17:55:30.
		本页面代码由RTBcms模板引擎生成于 2019/8/6 17:55:30. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const string channel = "case";
	const int pagesize = 20;

	templateBuilder.Append("<!DOCTYPE html>\r\n<html>\r\n<head>\r\n    <meta charset=\"utf-8\" />\r\n    <title>客户案例 - 深圳市软通宝科技有限公司</title>\r\n    <meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.seokeyword));
	templateBuilder.Append("\" />\r\n    <meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.seodescription));
	templateBuilder.Append("\" />\r\n    <link rel=\"icon\" type=\"image/png\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo-16-16.png\" sizes=\"16x16\">\r\n    <link rel=\"icon\" type=\"image/png\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo-32-32.png\" sizes=\"32x32\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css?v=1.1\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-3.3.1.min.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n<body id=\"case\">\r\n    ");

	templateBuilder.Append("<div class=\"header\">\r\n    <div class=\"content clearfix\">\r\n        <span class=\"logo\"><a href='");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("'><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.weblogo));
	templateBuilder.Append("\" alt=\"速递管家\" /></a></span>\r\n        <div class=\"fl nav\">\r\n            <ul class=\"clearfix\">\r\n                <li><a class=\"p-index nav-list\" href='");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("'>速递管家</a></li>\r\n                <li>\r\n                    <a class=\"p-productService nav-list\" href='");
	templateBuilder.Append(linkurl("product_service1"));

	templateBuilder.Append("'>解决方案</a>\r\n                    <div class=\"son-nav\">\r\n                        <span class=\"triangle\"></span>\r\n                        <div>\r\n                            <a href='");
	templateBuilder.Append(linkurl("product_service1"));

	templateBuilder.Append("'>货代管理系统</a>\r\n                            <a href='");
	templateBuilder.Append(linkurl("product_service2"));

	templateBuilder.Append("'>仓储管理系统</a>\r\n                            <a href='");
	templateBuilder.Append(linkurl("product_service3"));

	templateBuilder.Append("'>转运管理系统</a>\r\n                        </div>\r\n                    </div>\r\n                </li>\r\n                <li><a class=\"p-news nav-list\" href='");
	templateBuilder.Append(linkurl("news_list",87));

	templateBuilder.Append("'>资讯中心</a></li>\r\n                <li><a class=\"p-about nav-list\" href='");
	templateBuilder.Append(linkurl("about"));

	templateBuilder.Append("'>关于我们</a></li>\r\n                <li><a class=\"p-case nav-list\" href='");
	templateBuilder.Append(linkurl("case_list",84));

	templateBuilder.Append("'>客户合作</a></li>\r\n                <li><a class=\"p-bespeak nav-list\" href='");
	templateBuilder.Append(linkurl("bespeak"));

	templateBuilder.Append("'>预约演示</a></li>\r\n            </ul>\r\n        </div>\r\n        <div class=\"right-top\">\r\n            <nofollow><a href=\"http://tool.ruantongbao.com\" class=\"pro-down\" target=\"_blank\"><i class=\"product-icon\"></i>产品下载</a></nofollow>\r\n            <nofollow><a href=\"about.html#contact\" class=\"contact-we\" target=\"_blank\"><i class=\"phone-icon\"></i>联系我们</a></nofollow>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<script>\r\n    $(function () {\r\n        $(\".nav ul li\").hover(function () {\r\n            $(this).find(\".son-nav\").stop().slideDown();\r\n        }, function () {\r\n            $(this).find(\".son-nav\").stop().slideUp();\r\n        });\r\n    })\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n\r\n    <div class=\"main\">\r\n        <div class=\"top-banner\">\r\n            <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/p1.png\">\r\n            <span class=\"top-txt\">\r\n                <i>客户合作</i>\r\n                <em>Customer Cooperation</em>\r\n            </span>\r\n        </div>\r\n        <div class=\"content pt100 pb100\">\r\n            <h3 class=\"title-info\"><span>客户案例</span></h3>\r\n            <div class=\"case clearfix\">\r\n                ");
	DataTable newsList = get_article_list(channel, category_id, pagesize, page, "status=0", out totalcount, out pagelist, "case_list", category_id, "__id__");

	foreach(DataRow dr1 in newsList.Rows)
	{

	templateBuilder.Append("\r\n                <div class=\"case-w\">\r\n                    <dl>\r\n                        <dt>\r\n                            <a title=\"" + Utils.ObjectToStr(dr1["title"]) + "\" href='");
	templateBuilder.Append(linkurl("case_show",Utils.ObjectToStr(dr1["id"])));

	templateBuilder.Append("'><img src=\"" + Utils.ObjectToStr(dr1["img_url"]) + "\"></a>\r\n                        </dt>\r\n                        <dd>\r\n                            <h3>" + Utils.ObjectToStr(dr1["title"]) + "</h3>\r\n                            <p>" + Utils.ObjectToStr(dr1["zhaiyao"]) + "</p>\r\n                        </dd>\r\n                    </dl>\r\n                </div>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n            </div>\r\n            <h3 class=\"title-info\"><span>合作伙伴</span></h3>\r\n            <div class=\"partner custom-partner\">\r\n                <div class=\"clearfix\">\r\n                    <a href=\"javascript:void(0);\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/h1.png\"></a>\r\n                    <a href=\"javascript:void(0);\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/h2.png\"></a>\r\n                    <a href=\"javascript:void(0);\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/h3.png\"></a>\r\n                    <a href=\"javascript:void(0);\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/h4.png\"></a>\r\n                    <a href=\"javascript:void(0);\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/h5.png\"></a>\r\n                    <a href=\"javascript:void(0);\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/h6.png\"></a>\r\n                    <a href=\"javascript:void(0);\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/h7.png\"></a>\r\n                    <a href=\"javascript:void(0);\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/h8.png\"></a>\r\n                    <a href=\"javascript:void(0);\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/h9.png\"></a>\r\n                    <a href=\"javascript:void(0);\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/h10.png\"></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    ");

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


	templateBuilder.Append("\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>

<%@ Page Language="C#" AutoEventWireup="true" Inherits="RTBcms.Web.UI.Page.article_show" ValidateRequest="false" %>
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
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    ");

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


	templateBuilder.Append("\r\n\r\n    <div class=\"main\" style=\"border-top:1px solid #e1e1e1;\">\r\n        <div class=\"content clearfix news-detail-cont\" style=\"min-height:750px;\">\r\n            <div class=\"details\">\r\n                <h3 class=\"news-title\">");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</h3>\r\n                <p class=\"news-zhaiyao\" style=\"display:none;\">");
	templateBuilder.Append(Utils.ObjectToStr(model.zhaiyao));
	templateBuilder.Append("</p>\r\n                <div class=\"other-info\">\r\n                    <span><i class=\"icon-time\"></i>");
	templateBuilder.Append(Utils.ObjectToStr(model.add_time));
	templateBuilder.Append("</span>\r\n                    <span>\r\n                        <i class=\"icon-eye\"></i>\r\n                        <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_article_click&channel_id=");
	templateBuilder.Append(Utils.ObjectToStr(model.channel_id));
	templateBuilder.Append("&id=");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("&click=1\"></");
	templateBuilder.Append("script>次\r\n                    </span>\r\n                </div>\r\n                <div class=\"news-cont\">");
	templateBuilder.Append(Utils.ObjectToStr(model.content));
	templateBuilder.Append("</div>\r\n\r\n                <div class=\"bdsharebuttonbox\"><span style=\"float:left; margin:6px 0px; line-height:16px;\">分享到：</span><a href=\"#\" class=\"bds_more\" data-cmd=\"more\"></a><a href=\"#\" class=\"bds_weixin\" data-cmd=\"weixin\" title=\"分享到微信\"></a><a href=\"#\" class=\"bds_tsina\" data-cmd=\"tsina\" title=\"分享到新浪微博\"></a><a href=\"#\" class=\"bds_qzone\" data-cmd=\"qzone\" title=\"分享到QQ空间\"></a><a href=\"#\" class=\"bds_sqq\" data-cmd=\"sqq\" title=\"分享到QQ好友\"></a><a href=\"#\" class=\"bds_douban\" data-cmd=\"douban\" title=\"分享到豆瓣网\"></a><a href=\"#\" class=\"bds_youdao\" data-cmd=\"youdao\" title=\"分享到有道云笔记\"></a><a href=\"#\" class=\"bds_fbook\" data-cmd=\"fbook\" title=\"分享到Facebook\"></a><a href=\"#\" class=\"bds_tqq\" data-cmd=\"tqq\" title=\"分享到腾讯微博\"></a><a href=\"#\" class=\"bds_renren\" data-cmd=\"renren\" title=\"分享到人人网\"></a><a href=\"#\" class=\"bds_mshare\" data-cmd=\"mshare\" title=\"分享到一键分享\"></a></div>\r\n\r\n                <div class=\"next-box clearfix\">\r\n                    <p class=\"prev-page fl\"><span>上一篇：</span>");
	templateBuilder.Append(get_prevandnext_article("news_show", -1, "没有了", 0).ToString());

	templateBuilder.Append("</p>\r\n                    <p class=\"next-page fr\"><span>下一篇：</span>");
	templateBuilder.Append(get_prevandnext_article("news_show", 1, "没有了", 0).ToString());

	templateBuilder.Append("</p>\r\n                </div>\r\n            </div>\r\n            \r\n        </div>\r\n    </div>\r\n    <div class=\"right-wrap\">\r\n        <div class=\"right-cont-list\">\r\n            <h3>热点内容<a href='");
	templateBuilder.Append(linkurl("news_list",87));

	templateBuilder.Append("'>更多</a></h3>\r\n            <ul class=\"list-ul\">\r\n                ");
	DataTable newsList = get_article_list("news", 87, 7, "status=0");

	int newdr__loop__id=0;
	foreach(DataRow newdr in newsList.Rows)
	{
		newdr__loop__id++;


	templateBuilder.Append("\r\n                <li>\r\n                    <a title=\"" + Utils.ObjectToStr(newdr["title"]) + "\" href='");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newdr["id"])));

	templateBuilder.Append("'>" + Utils.ObjectToStr(newdr["title"]) + "</a>\r\n                </li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n            </ul>\r\n        </div>\r\n        <div class=\"right-cont-list\">\r\n            <h3>联系我们</h3>\r\n            <div class=\"cont-info\">\r\n                <p class=\"f-blue\">深圳市友程电子科技有限公司</p>\r\n                <p><span>总部热线：</span>");
	templateBuilder.Append(Utils.ObjectToStr(config.webtel));
	templateBuilder.Append("</p>\r\n                <p><span>义乌分部：</span>13065987667</p>\r\n                <p><span>联&nbsp;系QQ：</span>543981157、41340112</p>\r\n                <p><span>联系地址：</span>深圳市宝安区西乡后瑞地铁站西部硅谷B座C区509-510</p>\r\n                <p><span>微信公众号：</span><span class=\"wx-img\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/gzh.jpg\"></span></p>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    ");

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


	templateBuilder.Append("\r\n\r\n    <script>\r\n        $(function () {\r\n            //顶部主菜单滚动\r\n                $(window).scroll(function () {\r\n\r\n                    var st = $(this).scrollTop();\r\n                    var footScr = $(\".footer\").offset().top - $(\".right-wrap\").height();\r\n                    var tagScr = $(\".details\").offset().top + 40;\r\n                    //当滚动条的位置处于距顶部500像素以下时，显示返回顶部按钮\r\n                    if (st > tagScr) {\r\n                        if (!$(\".right-wrap\").hasClass(\"right-fixed-wrap\"))\r\n                        {\r\n                            $(\".right-wrap\").addClass(\"right-fixed-wrap\");\r\n                        }\r\n                        if (st >= footScr) {\r\n                            if (!$(\".right-wrap\").hasClass(\"right-fixed-bottom\") && $(\".right-wrap\").hasClass(\"right-fixed-wrap\")) {\r\n                                $(\".right-wrap\").addClass(\"right-fixed-bottom\");\r\n                            }\r\n                        } else{\r\n                            $(\".right-wrap\").removeClass(\"right-fixed-bottom\");\r\n                        }\r\n\r\n                    }\r\n                    else {\r\n                        $(\".right-wrap\").removeClass(\"right-fixed-wrap right-fixed-bottom\");\r\n                    }\r\n                });\r\n\r\n            //通用分享设置，更详细的设置可以查看http://share.baidu.com/code/advance#config-common\r\n            window._bd_share_config = {\r\n                common : {\r\n                    bdText: $('.news-title').text(),\r\n                    bdDesc: $('.news-zhaiyao').text(),\r\n                    bdComment: '发现一篇不错的文章，收获满满的！您也赶快来看看吧！',\r\n                    bdUrl: window.location.href,\r\n                    bdPic: 'http://rtb56.com/templates/ruantongbao1/images/big-logo.png',\r\n                    bdSize : 16 //按钮大小16/24/32\r\n                },\r\n                share:{ //普通页面分享按钮必须有这个属性，可放空，也可以设置属性覆盖上面common的属性值。下面会给出设置多组分享按钮如何使用这个share\r\n                //bdCustomStyle:\"自定义样式\"，可使用自定义样式来设置分享按钮所使用的图标\r\n                }\r\n            }\r\n            with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?cdnversion='+~(-new Date()/36e5)];\r\n        \r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>

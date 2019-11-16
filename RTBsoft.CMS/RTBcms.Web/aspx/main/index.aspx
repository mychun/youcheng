<%@ Page Language="C#" AutoEventWireup="true" Inherits="RTBcms.Web.UI.Page.index" ValidateRequest="false" %>
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

	templateBuilder.Append("<!DOCTYPE html>\r\n<html>\r\n\r\n<head>\r\n    <meta charset=\"utf-8\" />\r\n    <title>");
	templateBuilder.Append(Utils.ObjectToStr(config.seotitle));
	templateBuilder.Append("</title>\r\n    <meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.seokeyword));
	templateBuilder.Append("\" />\r\n    <meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.seodescription));
	templateBuilder.Append("\" />\r\n    <link rel=\"icon\" type=\"image/png\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo-16-16.png\" sizes=\"16x16\">\r\n    <link rel=\"icon\" type=\"image/png\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo-32-32.png\" sizes=\"32x32\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/swiper.min.css?v=1.1\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css?v=1.1\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-3.3.1.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/idangerous.swiper.min.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body id=\"index\">\r\n    ");

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


	templateBuilder.Append("\r\n\r\n    <div class=\"main\">\r\n        <div class=\"swiper-container\" style=\"height:600px;\">\r\n            <div class=\"swiper-wrapper\">\r\n            </div>\r\n            <!-- Add Pagination -->\r\n            <div class=\"swiper-pagination\"></div>\r\n            <!-- Add Arrows -->\r\n            <div class=\"swiper-button-prev\"></div>\r\n            <div class=\"swiper-button-next\"></div>\r\n            div\r\n        </div>\r\n\r\n        <div class=\"bg1\">\r\n            <div class=\"content\">\r\n                <div class=\"i-company\">\r\n                    <h3>晶华智能</h3>\r\n                    <p>专业生产销售各种智能开关插座</p>\r\n                </div>\r\n                <div class=\"nav-wrap\">\r\n                    <span class=\"sel\">智能触控开关</span>\r\n                    <span>按键开关</span>\r\n                    <span>智能插座</span>\r\n                </div>\r\n                <div class=\"son-lump\">\r\n                    <div class=\"son-wrap\">\r\n                        <span class=\"s-item sel\">国标触摸开关</span>\r\n                        <span class=\"s-item\">中欧规触摸开关</span>\r\n                        <span class=\"s-item\">欧规触摸开关</span>\r\n                        <span class=\"s-item\">美规触摸开关</span>\r\n                    </div>\r\n                    <div class=\"son-wrap\">\r\n                        <span class=\"s-item\">国标按键开关</span>\r\n                        <span class=\"s-item\">欧规按键开关</span>\r\n                        <span class=\"s-item\">随意贴</span>\r\n                    </div>\r\n                    <div class=\"son-wrap\">\r\n                        <span class=\"s-item\">智能入墙插座</span>\r\n                        <span class=\"s-item\">随意插座</span>\r\n                    </div>\r\n                </div>\r\n                <div class=\"index-pro-cont\">\r\n                    <div class=\"i-pro-list\">\r\n                        <div class=\"prc-cont clearfix\">\r\n                            <div class=\"prc-img\"><div><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/图片1.png\" /></div></div>\r\n                            <ul class=\"prc-info\">\r\n                                <li class=\"prc-title\">国标触摸开关</li>\r\n                                <li class=\"son-row\">\r\n                                    <h4 class=\"son-txt\">产品参数</h4>\r\n                                    <div class=\"o-txt\" id=\"site-spec\">\r\n                                        产品尺寸：LWH=86*86*35MM<br />\r\n                                        供电方式：零火线供电<br />\r\n                                        输入电压：100~240V AC 50~60HZ<br />\r\n                                        负载能力：<=600W/每路<br />\r\n                                        待机功耗：<0.5W WIFI连接<br />\r\n                                        输出路数：最大支持4路<br />\r\n                                        连接方式：WIFI 蓝牙 ZigBee<br />\r\n                                        控制方式：触摸/APP/AI音箱<br />\r\n                                        支持系统：安卓/IOS\r\n                                    </div>\r\n                                </li>\r\n                                <li class=\"son-row zysx-row\">\r\n                                    <h4 class=\"son-txt\">安装注意事项</h4>\r\n                                    <div class=\"o-txt\">\r\n                                        1 必须接入零火线<br />\r\n                                        2 选用50~60mm深度底盒<br />\r\n                                        3 请专业人士勿带电操作\r\n                                    </div>\r\n                                </li>\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\"prc-cont clearfix\">\r\n                            <div class=\"prc-img\"><div><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/图片2.png\" /></div></div>\r\n                            <ul class=\"prc-info\">\r\n                                <li class=\"prc-title\">中欧规触摸开关</li>\r\n                                <li class=\"son-row\">\r\n                                    <h4 class=\"son-txt\">产品参数</h4>\r\n                                    <div class=\"o-txt\">\r\n                                        产品尺寸：LWH=86*86*35MM<br />\r\n                                        供电方式：零火线供电<br />\r\n                                        输入电压：100~240V AC 50~60HZ<br />\r\n                                        负载能力：<=600W/每路<br />\r\n                                        待机功耗：<0.5W WIFI连接<br />\r\n                                        输出路数：最大支持4路<br />\r\n                                        连接方式：WIFI 蓝牙 ZigBee<br />\r\n                                        控制方式：触摸/APP/AI音箱<br />\r\n                                        支持系统：安卓/IOS\r\n                                    </div>\r\n                                </li>\r\n                                <li class=\"son-row zysx-row\">\r\n                                    <h4 class=\"son-txt\">安装注意事项</h4>\r\n                                    <div class=\"o-txt\">\r\n                                        1 必须接入零火线<br />\r\n                                        2 选用50~60mm深度底盒<br />\r\n                                        3 请专业人士勿带电操作\r\n                                    </div>\r\n                                </li>\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\"prc-cont clearfix\">\r\n                            <div class=\"prc-img\"><div><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/图片3.png\" /></div></div>\r\n                            <ul class=\"prc-info\">\r\n                                <li class=\"prc-title\">欧规触摸开关</li>\r\n                                <li class=\"son-row\">\r\n                                    <h4 class=\"son-txt\">产品参数</h4>\r\n                                    <div class=\"o-txt\">\r\n                                        产品尺寸：LWH=86*86*35MM<br />\r\n                                        供电方式：零火线供电<br />\r\n                                        输入电压：100~240V AC 50~60HZ<br />\r\n                                        负载能力：<=600W/每路<br />\r\n                                        待机功耗：<0.5W WIFI连接<br />\r\n                                        输出路数：最大支持4路<br />\r\n                                        连接方式：WIFI 蓝牙 ZigBee<br />\r\n                                        控制方式：触摸/APP/AI音箱<br />\r\n                                        支持系统：安卓/IOS\r\n                                    </div>\r\n                                </li>\r\n                                <li class=\"son-row zysx-row\">\r\n                                    <h4 class=\"son-txt\">安装注意事项</h4>\r\n                                    <div class=\"o-txt\">\r\n                                        1 必须接入零火线<br />\r\n                                        2 选用50~60mm深度底盒<br />\r\n                                        3 请专业人士勿带电操作\r\n                                    </div>\r\n                                </li>\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\"prc-cont clearfix\">\r\n                            <div class=\"prc-img\"><div><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/图片4.png\" /></div></div>\r\n                            <ul class=\"prc-info\">\r\n                                <li class=\"prc-title\">美规触摸开关</li>\r\n                                <li class=\"son-row\">\r\n                                    <h4 class=\"son-txt\">产品参数</h4>\r\n                                    <div class=\"o-txt\">\r\n                                        产品尺寸：LWH=120*72*35MM<br />\r\n                                        供电方式：零火线供电<br />\r\n                                        输入电压：100~240V AC 50~60HZ<br />\r\n                                        负载能力：<=600W/每路<br />\r\n                                        待机功耗：<0.5W WIFI连接<br />\r\n                                        输出路数：最大支持3路<br />\r\n                                        连接方式：WIFI 蓝牙 ZigBee<br />\r\n                                        控制方式：触摸/APP/AI音箱<br />\r\n                                        支持系统：安卓/IOS\r\n\r\n                                    </div>\r\n                                </li>\r\n                                <li class=\"son-row zysx-row\">\r\n                                    <h4 class=\"son-txt\">安装注意事项</h4>\r\n                                    <div class=\"o-txt\">\r\n                                        1 必须接入零火线<br />\r\n                                        2 选用50~60mm深度底盒<br />\r\n                                        3 请专业人士勿带电操作\r\n                                    </div>\r\n                                </li>\r\n                            </ul>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"i-pro-list\">\r\n                        <div class=\"prc-cont clearfix\">\r\n                            <div class=\"prc-img\"><div><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/图片5.png\" /></div></div>\r\n                            <ul class=\"prc-info\">\r\n                                <li class=\"prc-title\">国标按键开关</li>\r\n                                <li class=\"son-row\">\r\n                                    <h4 class=\"son-txt\">产品参数</h4>\r\n                                    <div class=\"o-txt\">\r\n                                        产品尺寸：LWH=86*86*40MM<br />\r\n                                        供电方式：零火线供电<br />\r\n                                        输入电压：100~240V AC 50~60HZ<br />\r\n                                        负载能力：<=600W/每路<br />\r\n                                        待机功耗：<0.5W WIFI连接<br />\r\n                                        输出路数：最大支持4路<br />\r\n                                        连接方式：WIFI 蓝牙 ZigBee<br />\r\n                                        控制方式：触摸/APP/AI音箱<br />\r\n                                        支持系统：安卓/IOS\r\n                                    </div>\r\n                                </li>\r\n                                <li class=\"son-row zysx-row\">\r\n                                    <h4 class=\"son-txt\">安装注意事项</h4>\r\n                                    <div class=\"o-txt\">\r\n                                        1 必须接入零火线<br />\r\n                                        2 选用50~60mm深度底盒<br />\r\n                                        3 请专业人士勿带电操作\r\n                                    </div>\r\n                                </li>\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\"prc-cont clearfix\">\r\n                            <div class=\"prc-img\"><div><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/图片6.png\" /></div></div>\r\n                            <ul class=\"prc-info\">\r\n                                <li class=\"prc-title\">欧规按键开关</li>\r\n                                <li class=\"son-row\">\r\n                                    <h4 class=\"son-txt\">产品参数</h4>\r\n                                    <div class=\"o-txt\">\r\n                                        产品尺寸：LWH=86*86*40MM<br />\r\n                                        供电方式：零火线供电<br />\r\n                                        输入电压：100~240V AC 50~60HZ<br />\r\n                                        负载能力：<=600W/每路<br />\r\n                                        待机功耗：<0.5W WIFI连接<br />\r\n                                        输出路数：最大支持4路<br />\r\n                                        连接方式：WIFI 蓝牙 ZigBee<br />\r\n                                        控制方式：触摸/APP/AI音箱<br />\r\n                                        支持系统：安卓/IOS\r\n                                    </div>\r\n                                </li>\r\n                                <li class=\"son-row zysx-row\">\r\n                                    <h4 class=\"son-txt\">安装注意事项</h4>\r\n                                    <div class=\"o-txt\">\r\n                                        1 必须接入零火线<br />\r\n                                        2 选用50~60mm深度底盒<br />\r\n                                        3 请专业人士勿带电操作\r\n                                    </div>\r\n                                </li>\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\"prc-cont clearfix\">\r\n                            <div class=\"prc-img\"><div><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/图片7.png\" /></div></div>\r\n                            <ul class=\"prc-info\">\r\n                                <li class=\"prc-title\">随意贴</li>\r\n                                <li class=\"son-row\">\r\n                                    <h4 class=\"son-txt\">产品参数</h4>\r\n                                    <div class=\"o-txt\">\r\n                                        产品尺寸：LWH=86*86*15MM<br />\r\n                                        供电方式：2032电池*1<br />\r\n                                        输入电压：DC-3.0V<br />\r\n                                        通信距离：>=20米<br />\r\n                                        待机功耗：<=10uA<br />\r\n                                        输出路数：最大支持3路<br />\r\n                                        连接方式：WIFI 蓝牙 ZigBee<br />\r\n                                        控制方式：按键<br />\r\n                                        产品说明：433射频信号，独立编码、可穿墙控制我司配套智能开关\r\n                                    </div>\r\n                                </li>\r\n                                <li class=\"son-row zysx-row\">\r\n                                    <h4 class=\"son-txt\">安装注意事项</h4>\r\n                                    <div class=\"o-txt\">\r\n                                        1 必须接入零火线<br />\r\n                                        2 选用50~60mm深度底盒<br />\r\n                                        3 请专业人士勿带电操作\r\n                                    </div>\r\n                                </li>\r\n                            </ul>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"i-pro-list\">\r\n                        <div class=\"prc-cont clearfix\">\r\n                            <div class=\"prc-img\"><div><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/图片8.png\" /></div></div>\r\n                            <ul class=\"prc-info\">\r\n                                <li class=\"prc-title\">智能入墙插座</li>\r\n                                <li class=\"son-row\">\r\n                                    <h4 class=\"son-txt\">产品参数</h4>\r\n                                    <div class=\"o-txt\">\r\n                                        产品尺寸：LWH=86*86*35MM<br />\r\n                                        供电方式：零火线供电<br />\r\n                                        输入电压：100~240V AC 50~60HZ<br />\r\n                                        USB充电：5V/2A不受开关控制<br />\r\n                                        负载能力：16A<br />\r\n                                        输出路数：最大支持3路<br />\r\n                                        连接方式：WIFI 蓝牙 ZigBee<br />\r\n                                        控制方式：APP/触摸/AI音箱<br />\r\n                                        支持系统：安卓/IOS\r\n                                    </div>\r\n                                </li>\r\n                                <li class=\"son-row zysx-row\">\r\n                                    <h4 class=\"son-txt\">安装注意事项</h4>\r\n                                    <div class=\"o-txt\">\r\n                                        1 必须接入零火线<br />\r\n                                        2 选用50~60mm深度底盒<br />\r\n                                        3 请专业人士勿带电操作\r\n                                    </div>\r\n                                </li>\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\"prc-cont clearfix\">\r\n                            <div class=\"prc-img\"><div><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/图片9.png\" /></div></div>\r\n                            <ul class=\"prc-info\">\r\n                                <li class=\"prc-title\">随意插座</li>\r\n                                <li class=\"son-row\">\r\n                                    <h4 class=\"son-txt\">国标智能计量插座</h4>\r\n                                    <div class=\"o-txt\">\r\n                                        WIFI连接、即插即用<br />\r\n                                        产品尺寸：LWH=49*49*50MM<br />\r\n                                        输入插脚：国标二三插脚<br />\r\n                                        输入电压：100~240V AC 50~60 HZ<br />\r\n                                        待机功耗：<0.5W WIFI连接<br />\r\n                                        负载能力：10A<br />\r\n                                        外壳材料：PC阻燃材料\r\n                                    </div>\r\n                                </li>\r\n                            </ul>\r\n                        </div>\r\n                    </div>\r\n               </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"content pt100 pb100\">\r\n            <div class=\"top-title\">\r\n                <h3><img class=\"iconf\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/icon1.png\">产品优势</h3>\r\n            </div>\r\n            <div class=\"advantage-list\">\r\n                <dl>\r\n                    <dt><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/1.png\"></dt>\r\n                    <dd>\r\n                        <p>支持国标、中欧规、美规，满足国外对产品的要求，是跨境电商首选供货商!</p>\r\n                    </dd>\r\n                </dl>\r\n                <dl>\r\n                    <dt><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/2.png\"></dt>\r\n                    <dd>\r\n                        <p>在国内拥有近千人的生产基地，拥有充分货源，保障供货。</p>\r\n                    </dd>\r\n                </dl>\r\n                <dl>\r\n                    <dt><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/3.png\"></dt>\r\n                    <dd>\r\n                        <p>设有美工设计部门，对大批量客户提供面板图案个性化定制!</p>\r\n                    </dd>\r\n                </dl>\r\n                <dl>\r\n                    <dt><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/4.png\"></dt>\r\n                    <dd>\r\n                        <p>贴心售后，提供产品退换货服务。</p>\r\n                    </dd>\r\n                </dl>\r\n            </div>\r\n        </div>\r\n        <div class=\"bg2\">\r\n            <div class=\"content\">\r\n                <div class=\"top-title\">\r\n                    <h3><img class=\"iconf\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/icon2.png\">新闻咨讯</h3>\r\n                </div>\r\n                <div class=\"news clearfix\">\r\n                    <div class=\"news-fl-img\"></div>\r\n                    <div class=\"news-list\">\r\n                        <ul class=\"list-ul\">\r\n                            ");
	DataTable newsList = get_article_list("news", 87, 9, "status=0");

	int newdr__loop__id=0;
	foreach(DataRow newdr in newsList.Rows)
	{
		newdr__loop__id++;


	templateBuilder.Append("\r\n                            <li>\r\n                                <a title=\"" + Utils.ObjectToStr(newdr["title"]) + "\" href='");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newdr["id"])));

	templateBuilder.Append("'>" + Utils.ObjectToStr(newdr["title"]) + "</a>\r\n                                <span class=\"cont-time fr\">");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(newdr["add_time"])).ToString("yyyy-MM-dd"));

	templateBuilder.Append("</span>\r\n                            </li>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    ");

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


	templateBuilder.Append("\r\n\r\n    <script src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/index.js\"></");
	templateBuilder.Append("script>\r\n</body>\r\n\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>

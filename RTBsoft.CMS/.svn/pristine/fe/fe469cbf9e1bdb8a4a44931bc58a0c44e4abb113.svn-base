<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="advert_view.aspx.cs" Inherits="RTBcms.Web.admin.advert.advert_view" ValidateRequest="false" %>
<%@ Import namespace="RTBcms.Common" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,initial-scale=1.0,user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<title>调用广告</title>
<link href="../../scripts/artdialog/ui-dialog.css" rel="stylesheet" type="text/css" />
<link href="../skin/default/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="../../scripts/jquery/jquery-1.11.2.min.js"></script>
<script type="text/javascript" charset="utf-8" src="../../scripts/jquery/Validform_v5.3.2_min.js"></script>
<script type="text/javascript" charset="utf-8" src="../../scripts/artdialog/dialog-plus-min.js"></script>
<script type="text/javascript" charset="utf-8" src="../../scripts/webuploader/webuploader.min.js"></script>
<script type="text/javascript" charset="utf-8" src="../js/uploader.js"></script>
<script type="text/javascript" charset="utf-8" src="../js/laymain.js"></script>
<script type="text/javascript" charset="utf-8" src="../js/common.js"></script>
<script type="text/javascript">
    $(function () {
        //初始化表单验证
        $("#form1").initValidform();

        $("#btnCopy").bind("click", function () {
            var Url = $("#txtCopyUrl").val();
            copyToClipboard(Url);
        });
    });

    function copyToClipboard(txt) {
        if (window.clipboardData) {
            window.clipboardData.clearData();
            window.clipboardData.setData("Text", txt);
            alert("已将代码复制至剪切板，请将其贴粘到指定位置即可。");
        } else
         {
             alert("暂不支持当前浏览器的复制功能！请手动复制调用代码！");
        } 
    }
</script>
</head>

<body class="mainbody">
<form id="form1" runat="server">
<!--导航栏-->
<div class="location">
  <a href="advert_list.aspx" class="back"><i></i><span>返回列表页</span></a>
  <a href="../center.aspx" class="home"><i></i><span>首页</span></a>
  <i class="arrow"></i>
  <a href="advert_list.aspx"><span>广告管理</span></a>
  <i class="arrow"></i>
  <span>调用广告</span>
</div>
<div class="line10"></div>
<!--/导航栏-->

<!--内容-->
<div id="floatHead" class="content-tab-wrap">
  <div class="content-tab">
    <div class="content-tab-ul-wrap">
      <ul>
        <li><a class="selected" href="javascript:;">调用广告</a></li>
      </ul>
    </div>
  </div>
</div>

<div class="tab-content">
  <dl>
    <dt>广告位名称</dt>
    <dd>
      <%=model.title %>
    </dd>
  </dl>
  <dl>
    <dt>类型</dt>
    <dd>
      <%= GetTypeName(model.type) %>
    </dd>
  </dl>
  <dl>
    <dt>备注说明</dt>
    <dd>
       <%=model.remark%>
    </dd>
  </dl>
 <%-- <dl>
    <dt>显示大小</dt>
    <dd>
      <%=model.view_width%>×<%=model.view_height%>px
    </dd>
  </dl>--%>
  <dl>
    <dt>链接目标</dt>
    <dd>
      <%=(Convert.ToString(model.target) == "_self" ? "原窗口" : "新窗口")%>
    </dd>
  </dl>
  <dl>
    <dt>调用代码</dt>
    <dd>
      <textarea id="txtCopyUrl" class="input"><script type="text/javascript" src="<%=siteConfig.webpath%>tools/advert_ajax.ashx?id=<%=model.id%>"></script></textarea>
    </dd>
  </dl>
</div>

<!--/内容-->

<!--工具栏-->
<div class="page-footer">
  <div class="btn-wrap">
    <input id="btnCopy" type="button" value="复制代码" class="btn" />
    <input name="btnReturn" type="button" value="返回上一页" class="btn yellow" onclick="javascript:history.back(-1);" />
  </div>
</div>
<!--/工具栏-->
</form>
</body>
</html>

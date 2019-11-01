<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bar_edit.aspx.cs" Inherits="RTBcms.Web.admin.advert.bar_edit" ValidateRequest="false" %>
<%@ Import namespace="RTBcms.Common" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,initial-scale=1.0,user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<title>编辑广告内容</title>
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

        //初始化上传控件
        $(".upload-img").InitUploader({ sendurl: "../../tools/upload_ajax.ashx", swf: "../../scripts/webuploader/uploader.swf" });
    });
</script>
</head>

<body class="mainbody">
<form id="form1" runat="server">
<!--导航栏-->
<div class="location">
  <a href="bar_list.aspx" class="back"><i></i><span>返回列表页</span></a>
  <a href="../center.aspx" class="home"><i></i><span>首页</span></a>
  <i class="arrow"></i>
  <a href="bar_list.aspx?aid=<%=aid %>"><span>广告内容管理</span></a>
  <i class="arrow"></i>
  <span>编辑广告内容</span>
</div>
<div class="line10"></div>
<!--/导航栏-->

<!--内容-->
<div id="floatHead" class="content-tab-wrap">
  <div class="content-tab">
    <div class="content-tab-ul-wrap">
      <ul>
        <li><a class="selected" href="javascript:;">广告内容设置</a></li>
      </ul>
    </div>
  </div>
</div>

<div class="tab-content">
    <dl>
    <dt>所属广告位</dt>
    <dd>
      <asp:Literal ID="LitTitle" runat="server"></asp:Literal>
    </dd>
  </dl>
  <dl>
    <dt>广告名称</dt>
    <dd>
      <asp:TextBox ID="txtTitle" runat="server" CssClass="input normal"></asp:TextBox>
    </dd>
  </dl>
  <dl>
    <dt>广告图片</dt>
    <dd>
      <asp:TextBox ID="txtImgUrl" runat="server" CssClass="input normal upload-path" />
      <div class="upload-box upload-img"></div>
    </dd>
  </dl>
  <dl>
    <dt>链接地址</dt>
    <dd>
      <asp:TextBox ID="txtLinkUrl" runat="server" CssClass="input normal" Text="#"></asp:TextBox>
    </dd>
  </dl>
  <dl>
    <dt>内容</dt>
    <dd>
      <asp:TextBox ID="txtContent" runat="server" maxlength="255" TextMode="MultiLine"  CssClass="input normal"></asp:TextBox>
    </dd>
  </dl>
  <dl>
    <dt>显示</dt>
    <dd>
      <div class="rule-single-checkbox">
        <asp:CheckBox ID="cbIsLock" runat="server" Checked="true"/>
      </div>
      <span class="Validform_checktip">*是否在网站上显示。</span>
    </dd>
  </dl>
  <dl>
    <dt>排序数字</dt>
    <dd>
      <asp:TextBox ID="txtSortId" runat="server" CssClass="input small" datatype="n" sucmsg=" ">99</asp:TextBox>
      <span class="Validform_checktip">*数字，越小越向前</span>
    </dd>
  </dl>
</div>

<!--/内容-->

<!--工具栏-->
<div class="page-footer">
  <div class="btn-wrap">
    <asp:Button ID="btnSubmit" runat="server" Text="提交保存" CssClass="btn" onclick="btnSubmit_Click" />
    <input name="btnReturn" type="button" value="返回上一页" class="btn yellow" onclick="javascript:history.back(-1);" />
  </div>
</div>
<!--/工具栏-->
</form>
</body>
</html>

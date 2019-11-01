using RTBcms.Common;
using RTBcms.Web.Plugin.OnlineService.BLL;
using RTBcms.Web.UI;
using System;
using System.Text;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace RTBcms.Web.Plugin.OnlineService.admin
{
	public class online_service_list : RTBcms.Web.UI.ManagePage
	{
		protected int totalCount;

		protected int page;

		protected int pageSize;

		protected string keywords = string.Empty;

		protected HtmlForm form1;

		protected LinkButton btnSave;

		protected LinkButton btnDelete;

		protected TextBox txtKeywords;

		protected LinkButton lbtnSearch;

		protected Repeater rptList;

		protected TextBox txtPageNum;

		protected HtmlGenericControl PageContent;

		protected void Page_Load(object sender, EventArgs e)
		{
			this.keywords = DTRequest.GetQueryString("keywords");
			this.pageSize = this.GetPageSize(10);
			if (!this.Page.IsPostBack)
			{
                ChkAdminLevel("plugin_online_service", DTEnums.ActionEnum.View.ToString()); //检查权限
                this.RptBind("id>0" + this.CombSqlTxt(this.keywords), "sort_id asc,id desc");
			}
		}

		private void RptBind(string _strWhere, string _orderby)
		{
			this.page = DTRequest.GetQueryInt("page", 1);
			this.txtKeywords.Text = this.keywords;
			RTBcms.Web.Plugin.OnlineService.BLL.online_service online_service = new RTBcms.Web.Plugin.OnlineService.BLL.online_service();
			this.rptList.DataSource = online_service.GetList(this.pageSize, this.page, _strWhere, _orderby, out this.totalCount);
			this.rptList.DataBind();
			this.txtPageNum.Text = this.pageSize.ToString();
			string text = Utils.CombUrlTxt("online_service_list.aspx", "keywords={0}&page={1}", new string[]
			{
				this.keywords,
				"__id__"
			});
			this.PageContent.InnerHtml = Utils.OutPageList(this.pageSize, this.page, this.totalCount, text, 8);
		}

		protected string CombSqlTxt(string _keywords)
		{
			StringBuilder stringBuilder = new StringBuilder();
			_keywords = _keywords.Replace("'", "");
			if (!string.IsNullOrEmpty(_keywords))
			{
				stringBuilder.Append(string.Concat(new string[]
				{
					" and (service_template like  '%",
					_keywords,
					"%' or service_title like  '%",
					_keywords,
					"%')"
				}));
			}
			return stringBuilder.ToString();
		}

		private int GetPageSize(int _default_size)
		{
			int num;
			int result;
			if (int.TryParse(Utils.GetCookie("channel_site_page_size", "RTBcmsPage"), out num))
			{
				if (num > 0)
				{
					result = num;
					return result;
				}
			}
			result = _default_size;
			return result;
		}

		protected void btnSearch_Click(object sender, EventArgs e)
		{
			base.Response.Redirect(Utils.CombUrlTxt("online_service_list.aspx", "keywords={0}", new string[]
			{
				this.txtKeywords.Text
			}));
		}

		protected void txtPageNum_TextChanged(object sender, EventArgs e)
		{
			int num;
			if (int.TryParse(this.txtPageNum.Text.Trim(), out num))
			{
				if (num > 0)
				{
					Utils.WriteCookie("channel_site_page_size", "RTBcmsPage", num.ToString(), 14400);
				}
			}
			base.Response.Redirect(Utils.CombUrlTxt("online_service_list.aspx", "keywords={0}", new string[]
			{
				this.keywords
			}));
		}

		protected void btnSave_Click(object sender, EventArgs e)
		{
			RTBcms.Web.Plugin.OnlineService.BLL.online_service online_service = new RTBcms.Web.Plugin.OnlineService.BLL.online_service();
			for (int i = 0; i < this.rptList.Items.Count; i++)
			{
				int id = Convert.ToInt32(((HiddenField)this.rptList.Items[i].FindControl("hidId")).Value);
				int num;
				if (!int.TryParse(((TextBox)this.rptList.Items[i].FindControl("txtSortId")).Text.Trim(), out num))
				{
					num = 99;
				}
				online_service.UpdateField(id, "sort_id=" + num.ToString());
			}
			base.AddAdminLog(4.ToString(), "保存客服排序");
			base.JscriptMsg("保存排序成功！", Utils.CombUrlTxt("online_service_list.aspx", "keywords={0}", new string[]
			{
				this.keywords
			}));
		}

		protected void btnDelete_Click(object sender, EventArgs e)
		{
			int num = 0;
			int num2 = 0;
			RTBcms.Web.Plugin.OnlineService.BLL.online_service online_service = new RTBcms.Web.Plugin.OnlineService.BLL.online_service();
			for (int i = 0; i < this.rptList.Items.Count; i++)
			{
				int id = Convert.ToInt32(((HiddenField)this.rptList.Items[i].FindControl("hidId")).Value);
				CheckBox checkBox = (CheckBox)this.rptList.Items[i].FindControl("chkId");
				if (checkBox.Checked)
				{
					if (online_service.Delete(id))
					{
						num++;
					}
					else
					{
						num2++;
					}
				}
			}
			base.AddAdminLog(5.ToString(), string.Concat(new object[]
			{
				"删除客服成功",
				num,
				"条，失败",
				num2,
				"条"
			}));
			base.JscriptMsg(string.Concat(new object[]
			{
				"删除成功",
				num,
				"条，失败",
				num2,
				"条！"
			}), Utils.CombUrlTxt("online_service_list.aspx", "keywords={0}", new string[]
			{
				this.keywords
			}));
		}
	}
}

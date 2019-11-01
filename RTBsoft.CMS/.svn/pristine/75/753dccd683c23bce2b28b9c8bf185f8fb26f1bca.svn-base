using RTBcms.BLL;
using RTBcms.Common;
using RTBcms.Web.Plugin.OnlineService.BLL;
using RTBcms.Web.Plugin.OnlineService.Model;
using RTBcms.Web.UI;
using System;
using System.Data;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace RTBcms.Web.Plugin.OnlineService.admin
{
	public class online_service_edit : ManagePage
	{
		protected HtmlForm form1;

		protected DropDownList ddlSitePath;

		protected TextBox txtService_template;

		protected TextBox txtService_title;

		protected CheckBox cbIsLock;

		protected TextBox txtSortId;

		protected Button btnSubmit;

		private string action = 3.ToString();

		private int id = 0;

		protected void Page_Load(object sender, EventArgs e)
		{
			string queryString = DTRequest.GetQueryString("action");
			if (!string.IsNullOrEmpty(queryString) && queryString == 4.ToString())
			{
				this.action = 4.ToString();
				this.id = DTRequest.GetQueryInt("id");
				if (this.id == 0)
				{
					base.JscriptMsg("传输参数不正确！", "back");
					return;
				}
				if (!new RTBcms.Web.Plugin.OnlineService.BLL.online_service().Exists(this.id))
				{
					base.JscriptMsg("记录不存在或已被删除！", "back");
					return;
				}
			}
			if (!this.Page.IsPostBack)
			{
				this.TreeBind();
				if (this.action == 4.ToString())
				{
					this.ShowInfo(this.id);
				}
			}
		}

		private void TreeBind()
		{
			channel_site channel_site = new channel_site();
			DataTable dataTable = channel_site.GetList(0, "", "sort_id asc,id desc").Tables[0];
			this.ddlSitePath.Items.Clear();
			this.ddlSitePath.Items.Add(new ListItem("请选择站点...", ""));
			foreach (DataRow dataRow in dataTable.Rows)
			{
				this.ddlSitePath.Items.Add(new ListItem(dataRow["title"].ToString(), dataRow["build_path"].ToString()));
			}
		}

		private void ShowInfo(int _id)
		{
			RTBcms.Web.Plugin.OnlineService.BLL.online_service online_service = new RTBcms.Web.Plugin.OnlineService.BLL.online_service();
			RTBcms.Web.Plugin.OnlineService.Model.online_service model = online_service.GetModel(_id);
			this.ddlSitePath.SelectedValue = model.site_path;
			this.txtService_template.Text = model.service_template;
			this.txtService_title.Text = model.service_title;
			this.txtSortId.Text = model.sort_id.ToString();
			if (model.is_lock == 1)
			{
				this.cbIsLock.Checked = true;
			}
			else
			{
				this.cbIsLock.Checked = false;
			}
		}

		private bool DoAdd()
		{
			RTBcms.Web.Plugin.OnlineService.Model.online_service online_service = new RTBcms.Web.Plugin.OnlineService.Model.online_service();
			RTBcms.Web.Plugin.OnlineService.BLL.online_service online_service2 = new RTBcms.Web.Plugin.OnlineService.BLL.online_service();
			online_service.site_path = this.ddlSitePath.SelectedValue;
			online_service.service_template = this.txtService_template.Text.Trim();
			online_service.service_title = this.txtService_title.Text.Trim();
			online_service.sort_id = Utils.StrToInt(this.txtSortId.Text.Trim(), 99);
			if (this.cbIsLock.Checked)
			{
				online_service.is_lock = 1;
			}
			else
			{
				online_service.is_lock = 0;
			}
			bool result;
			if (online_service2.Add(online_service) > 0)
			{
				CacheHelper.Remove("dt_cache_http_domain");
				base.AddAdminLog(3.ToString(), "添加在线客服:" + online_service.service_template);
				result = true;
			}
			else
			{
				result = false;
			}
			return result;
		}

		private bool DoEdit(int _id)
		{
			bool result = false;
			RTBcms.Web.Plugin.OnlineService.BLL.online_service online_service = new RTBcms.Web.Plugin.OnlineService.BLL.online_service();
			RTBcms.Web.Plugin.OnlineService.Model.online_service model = online_service.GetModel(_id);
			model.site_path = this.ddlSitePath.SelectedValue;
			model.service_template = this.txtService_template.Text.Trim();
			model.service_title = this.txtService_title.Text.Trim();
			model.sort_id = Utils.StrToInt(this.txtSortId.Text.Trim(), 99);
			if (this.cbIsLock.Checked)
			{
				model.is_lock = 1;
			}
			else
			{
				model.is_lock = 0;
			}
			if (online_service.Update(model))
			{
				CacheHelper.Remove("dt_cache_http_domain");
				base.AddAdminLog(4.ToString(), "修改在线客服:" + model.service_template);
				result = true;
			}
			return result;
		}

		protected void btnSubmit_Click(object sender, EventArgs e)
		{
			if (this.action == 4.ToString())
			{
				if (!this.DoEdit(this.id))
				{
					base.JscriptMsg("保存过程中发生错误！", "");
				}
				else
				{
					base.JscriptMsg("修改在线客服信息成功！", "online_service_list.aspx");
				}
			}
			else
			{
				if (!this.DoAdd())
				{
					base.JscriptMsg("保存过程中发生错误！", "");
				}
				else
				{
					base.JscriptMsg("添加在线客服信息成功！", "online_service_list.aspx");
				}
			}
		}
	}
}

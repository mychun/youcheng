using System;
using System.Data;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RTBcms.Common;

namespace RTBcms.Web.admin.channel
{
    public partial class banner_edit : Web.UI.ManagePage
    {
        private string action = DTEnums.ActionEnum.Add.ToString(); //操作类型
        private int id = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            string _action = DTRequest.GetQueryString("action");

            if (!string.IsNullOrEmpty(_action) && _action == DTEnums.ActionEnum.Edit.ToString())
            {
                this.action = DTEnums.ActionEnum.Edit.ToString();//修改类型
                this.id = DTRequest.GetQueryInt("id");
                if (this.id == 0)
                {
                    JscriptMsg("传输参数不正确！", "back");
                    return;
                }
                if (!new BLL.banner().Exists(this.id))
                {
                    JscriptMsg("记录不存在或已被删除！", "back");
                    return;
                }
            }
            if (!Page.IsPostBack)
            {
                ChkAdminLevel("sys_banner_set", DTEnums.ActionEnum.View.ToString()); //检查权限
                this.TreeBind();
                if (action == DTEnums.ActionEnum.Edit.ToString()) //修改
                {
                    ShowInfo(this.id);
                }
            }
        }

        private void TreeBind()
        {
            RTBcms.BLL.channel_site bll = new RTBcms.BLL.channel_site();
            DataTable dt = bll.GetList(0, "", "sort_id asc,id desc").Tables[0];
            this.ddlSitePath.Items.Clear();
            this.ddlSitePath.Items.Add(new ListItem("请选择站点...", ""));
            foreach (DataRow dr in dt.Rows)
            {
                this.ddlSitePath.Items.Add(new ListItem(dr["title"].ToString(), dr["build_path"].ToString()));
            }
        }

        #region 赋值操作=================================
        private void ShowInfo(int _id)
        {
            BLL.banner bll = new BLL.banner();
            Model.banner model = bll.GetModel(_id);
            this.ddlSitePath.SelectedValue = model.site_path;
            txtTitle.Text = model.title;
            txtHref_url.Text = model.href_url;
            rblHref_target.SelectedValue = model.href_target;
            txtBg_color.Text = model.bg_color;
            txtSortId.Text = model.sort_id.ToString();
            if (model.is_lock == 0)
            {
                cbIsLock.Checked = true;
            }
            else
            {
                cbIsLock.Checked = false;
            }
            this.txtImgUrl.Text = model.img_src;
        }
        #endregion

        #region 增加操作=================================
        private bool DoAdd()
        {
            Model.banner model = new Model.banner();
            BLL.banner bll = new BLL.banner();

            model.site_path = this.ddlSitePath.SelectedValue;
            model.title = txtTitle.Text.Trim();
            model.href_url = txtHref_url.Text;
            model.href_target = rblHref_target.SelectedValue;
            model.bg_color = txtBg_color.Text;
            model.img_src = txtImgUrl.Text;
            model.sort_id = Utils.StrToInt(txtSortId.Text.Trim(), 99);
            if (cbIsLock.Checked == true)
            {
                model.is_lock = 0;
            }
            else
            {
                model.is_lock = 1;
            }

            if (bll.Add(model) > 0)
            {
                AddAdminLog(DTEnums.ActionEnum.Add.ToString(), "添加Banner:" + model.title); //记录日志
                return true;
            }

            return false;
        }
        #endregion

        #region 修改操作=================================
        private bool DoEdit(int _id)
        {
            bool result = false;
            BLL.banner bll = new BLL.banner();
            Model.banner model = bll.GetModel(_id);

            model.site_path = this.ddlSitePath.SelectedValue;
            model.title = txtTitle.Text.Trim();
            model.href_url = txtHref_url.Text;
            model.href_target = rblHref_target.SelectedValue;
            model.bg_color = txtBg_color.Text;
            model.img_src = txtImgUrl.Text;
            model.sort_id = Utils.StrToInt(txtSortId.Text.Trim(), 99);
            if (cbIsLock.Checked == true)
            {
                model.is_lock = 0;
            }
            else
            {
                model.is_lock = 1;
            }

            if (bll.Update(model))
            {
                AddAdminLog(DTEnums.ActionEnum.Edit.ToString(), "修改Banner:" + model.title); //记录日志
                result = true;
            }

            return result;
        }
        #endregion

        //保存
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (action == DTEnums.ActionEnum.Edit.ToString()) //修改
            {
                ChkAdminLevel("sys_banner_set", DTEnums.ActionEnum.Edit.ToString()); //检查权限
                if (!DoEdit(this.id))
                {
                    JscriptMsg("保存过程中发生错误！", "");
                    return;
                }
                JscriptMsg("修改Banner信息成功！", "banner_list.aspx");
            }
            else //添加
            {
                ChkAdminLevel("sys_banner_set", DTEnums.ActionEnum.Add.ToString()); //检查权限
                if (!DoAdd())
                {
                    JscriptMsg("保存过程中发生错误！", "");
                    return;
                }
                JscriptMsg("添加Banner信息成功！", "banner_list.aspx");
            }
        }

    }
}
using System;
using System.Data;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RTBcms.Common;

namespace RTBcms.Web.admin.advert
{
    public partial class bar_edit : Web.UI.ManagePage
    {
        private string action = DTEnums.ActionEnum.Add.ToString(); //操作类型
        private int id = 0;
        protected int aid;

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
                if (!new BLL.advert_banner().Exists(this.id))
                {
                    JscriptMsg("记录不存在或已被删除！", "back");
                    return;
                }
            }
            else
            {
                this.aid = DTRequest.GetQueryInt("aid");
                if (this.aid < 1)
                {
                    base.JscriptMsg("传输参数不正确！", "back");
                    return;
                }
                if (!new BLL.advert().Exists(this.aid))
                {
                    base.JscriptMsg("广告位不存在或已删除！", "back");
                    return;
                }
                this.LitTitle.Text = new BLL.advert().GetTitle(this.aid);
            }
            if (!Page.IsPostBack)
            {
                ChkAdminLevel("manager_advert", DTEnums.ActionEnum.View.ToString()); //检查权限
                if (action == DTEnums.ActionEnum.Edit.ToString()) //修改
                {
                    ShowInfo(this.id);
                }
            }
        }

        #region 赋值操作=================================
        private void ShowInfo(int _id)
        {
            BLL.advert_banner bll = new BLL.advert_banner();
            Model.advert_banner model = bll.GetModel(_id);
            this.aid = model.aid;
            this.LitTitle.Text = new BLL.advert().GetTitle(this.aid);
            this.txtTitle.Text = model.title;
            this.cbIsLock.Checked = model.is_lock == 0;
            this.txtSortId.Text = model.sort_id.ToString();
            this.txtLinkUrl.Text = model.link_url;
            this.txtImgUrl.Text = model.file_path;
            this.txtContent.Text = model.content;
        }
        #endregion

        #region 增加操作=================================
        private bool DoAdd()
        {
            Model.advert_banner model = new Model.advert_banner();
            BLL.advert_banner bll = new BLL.advert_banner();
            model.aid = this.aid;
            model.title = this.txtTitle.Text.Trim();
            model.file_path = this.txtImgUrl.Text.Trim();
            model.link_url = this.txtLinkUrl.Text.Trim();
            model.content = this.txtContent.Text;
            model.sort_id = int.Parse(this.txtSortId.Text.Trim());
            model.is_lock = this.cbIsLock.Checked ? 0 : 1;
            model.start_time = DateTime.Now;
            model.end_time = DateTime.Now.AddYears(100);
            model.add_time = DateTime.Now;

            if (bll.Add(model) > 0)
            {
                AddAdminLog(DTEnums.ActionEnum.Add.ToString(), "添加广告内容:" + model.title); //记录日志
                return true;
            }

            return false;
        }
        #endregion

        #region 修改操作=================================
        private bool DoEdit(int _id)
        {
            bool result = false;
            BLL.advert_banner bll = new BLL.advert_banner();
            Model.advert_banner model = bll.GetModel(_id);
            this.aid = model.aid;
            model.title = this.txtTitle.Text.Trim();
            model.file_path = this.txtImgUrl.Text.Trim();
            model.link_url = this.txtLinkUrl.Text.Trim();
            model.content = this.txtContent.Text;
            model.sort_id = int.Parse(this.txtSortId.Text.Trim());
            model.is_lock = this.cbIsLock.Checked ? 0 : 1;

            if (bll.Update(model))
            {
                AddAdminLog(DTEnums.ActionEnum.Edit.ToString(), "修改广告内容:" + model.title); //记录日志
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
                ChkAdminLevel("manager_advert", DTEnums.ActionEnum.Edit.ToString()); //检查权限
                if (!DoEdit(this.id))
                {
                    JscriptMsg("保存过程中发生错误！", "");
                    return;
                }
                JscriptMsg("修改广告内容信息成功！", "bar_list.aspx?aid=" + this.aid.ToString());
            }
            else //添加
            {
                ChkAdminLevel("manager_advert", DTEnums.ActionEnum.Add.ToString()); //检查权限
                if (!DoAdd())
                {
                    JscriptMsg("保存过程中发生错误！", "");
                    return;
                }
                JscriptMsg("添加广告内容信息成功！", "bar_list.aspx?aid=" + this.aid.ToString());
            }
        }

    }
}
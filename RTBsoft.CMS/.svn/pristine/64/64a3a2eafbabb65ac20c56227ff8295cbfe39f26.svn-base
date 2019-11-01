using System;
using System.Data;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RTBcms.Common;

namespace RTBcms.Web.admin.advert
{
    public partial class advert_view : Web.UI.ManagePage
    {
        protected Model.advert model = new Model.advert();
        private int id = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.id = DTRequest.GetQueryInt("id", 0);
            if (this.id < 1)
            {
                base.JscriptMsg("传输参数不正确！", "back");
            }
            else if (!new BLL.advert().Exists(this.id))
            {
                base.JscriptMsg("信息不存在或已被删除！", "back");
            }
            else if (!this.Page.IsPostBack)
            {
                this.model = new BLL.advert().GetModel(this.id);
            }
        }

        protected string GetTypeName(int typeId)
        {
            switch (typeId)
            {
                case 1:
                    return "文字";

                case 2:
                    return "图片";

                case 3:
                    return "幻灯片";

                case 4:
                    return "动画";

                case 5:
                    return "FLV视频";

                case 6:
                    return "代码";
            }
            return "其它";
        }
    }
}
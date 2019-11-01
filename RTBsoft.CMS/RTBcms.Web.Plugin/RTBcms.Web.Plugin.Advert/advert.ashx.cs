using System;
using System.Text;
using System.Data;
using System.Web;
using RTBcms.Common;
using System.Collections.Generic;

namespace RTBcms.Web.Plugin.Advert
{
    public class advert : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            int aid = DTRequest.GetQueryInt("id");

            List<AdvertModel> list = new List<AdvertModel>();
            //获得广告位的ID
            if (aid < 1)
            {
                context.Response.Write(JsonHelper.ObjectToJSON(list));
                return;
            }

            //检查广告位是否存在
            BLL.advert abll = new BLL.advert();
            if (!abll.Exists(aid))
            {
                context.Response.Write(JsonHelper.ObjectToJSON(list));
                return;
            }

            //取得该广告位详细信息
            Model.advert aModel = abll.GetModel(aid);

            //输出该广告位下的广告条,不显示未开始、过期、暂停广告
            BLL.advert_banner bbll = new BLL.advert_banner();
            DataSet ds = bbll.GetList("is_lock=0 and datediff('d',start_time,now())>=0 and datediff('d',end_time,now())<=0 and aid=" + aid);
            if (ds.Tables[0].Rows.Count < 1)
            {
                context.Response.Write(JsonHelper.ObjectToJSON(list));
                return;
            }

            //=================判断广告位类别,输出广告条======================

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                //如果超出限制广告数量，则退出循环
                if (i >= aModel.view_num)
                    break;

                DataRow dr = ds.Tables[0].Rows[i];
                list.Add(new AdvertModel
                {
                    title = dr["title"].ToString().Trim(),
                    content = dr["content"].ToString().Trim(),
                    file_path = dr["file_path"].ToString().Trim(),
                    link_url = dr["link_url"].ToString().Trim()
                });
            }
            context.Response.Write(JsonHelper.ObjectToJSON(list));
        }


        public class AdvertModel
        {
            public string title { get; set; }
            public string file_path { get; set; }
            public string link_url { get; set; }
            public string content { get; set; }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}

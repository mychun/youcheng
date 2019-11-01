using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using RTBcms.Common;
using System.IO;
using System.Data;

namespace RTBcms.Web.tools
{
    /// <summary>
    /// country_ajax 的摘要说明
    /// </summary>
    public class country_ajax : IHttpHandler
    {
        Model.siteconfig siteConfig = new BLL.siteconfig().loadConfig(); //系统配置信息

        public void ProcessRequest(HttpContext context)
        {
            //取得处事类型
            string action = DTRequest.GetParamString("action");

            switch (action)
            {
                case "GetCountry": //加载国家
                    GetCountry(context);
                    break;
                case "SearchCountry": //查询国家
                    SearchCountry(context);
                    break;
            }
        }

        private void GetCountry(HttpContext context)
        {
            string value = string.Empty;
            if (!string.IsNullOrEmpty(siteConfig.countrypath))
            {
                string strCountryPath = HttpContext.Current.Server.MapPath(siteConfig.countrypath);
                if (File.Exists(strCountryPath))
                {
                    DataTable dt = new DataTable("Table");
                    dt.Columns.Add("country_code");
                    dt.Columns.Add("country_cnname");
                    dt.Columns.Add("country_enname");
                    dt.ReadXml(strCountryPath);
                    if (dt != null && dt.Rows.Count > 0)
                    {
                        value = JsonHelper.DataTableToJSON(dt);
                    }
                }
            }
            context.Response.Write(value);
            context.Response.End();
        }

        private void SearchCountry(HttpContext context)
        {
            string condition = DTRequest.GetParamString("condition");
            string value = string.Empty;
            if (!string.IsNullOrWhiteSpace(condition) && !string.IsNullOrEmpty(siteConfig.countrypath))
            {
                string strCountryPath = HttpContext.Current.Server.MapPath(siteConfig.countrypath);
                if (File.Exists(strCountryPath))
                {
                    DataTable dt = new DataTable("Table");
                    dt.Columns.Add("country_code");
                    dt.Columns.Add("country_cnname");
                    dt.Columns.Add("country_enname");
                    dt.ReadXml(strCountryPath);
                    if (dt != null && dt.Rows.Count > 0)
                    {
                        DataTable dtNew = dt.Select(string.Format("country_code='{0}' or country_cnname like '%{0}%' or country_enname like '%{0}%'", Utils.WildEscapes(condition))).CopyToDataTable();
                        value = JsonHelper.DataTableToJSON(dtNew);
                    }
                }
            }
            context.Response.Write(value);
            context.Response.End();
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
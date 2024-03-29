using RTBcms.Common;
using RTBcms.DBUtility;
using RTBcms.Web.Plugin.OnlineService.Model;
using System;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Text;

namespace RTBcms.Web.Plugin.OnlineService.DAL
{
    public class online_service
    {
        private string databaseprefix;

        public online_service(string _databaseprefix)
        {
            this.databaseprefix = _databaseprefix;
        }

        /// <summary>
        /// 得到最大ID
        /// </summary>
        private int GetMaxId(OleDbConnection conn, OleDbTransaction trans)
        {
            string strSql = "select top 1 id from " + databaseprefix + "online_service order by id desc";
            object obj = DbHelperOleDb.GetSingle(conn, trans, strSql);
            if (obj == null)
            {
                return 0;
            }
            else
            {
                return int.Parse(obj.ToString());
            }
        }

        public bool Exists(int id)
        {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.Append("select count(1) from " + this.databaseprefix + "online_service");
            stringBuilder.Append(" where id=@id ");
            OleDbParameter[] parameters = new OleDbParameter[]
			{
				new OleDbParameter("@id", OleDbType.Integer, 4)
			};
            parameters[0].Value = id;
            return DbHelperOleDb.Exists(stringBuilder.ToString(), parameters);
        }

        public int Add(RTBcms.Web.Plugin.OnlineService.Model.online_service model)
        {
            int newId;
            using (OleDbConnection conn = new OleDbConnection(DbHelperOleDb.connectionString))
            {
                conn.Open();
                using (OleDbTransaction trans = conn.BeginTransaction())
                {
                    try
                    {
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.Append("insert into " + this.databaseprefix + "online_service(");
                        stringBuilder.Append("service_template,service_title,sort_id,is_lock,add_time,site_path)");
                        stringBuilder.Append(" values (");
                        stringBuilder.Append("@service_template,@service_title,@sort_id,@is_lock,@add_time,@site_path)");
                        OleDbParameter[] parameters = new OleDbParameter[]
			            {
				            new OleDbParameter("@service_template", OleDbType.VarChar, 100),
				            new OleDbParameter("@service_title", OleDbType.VarChar, 100),
				            new OleDbParameter("@sort_id",  OleDbType.Integer, 4),
				            new OleDbParameter("@is_lock",OleDbType.Integer, 1),
				            new OleDbParameter("@add_time",  OleDbType.Date),
				            new OleDbParameter("@site_path", OleDbType.VarChar, 200)
			            };
                        parameters[0].Value = model.service_template;
                        parameters[1].Value = model.service_title;
                        parameters[2].Value = model.sort_id;
                        parameters[3].Value = model.is_lock;
                        parameters[4].Value = model.add_time;
                        parameters[5].Value = model.site_path;
                        DbHelperOleDb.ExecuteSql(conn, trans, stringBuilder.ToString(), parameters);
                        //取得新插入的ID
                        newId = GetMaxId(conn, trans);
                        trans.Commit();
                    }
                    catch
                    {
                        trans.Rollback();
                        return -1;
                    }
                }
            }
            return newId;
        }

        public void UpdateField(int id, string strValue)
        {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.Append("update " + this.databaseprefix + "online_service set " + strValue);
            stringBuilder.Append(" where id=" + id);
            DbHelperOleDb.ExecuteSql(stringBuilder.ToString());
        }

        public bool Update(RTBcms.Web.Plugin.OnlineService.Model.online_service model)
        {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.Append("update " + this.databaseprefix + "online_service set ");
            stringBuilder.Append("service_template=@service_template,");
            stringBuilder.Append("service_title=@service_title,");
            stringBuilder.Append("sort_id=@sort_id,");
            stringBuilder.Append("is_lock=@is_lock,");
            stringBuilder.Append("add_time=@add_time,");
            stringBuilder.Append("site_path=@site_path");
            stringBuilder.Append(" where id=@id");
            OleDbParameter[] parameters = new OleDbParameter[]
			{
				new OleDbParameter("@service_template", OleDbType.VarChar, 100),
				new OleDbParameter("@service_title", OleDbType.VarChar, 100),
				new OleDbParameter("@sort_id", OleDbType.Integer, 4),
				new OleDbParameter("@is_lock", OleDbType.Integer, 1),
				new OleDbParameter("@add_time", SqlDbType.DateTime),
				new OleDbParameter("@site_path", OleDbType.VarChar, 200),
				new OleDbParameter("@id", OleDbType.Integer, 4)
			};
            parameters[0].Value = model.service_template;
            parameters[1].Value = model.service_title;
            parameters[2].Value = model.sort_id;
            parameters[3].Value = model.is_lock;
            parameters[4].Value = model.add_time;
            parameters[5].Value = model.site_path;
            parameters[6].Value = model.id;
            int rows = DbHelperOleDb.ExecuteSql(stringBuilder.ToString(), parameters);
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool Delete(int id)
        {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.Append("delete from " + this.databaseprefix + "online_service ");
            stringBuilder.Append(" where id=@id");
            OleDbParameter[] parameters = {
					new OleDbParameter("@id", OleDbType.Integer,4)};
            parameters[0].Value = id;
            int rows = DbHelperOleDb.ExecuteSql(stringBuilder.ToString(), parameters);
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public RTBcms.Web.Plugin.OnlineService.Model.online_service GetModel(int id)
        {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.Append("select  top 1 id,service_template,service_title,sort_id,is_lock,add_time,site_path from " + this.databaseprefix + "online_service ");
            stringBuilder.Append(" where id=@id");
            OleDbParameter[] parameters = {
					new OleDbParameter("@id", OleDbType.Integer,4)};
            parameters[0].Value = id;
            RTBcms.Web.Plugin.OnlineService.Model.online_service online_service = new RTBcms.Web.Plugin.OnlineService.Model.online_service();
            DataSet dataSet = DbHelperOleDb.Query(stringBuilder.ToString(), parameters);
            RTBcms.Web.Plugin.OnlineService.Model.online_service result;
            if (dataSet.Tables[0].Rows.Count > 0)
            {
                if (dataSet.Tables[0].Rows[0]["id"] != null && dataSet.Tables[0].Rows[0]["id"].ToString() != "")
                {
                    online_service.id = int.Parse(dataSet.Tables[0].Rows[0]["id"].ToString());
                }
                if (dataSet.Tables[0].Rows[0]["service_template"] != null && dataSet.Tables[0].Rows[0]["service_template"].ToString() != "")
                {
                    online_service.service_template = dataSet.Tables[0].Rows[0]["service_template"].ToString();
                }
                if (dataSet.Tables[0].Rows[0]["service_title"] != null && dataSet.Tables[0].Rows[0]["service_title"].ToString() != "")
                {
                    online_service.service_title = dataSet.Tables[0].Rows[0]["service_title"].ToString();
                }
                if (dataSet.Tables[0].Rows[0]["sort_id"] != null && dataSet.Tables[0].Rows[0]["sort_id"].ToString() != "")
                {
                    online_service.sort_id = int.Parse(dataSet.Tables[0].Rows[0]["sort_id"].ToString());
                }
                if (dataSet.Tables[0].Rows[0]["is_lock"] != null && dataSet.Tables[0].Rows[0]["is_lock"].ToString() != "")
                {
                    online_service.is_lock = int.Parse(dataSet.Tables[0].Rows[0]["is_lock"].ToString());
                }
                if (dataSet.Tables[0].Rows[0]["add_time"] != null && dataSet.Tables[0].Rows[0]["add_time"].ToString() != "")
                {
                    online_service.add_time = DateTime.Parse(dataSet.Tables[0].Rows[0]["add_time"].ToString());
                }
                if (dataSet.Tables[0].Rows[0]["site_path"] != null && dataSet.Tables[0].Rows[0]["site_path"].ToString() != "")
                {
                    online_service.site_path = dataSet.Tables[0].Rows[0]["site_path"].ToString();
                }
                result = online_service;
            }
            else
            {
                result = null;
            }
            return result;
        }

        public DataSet GetList(string strWhere)
        {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.Append("select id,service_template,service_title,sort_id,is_lock,add_time,site_path ");
            stringBuilder.Append(" FROM " + this.databaseprefix + "online_service ");
            if (strWhere.Trim() != "")
            {
                stringBuilder.Append(" where " + strWhere);
            }
            return DbHelperOleDb.Query(stringBuilder.ToString());
        }

        public DataSet GetList(int Top, string strWhere)
        {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.Append("select ");
            if (Top > 0)
            {
                stringBuilder.Append(" top " + Top.ToString());
            }
            stringBuilder.Append(" id,service_template,service_title,sort_id,is_lock,add_time,site_path ");
            stringBuilder.Append(" FROM " + this.databaseprefix + "online_service ");
            if (strWhere.Trim() != "")
            {
                stringBuilder.Append(" where " + strWhere);
            }
            stringBuilder.Append(" order by sort_id asc,add_time desc");
            return DbHelperOleDb.Query(stringBuilder.ToString());
        }

        public DataSet GetList(int pageSize, int pageIndex, string strWhere, string filedOrder, out int recordCount)
        {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.Append("select * FROM " + this.databaseprefix + "online_service");
            if (strWhere.Trim() != "")
            {
                stringBuilder.Append(" where " + strWhere);
            }
            recordCount = Convert.ToInt32(DbHelperOleDb.GetSingle(PagingHelper.CreateCountingSql(stringBuilder.ToString())));
            return DbHelperOleDb.Query(PagingHelper.CreatePagingSql(recordCount, pageSize, pageIndex, stringBuilder.ToString(), filedOrder));
        }
    }
}

using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Data.OleDb;
using RTBcms.DBUtility;
using RTBcms.Common;

namespace RTBcms.DAL
{
    /// <summary>
    /// 数据访问类:管理角色
    /// </summary>
    public partial class manager_role
    {
        private string databaseprefix; //数据库表名前缀
        public manager_role(string _databaseprefix)
        {
            databaseprefix = _databaseprefix;
        }

        #region 基本方法============================
        /// <summary>
        /// 得到最大ID
        /// </summary>
        private int GetMaxId(OleDbConnection conn, OleDbTransaction trans)
        {
            string strSql = "select top 1 id from " + databaseprefix + "manager_role order by id desc";
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

        /// <summary>
        /// 是否存在该记录
        /// </summary>
        public bool Exists(int id)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) from " + databaseprefix + "manager_role");
            strSql.Append(" where id=@id ");
            OleDbParameter[] parameters = {
					new OleDbParameter("@id", OleDbType.Integer,4)};
            parameters[0].Value = id;

            return DbHelperOleDb.Exists(strSql.ToString(), parameters);
        }

        /// <summary>
        /// 返回角色名称
        /// </summary>
        public string GetTitle(int id)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select top 1 role_name from " + databaseprefix + "manager_role");
            strSql.Append(" where id=" + id);
            string title = Convert.ToString(DbHelperOleDb.GetSingle(strSql.ToString()));
            if (string.IsNullOrEmpty(title))
            {
                return "";
            }
            return title;
        }

        /// <summary>
        /// 增加一条数据
        /// </summary>
        public int Add(Model.manager_role model)
        {
            using (OleDbConnection conn = new OleDbConnection(DbHelperOleDb.connectionString))
            {
                conn.Open();
                using (OleDbTransaction trans = conn.BeginTransaction())
                {
                    try
                    {
                        StringBuilder strSql = new StringBuilder();
                        strSql.Append("insert into " + databaseprefix + "manager_role(");
                        strSql.Append("role_name,role_type,is_sys)");
                        strSql.Append(" values (");
                        strSql.Append("@role_name,@role_type,@is_sys)");
                        OleDbParameter[] parameters = {
					            new OleDbParameter("@role_name", OleDbType.VarChar,100),
					            new OleDbParameter("@role_type", OleDbType.Integer,4),
                                new OleDbParameter("@is_sys", OleDbType.Integer,4)};
                        parameters[0].Value = model.role_name;
                        parameters[1].Value = model.role_type;
                        parameters[2].Value = model.is_sys;
                        DbHelperOleDb.ExecuteSql(conn, trans, strSql.ToString(), parameters);
                        //取得新插入的ID
                        model.id = GetMaxId(conn, trans);

                        StringBuilder strSql2;
                        if (model.manager_role_values != null)
                        {
                            foreach (Model.manager_role_value modelt in model.manager_role_values)
                            {
                                strSql2 = new StringBuilder();
                                strSql2.Append("insert into " + databaseprefix + "manager_role_value(");
                                strSql2.Append("role_id,nav_name,action_type)");
                                strSql2.Append(" values (");
                                strSql2.Append("@role_id,@nav_name,@action_type)");
                                OleDbParameter[] parameters2 = {
						                new OleDbParameter("@role_id", OleDbType.Integer,4),
					                    new OleDbParameter("@nav_name", OleDbType.VarChar,100),
					                    new OleDbParameter("@action_type", OleDbType.VarChar,50)};
                                parameters2[0].Value = model.id;
                                parameters2[1].Value = modelt.nav_name;
                                parameters2[2].Value = modelt.action_type;
                                DbHelperOleDb.ExecuteSql(conn, trans, strSql2.ToString(), parameters2);
                            }
                        }
                        trans.Commit();
                    }
                    catch
                    {
                        trans.Rollback();
                        return -1;
                    }
                }
            }
            return model.id;
        }

        /// <summary>
        /// 更新一条数据
        /// </summary>
        public bool Update(Model.manager_role model)
        {
            using (OleDbConnection conn = new OleDbConnection(DbHelperOleDb.connectionString))
            {
                conn.Open();
                using (OleDbTransaction trans = conn.BeginTransaction())
                {
                    try
                    {
                        StringBuilder strSql = new StringBuilder();
                        strSql.Append("update " + databaseprefix + "manager_role set ");
                        strSql.Append("role_name=@role_name,");
                        strSql.Append("role_type=@role_type,");
                        strSql.Append("is_sys=@is_sys");
                        strSql.Append(" where id=@id");
                        OleDbParameter[] parameters = {
					            new OleDbParameter("@role_name", OleDbType.VarChar,100),
					            new OleDbParameter("@role_type", OleDbType.Integer,4),
                                new OleDbParameter("@is_sys", OleDbType.Integer,4),
                                new OleDbParameter("@id", OleDbType.Integer,4)};
                        parameters[0].Value = model.role_name;
                        parameters[1].Value = model.role_type;
                        parameters[2].Value = model.is_sys;
                        parameters[3].Value = model.id;
                        DbHelperOleDb.ExecuteSql(conn, trans, strSql.ToString(), parameters);

                        //先删除该角色所有权限
                        StringBuilder strSql2 = new StringBuilder();
                        strSql2.Append("delete from " + databaseprefix + "manager_role_value where role_id=@role_id ");
                        OleDbParameter[] parameters2 = {
					            new OleDbParameter("@role_id", OleDbType.Integer,4)};
                        parameters2[0].Value = model.id;
                        DbHelperOleDb.ExecuteSql(conn, trans, strSql2.ToString(), parameters2);

                        //添加权限
                        if (model.manager_role_values != null)
                        {
                            StringBuilder strSql3;
                            foreach (Model.manager_role_value modelt in model.manager_role_values)
                            {
                                strSql3 = new StringBuilder();
                                strSql3.Append("insert into " + databaseprefix + "manager_role_value(");
                                strSql3.Append("role_id,nav_name,action_type)");
                                strSql3.Append(" values (");
                                strSql3.Append("@role_id,@nav_name,@action_type)");
                                OleDbParameter[] parameters3 = {
						                new OleDbParameter("@role_id", OleDbType.Integer,4),
					                    new OleDbParameter("@nav_name", OleDbType.VarChar,100),
					                    new OleDbParameter("@action_type", OleDbType.VarChar,50)};
                                parameters3[0].Value = model.id;
                                parameters3[1].Value = modelt.nav_name;
                                parameters3[2].Value = modelt.action_type;
                                DbHelperOleDb.ExecuteSql(conn, trans, strSql3.ToString(), parameters3);
                            }
                        }

                        trans.Commit();
                    }
                    catch
                    {
                        trans.Rollback();
                        return false;
                    }
                }
            }
            return true;
        }

        /// <summary>
        /// 删除一条数据，及子表所有相关数据
        /// </summary>
        public bool Delete(int id)
        {
            Hashtable sqllist = new Hashtable();
            //删除管理角色权限
            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from " + databaseprefix + "manager_role_value ");
            strSql.Append(" where role_id=@role_id");
            OleDbParameter[] parameters = {
					new OleDbParameter("@role_id", OleDbType.Integer,4)};
            parameters[0].Value = id;
            sqllist.Add(strSql.ToString(), parameters);

            //删除管理角色
            StringBuilder strSql2 = new StringBuilder();
            strSql2.Append("delete from " + databaseprefix + "manager_role ");
            strSql2.Append(" where id=@id");
            OleDbParameter[] parameters2 = {
					new OleDbParameter("@id", OleDbType.Integer,4)};
            parameters2[0].Value = id;
            sqllist.Add(strSql2.ToString(), parameters2);

            bool result = DbHelperOleDb.ExecuteSqlTran(sqllist);
            if (result)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public Model.manager_role GetModel(int id)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select  top 1 id,role_name,role_type,is_sys from " + databaseprefix + "manager_role ");
            strSql.Append(" where id=@id");
            OleDbParameter[] parameters = {
					new OleDbParameter("@id", OleDbType.Integer,4)};
            parameters[0].Value = id;

            Model.manager_role model = new Model.manager_role();
            DataSet ds = DbHelperOleDb.Query(strSql.ToString(), parameters);
            if (ds.Tables[0].Rows.Count > 0)
            {
                #region 父表信息
                if (ds.Tables[0].Rows[0]["id"].ToString() != "")
                {
                    model.id = int.Parse(ds.Tables[0].Rows[0]["id"].ToString());
                }
                model.role_name = ds.Tables[0].Rows[0]["role_name"].ToString();
                if (ds.Tables[0].Rows[0]["role_type"].ToString() != "")
                {
                    model.role_type = int.Parse(ds.Tables[0].Rows[0]["role_type"].ToString());
                }
                if (ds.Tables[0].Rows[0]["is_sys"].ToString() != "")
                {
                    model.is_sys = int.Parse(ds.Tables[0].Rows[0]["is_sys"].ToString());
                }
                #endregion

                #region 子表信息
                StringBuilder strSql2 = new StringBuilder();
                strSql2.Append("select id,role_id,nav_name,action_type from " + databaseprefix + "manager_role_value ");
                strSql2.Append(" where role_id=@role_id");
                OleDbParameter[] parameters2 = {
					new OleDbParameter("@role_id", OleDbType.Integer,4)};
                parameters2[0].Value = id;
                DataSet ds2 = DbHelperOleDb.Query(strSql2.ToString(), parameters2);
                if (ds2.Tables[0].Rows.Count > 0)
                {
                    List<Model.manager_role_value> models = new List<Model.manager_role_value>();
                    Model.manager_role_value modelt;
                    foreach (DataRow dr in ds2.Tables[0].Rows)
                    {
                        modelt = new Model.manager_role_value();
                        if (dr["id"].ToString() != "")
                        {
                            modelt.id = int.Parse(dr["id"].ToString());
                        }
                        if (dr["role_id"].ToString() != "")
                        {
                            modelt.role_id = int.Parse(dr["role_id"].ToString());
                        }
                        modelt.nav_name = dr["nav_name"].ToString();
                        modelt.action_type = dr["action_type"].ToString();
                        models.Add(modelt);
                    }
                    model.manager_role_values = models;
                }
                #endregion

                return model;
            }
            else
            {
                return null;
            }
        }

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public DataSet GetList(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select id,role_name,role_type,is_sys ");
            strSql.Append(" FROM " + databaseprefix + "manager_role ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            return DbHelperOleDb.Query(strSql.ToString());
        }

        #endregion  Method
    }
}
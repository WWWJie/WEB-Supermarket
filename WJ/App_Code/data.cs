using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;

/// <summary>
/// Summary description for data
/// </summary>
public class data
{
 
    public string conStr;//连接字符串的路径
    public static OleDbConnection DbConn = null;

    /// <summary>
    /// 根据传入数据库的绝对路径，执行构造函数并初始化连接字符串。
    /// </summary>
    /// <param name="str">传入数据库的绝对路径</param>
    public data(string str)
    {
        conStr = str;
        string dsn = "provider=microsoft.jet.oledb.4.0;data source=|DataDirectory|\\" + str;
        DbConn = new OleDbConnection(dsn);//定义新的数据连接控件并初始化
    }
    public data()
    {
        
        string dsn = "provider=microsoft.jet.oledb.4.0;data source=|DataDirectory|\\thetable.mdb" ;
        DbConn = new OleDbConnection(dsn);//定义新的数据连接控件并初始化
    }

    public string getValue(string strsql)
    {
        string str = "";
        DataTable dt = new DataTable();
        dt = getTable(strsql);
        if (dt != null)
        {
            str = dt.Rows[0][0].ToString();
            dt.Dispose();
        }
        
        return str;
    }

    /// <summary>
    /// 根据传入的sql字符串读出表中的记录
    /// </summary>
    /// <param name="strSql">传入读取的sql字符串</param>
    /// <returns>返回表格</returns>
    public DataTable getTable(string strSql)
    {
        DataTable dd = new DataTable();
        OleDbDataAdapter adapter = new OleDbDataAdapter(strSql, DbConn);//定义并初始化数据适配器
        try
        {
            DbConn.Open();//打开连接

            adapter.Fill(dd);								//将数据适配器中的数据填充到数据集dd中
        }
        catch (Exception ee)
        {
            DbConn.Close();//关闭连接
            adapter.Dispose();
            
            return null;
        }
        DbConn.Close();//关闭连接
        return dd;
    }

    /// <summary>
    /// 根据传入的sql语句执行
    /// </summary>
    /// <param name="strSql">传入的要执行的sql语句</param>
    public string execSql(string strSql)
    {
 
        OleDbCommand comm = new OleDbCommand(strSql, DbConn);//定义并初始化命令对象

        try    //容错功能
        {
            DbConn.Open();//打开连接

            comm.ExecuteNonQuery();//执行命令
        }
        catch (Exception ee)
        {
            DbConn.Close();//关闭连接
            comm.Dispose();
        
            return ee.Message;
        }
        DbConn.Close();//关闭连接
        return "OK";
    }

    #region   参数读写 此处暂时不用
      
    /// <summary>
    /// 参数化执行查询语句，返回DataTable
    /// </summary>
    /// <param name="SQLString">查询语句</param>
    /// <returns>DataTable</returns>
    public static DataTable  getdataQuery(string SQLString, string  strvalue)
    {
        OleDbParameter cmdParms = new  OleDbParameter();
        cmdParms.Value = strvalue;
        DbConn.Open();//打开连接
        OleDbCommand cmd = new OleDbCommand(SQLString, DbConn);
        cmd.Parameters.Add(cmdParms);

        using (OleDbDataAdapter da = new OleDbDataAdapter(cmd))
        {
            DataTable dt = new DataTable();
            try
            {
                da.Fill(dt);
                cmd.Parameters.Clear();
            }
            catch (System.Data.OleDb.OleDbException ex)
            {
                throw new Exception(ex.Message);
            }
            return dt;
        }
         
    }
    #region   简单参数读写 示例
    /// <summary>
    /// 根据参数更新示例，显示如何采用参数法进行更新
    /// </summary>
    /// <param name="stradd"></param>
    /// <returns></returns>
    public int UpdateUser(string stradd)
    {
        int result = 0;
        string[] strvalues = stradd.Split('~');

        //参数方式 
        string sqlstr = "update employee set 编号=@a,姓名=@b,性别=@c,年龄=@d,部门=@e,职务=@f where 编号='" + strvalues[0] + "'";
        OleDbParameter[] _Parameter = new OleDbParameter[] 
            { 
                new OleDbParameter("@a",System.Data.DbType.String), 
                new OleDbParameter("@b",System.Data.DbType.String), 
                new OleDbParameter("@c",System.Data.DbType.String), 
                new OleDbParameter("@d",System.Data.DbType.String), 
                new OleDbParameter("@e",System.Data.DbType.String), 
                new OleDbParameter("@f",System.Data.DbType.String) 
            };
        _Parameter[0].Value = strvalues[0];
        _Parameter[1].Value = strvalues[1];
        _Parameter[2].Value = strvalues[2];
        _Parameter[3].Value = strvalues[3];
        _Parameter[4].Value = strvalues[4];
        _Parameter[5].Value = strvalues[5];
        result = ExecuteCommand(sqlstr, _Parameter);

        ////直接方式
        //string strsql = "update employee set 编号='" + strvalues[1] + "',姓名='" + strvalues[2] + "',性别='" + strvalues[3] + "',年龄='" + strvalues[4]  + "',部门='" + strvalues[5]  + "',职务='" + strvalues[6] + "' where Userid=" + strvalues[0];
        // execSql(strsql);;
        return result;
    }

    public int InsertUser(string stradd)
    {
        int result = 0;
        string[] strvalues = stradd.Split('~');

        //参数方式 
        string sqlstr = "insert into employee (编号,姓名,性别,年龄,部门,职务) values(@a,@b,@c,@d,@e,@f)";
        OleDbParameter[] _Parameter = new OleDbParameter[] 
            { 
                new OleDbParameter("@a",System.Data.DbType.String), 
                new OleDbParameter("@b",System.Data.DbType.String), 
                new OleDbParameter("@c",System.Data.DbType.String), 
                new OleDbParameter("@d",System.Data.DbType.String), 
                new OleDbParameter("@e",System.Data.DbType.String), 
                new OleDbParameter("@f",System.Data.DbType.String) 
            };
        _Parameter[0].Value = strvalues[0];
        _Parameter[1].Value = strvalues[1];
        _Parameter[2].Value = strvalues[2];
        _Parameter[3].Value = strvalues[3];
        _Parameter[4].Value = strvalues[4];
        _Parameter[5].Value = strvalues[5];
        result = ExecuteCommand(sqlstr, _Parameter);

        ////直接方式
        //string strsql = "update employee set 编号='" + strvalues[1] + "',姓名='" + strvalues[2] + "',性别='" + strvalues[3] + "',年龄='" + strvalues[4]  + "',部门='" + strvalues[5]  + "',职务='" + strvalues[6] + "' where Userid=" + strvalues[0];
        // execSql(strsql);;
        return result;
    }
    #endregion 

    public static int ExecuteCommand(string sql, string[] strvalues)
    {
        OleDbParameter[] _Parameter = new OleDbParameter[strvalues.Length];
        string par = "";
        for (int i = 0; i < strvalues.Length; i++)
        {
            par = "@" + Convert.ToChar('a'+i);
            _Parameter[i] = new OleDbParameter(par, System.Data.DbType.String);
            _Parameter[i].Value = strvalues[i];
        }
        return  ExecuteCommand(sql, _Parameter);
 
    }
    public static int ExecuteCommand(string sql, params OleDbParameter[] values)
    {
        string str = "";
        DbConn.Open();
        OleDbCommand cmd = new OleDbCommand(sql, DbConn);
        cmd.Parameters.AddRange(values);
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ee)
        {
            str = ee.Message;
        }
        finally
        {
            DbConn.Close();
        }
        return 1;
    }

    #endregion
}


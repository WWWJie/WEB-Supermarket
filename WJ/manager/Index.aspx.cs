using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data ;

public partial class manager_Index : System.Web.UI.Page
{
    data me = new data();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cx"] != "管理员")
        {
            Response.Write("<script>alert('您没有权限查看后台或未登录！请先登录再试！');</script>");
            Response.Redirect("myindex.aspx");
        }
        else
        {
            string strsql1 = "select * from 王洁_管理员 where 姓名='" + Session["username"] + "'";
            DataTable dt = new DataTable();
            dt = me.getTable(strsql1);
            if (dt.Rows.Count > 0)
            {
                TextBox1.Text = dt.Rows[0]["姓名"].ToString();
                TextBox2.Text = dt.Rows[0]["密码"].ToString();

                TextBox5.Text = dt.Rows[0]["权限类别"].ToString();

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strsql = "update 王洁_管理员 set  ";
        strsql = strsql + " 密码='" + TextBox2.Text + "'";
        
        strsql = strsql + " 权限类别='" + TextBox5.Text + "'";
        strsql = strsql + " where 姓名='" + TextBox1.Text + "'";
        me.execSql(strsql);
        Response.Write("<script>alert('修改成功！');</script>");
    }
    
}
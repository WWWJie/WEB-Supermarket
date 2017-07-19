using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class person : System.Web.UI.Page
{
    data me = new data();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
        }
        else
        {
            if (Session["username"] != null && Session["密码"] != null)
            {
                string strsql1 = "select * from 王洁_会员表 where 姓名='" + Session["username"] + "'";
                DataTable dt = new DataTable();
                dt = me.getTable(strsql1);
                if (dt.Rows.Count > 0)
                {
                    TextBox1.Text = dt.Rows[0]["姓名"].ToString();
                    TextBox2.Text = dt.Rows[0]["密码"].ToString();

                    TextBox4.Text = dt.Rows[0]["地址"].ToString();
                    TextBox5.Text = dt.Rows[0]["联系电话"].ToString();

                }
            }
            else
            {
                Response.Write("<script>alert('请先登录！');</script>");
                Response.Redirect("myindex.aspx");
            }
        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data me = new data();
        string strsql = "update 王洁_会员表 set ";
        strsql = strsql + "姓名='" + TextBox1.Text + "'";
        strsql = strsql + ",密码='" + TextBox2 .Text + "'";
        strsql = strsql + " ,地址='" + TextBox4.Text + "'";
        strsql = strsql + " ,联系电话='" + TextBox5.Text + "'";
        strsql = strsql + " where 姓名='" + TextBox1.Text + "'";
        me.execSql(strsql);
        Response.Write("<script>alert('修改成功！');</script>");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userreg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = string.Empty;
        data me = new data();
        string strsql = "insert into 王洁_会员表(姓名,密码,地址,联系电话) values('" + TextBox1.Text + "'";
        strsql = strsql + ",'" + TextBox2.Text + "'";
        strsql = strsql + ",'" + TextBox3.Text + "'";
        strsql = strsql + ",'" + TextBox4.Text + "'";
        strsql = strsql + ")";
        me.execSql(strsql);
        str = "注册成功，您的会员信息是：<br>";
        str += "用户名为：" + TextBox1.Text + "<br>";
        str += "密码为：" + TextBox2.Text + "<br>";
        str += "地址为：" + TextBox4.Text + "<br>";
        str += "联系电话为：" + TextBox5.Text + "<br>";
        Response.Write("<script>alert('注册成功');</script>");
        TextBox1.Text = null;
        TextBox2.Text = null;
        TextBox4.Text = null;
        TextBox5.Text = null;

        
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class manager_zhaopin_edit : System.Web.UI.Page
{
    data me = new data();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            read_Click(sender, e);
    }
    protected void read_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["ID"] == null)
            return;
        string strsql = "select * from 王洁_招聘 where ID=" + Request.QueryString["ID"].ToString();

        DataTable dt = new DataTable();
        dt = me.getTable(strsql);
        标题.Text = dt.Rows[0]["标题"].ToString();//newstitle,newsfrom,newswriter,ninfo,newsimg
        editor_id.Value = dt.Rows[0]["招聘内容"].ToString();

        


    }
    protected void add_Click(object sender, EventArgs e)
    {
        //data me = new data();
        string strsql = "insert into 王洁_招聘(标题,招聘内容,时间) values(@a,@b,@c)";
        string[] str = new string[7];
       

        str[0] = 标题.Text;
        str[1] = editor_id.Value;
       
        str[2] = DateTime.Now.ToString();

        data.ExecuteCommand(strsql, str);
        ID.Text = me.getValue("select top 1 ID from 王洁_招聘 order by ID desc");//读入刚添加的记录。
        read_Click(sender, e);


    }
    protected void modi_Click(object sender, EventArgs e)
    {

        string strsql = "update 王洁_招聘 set 标题=@a, 招聘内容=@b, 时间=@c where ID=" + ID.Text;
        string[] str = new string[7];
        

        str[0] = 标题.Text;
        str[1] = editor_id.Value;
        
        str[2] = DateTime.Now.ToString();

        data.ExecuteCommand(strsql, str);


        data.ExecuteCommand(strsql, str);
        read_Click(sender, e);
    }
    protected void yulan_Click(object sender, EventArgs e)
    {
        if (ID.Text == "")
        {
            Response.Write("<script>alert('请选择一条记录再预览');</script>");
            return;
        }
        Response.Write("<script>window.open('../Show.aspx?ID=" + ID.Text + "');</script>");
    }
   


}
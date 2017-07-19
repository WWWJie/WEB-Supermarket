using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class manager_newsedit : System.Web.UI.Page
{
    data me = new data();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
            read_Click(sender, e);
    }
    protected void read_Click(object sender, EventArgs e)
    {
        
        string strsql = "select * from 王洁_新闻";
        GridView1.DataSource = me.getTable(strsql);
        GridView1.DataBind();
    }
    protected void add_Click(object sender, EventArgs e)
    {
        //data me = new data();
        string strsql = "insert into 王洁_新闻(类别,标题,内容,图片,时间) values(@a,@b,@c,@d,@e)";
        string[] str = new string[6];
        str[0] = 新闻类别.Text;

        str[1] = 标题.Text;
        str[2] = editor_id.Value;
        str[3] = 图片.Text;
        str[4] = DateTime.Now.ToString();
        data.ExecuteCommand(strsql, str);
        read_Click(sender, e);
    }
    protected void modi_Click(object sender, EventArgs e)
    {

        string strsql = "update 王洁_新闻 set 类别=@a, 标题=@b, 内容=@c, 图片=@d, 时间=@e where ID="+ID.Text;
        string[] str = new string[6];
        str[0] = 新闻类别.Text;
 
        str[1] = 标题.Text;
        str[2] = editor_id.Value;
        str[3] = 图片.Text;
        str[4] =  DateTime.Now.ToString();
       


        data.ExecuteCommand(strsql, str);
        read_Click(sender, e);
    }
    protected void del_Click(object sender, EventArgs e)
    {
        data me = new data();
        string strsql = "delete from 王洁_新闻  where ID=" + ID.Text + "";
        me.execSql(strsql);
        read_Click(sender, e);
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);

        if (e.CommandName == "select")
        {
            GridViewRow row = GridView1.Rows[index];
            
            string strsql = "select * from 王洁_新闻 where ID=" + ID.Text + "";
            DataTable dt = new DataTable();
            dt = me.getTable(strsql);
            新闻类别.Text = dt.Rows[0]["类别"].ToString();
            标题.Text = dt.Rows[0]["标题"].ToString();//newstitle,newsfrom,newswriter,ninfo,newsimg
            图片.Text = dt.Rows[0]["图片"].ToString();
            editor_id.Value = dt.Rows[0]["内容"].ToString();
            //图片.Text = dt.Rows[0]["newsimg"].ToString();


        }
        //if (e.CommandName == "ss")
        //{

        //    学号.Text = "我的测试";

        //}
    }
    protected void GridView1_PageIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        read_Click(sender, e);

    }

}
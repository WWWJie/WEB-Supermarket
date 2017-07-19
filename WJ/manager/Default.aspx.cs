using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class manager_Default : System.Web.UI.Page
{
    data me = new data();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            read_Click(sender, e);
    }
    protected void read_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] == null)
            return;
        string strsql = "select * from mynews where id=" + Request.QueryString["id"].ToString();

        DataTable dt = new DataTable();
        dt = me.getTable(strsql);
        标题.Text = dt.Rows[0]["newstitle"].ToString();//newstitle,newsfrom,newswriter,ninfo,newsimg
        新闻来源.Text = dt.Rows[0]["newsfrom"].ToString();
        添加人.Text = dt.Rows[0]["newswriter"].ToString();
        editor_id.Value = dt.Rows[0]["ninfo"].ToString();
    }
    protected void add_Click(object sender, EventArgs e)
    {
        //data me = new data();
        string strsql = "insert into mynews(newstitle,newsClass,newsfrom,newswriter,ninfo,adddate) values(@a,@b,@c,@d,@e,@f)";
        string[] str = new string[6];
        str[0] = 标题.Text;

        str[1] = 新闻类别.Text;
        str[2] = 新闻来源.Text;
        str[3] = 添加人.Text;
        str[4] = editor_id.Value;
        str[5] = DateTime.Now.ToString();

        data.ExecuteCommand(strsql, str);
        read_Click(sender, e);
    }
    protected void modi_Click(object sender, EventArgs e)
    {

        string strsql = "update mynews set newstitle=@a, newsClass=@b, newsfrom=@c, newswriter=@d, ninfo=@e, adddate=@f where id=" + id.Text;
        string[] str = new string[6];
        str[0] = 标题.Text;

        str[1] = 新闻类别.Text;
        str[2] = 新闻来源.Text;
        str[3] = 添加人.Text;
        str[4] = editor_id.Value;
        str[5] = DateTime.Now.ToString();


        data.ExecuteCommand(strsql, str);
        read_Click(sender, e);
    }
}
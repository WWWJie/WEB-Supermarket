using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manager_zhaopinList : System.Web.UI.Page
{
    data me = new data();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            read_Click(sender, e);
    }

    protected void read_Click(object sender, EventArgs e)
    {

        string strsql = "select * from 王洁_招聘";
        GridView1.DataSource = me.getTable(strsql);
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridView1.Rows[index];
        if (e.CommandName == "select")
        {
            Response.Write("<script>window.open('zhaopin_edit.aspx?id=" + row.Cells[0].Text + "','aa','');</script>");

        }
        if (e.CommandName == "ss")
        {

            string strsql = "delete from 王洁_招聘  where ID=" + row.Cells[0].Text + "";
            me.execSql(strsql);
            read_Click(sender, e);
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        read_Click(sender, e);
    }
}
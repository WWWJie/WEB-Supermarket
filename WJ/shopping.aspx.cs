using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shopping : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void read_Click(object sender, EventArgs e)
    {
        data me = new data();
        string strsql = "select * from 王洁_产品订单表 where 订购人='"+Session["username"]+"'";
        GridView1.DataSource = me.getTable(strsql);
        GridView1.DataBind();
    }
   
    protected void modi_Click(object sender, EventArgs e)
    {
        data me = new data();
        string strsql = "update 王洁_产品订单表 set 产品名称='" + 产品名称.Text + "'";
        strsql = strsql + ",数量='" + 数量.Text + "'";
        strsql = strsql + " ,价格='" + 价格.Text + "'";
        strsql = strsql + ",地址='" + 地址.Text + "'";
        strsql = strsql + " ,订购人='" + 订购人.Text + "'";
        strsql = strsql + ",电话='" + 电话.Text + "'";
        

        strsql = strsql + " where 产品名称='" + 产品名称.Text + "'";
        me.execSql(strsql);
        read_Click(sender, e);
    }
    protected void del_Click(object sender, EventArgs e)
    {
        data me = new data();
        string strsql = "delete from 王洁_产品订单表  where 产品名称='" + 产品名称.Text + "'";
        me.execSql(strsql);
        read_Click(sender, e);
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);

        if (e.CommandName == "select")
        {
            GridViewRow row = GridView1.Rows[index];
            产品名称.Text = row.Cells[1].Text;
            数量.Text = row.Cells[2].Text;
            价格.Text = row.Cells[3].Text;
            地址.Text = row.Cells[5].Text;
            订购人.Text = row.Cells[4].Text;
            电话.Text = row.Cells[5].Text;
        }
        
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        read_Click(sender, e);
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
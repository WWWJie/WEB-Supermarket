using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class products : System.Web.UI.Page
{
    data me;
    protected void Page_Load(object sender, EventArgs e)
    {
        me = new data();
        if (!Page.IsPostBack)
        {
            readdata();

        }
    }
    protected void readdata()
    {
        DataTable dt = new DataTable();
        string strsql;
        strsql = "select top 9 * from 王洁_产品";        
        dt = me.getTable(strsql);


        DataList2.DataSource = dt;
        DataList2.DataBind();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string temp = "";

        if (e.CommandName == "")
        {
            //if (e.Item.FindControl("theID") != null)
            //{
                temp = ((Label)e.Item.FindControl("theID")).Text;
            Response.Write("<script>window.alert('ID=" + temp + "','','');</script>");
            //Response.Write("<script>window.open('Show.aspx?ID=" + temp + "','','');</script>");
            //}
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        string strsql;
        if (DropDownList1.Text == "所有分类")
        {
            strsql = "select top 9 * from 王洁_产品";

        }
        else if (DropDownList1.Text == "陶瓷摆件")
        {
            strsql = "select top 9 * from 王洁_产品 where 类别='陶瓷摆件'";
        }
        else if (DropDownList1.Text == "陶瓷花瓶")
        {
            strsql = "select top 9 * from 王洁_产品 where 类别='陶瓷花瓶'";
        }
        else if (DropDownList1.Text == "陶瓷香薰")
        {
            strsql = "select top 9 * from 王洁_产品 where 类别='陶瓷香薰'";
        }
        else
        {
            strsql = "select top 9 * from 王洁_产品表 where 类别='陶瓷茶具'";
        }
        dt = me.getTable(strsql);


        DataList2.DataSource = dt;
        DataList2.DataBind();
    }

    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
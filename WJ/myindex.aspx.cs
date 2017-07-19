using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class myindex : System.Web.UI.Page
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
        DataTable dt1 = new DataTable();
        DataTable dt2 = new DataTable();
        string strsql1 = "select top 2 * from 王洁_产品 where 类别='陶瓷香薰'";
        dt1 = me.getTable(strsql1);
        string strsql2 = "select top 4 * from 王洁_产品  ";
        dt2 = me.getTable(strsql2);

        DataList1.DataSource = dt2;
        DataList1.DataBind();

        DataList2.DataSource = dt1;
        DataList2.DataBind();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string temp = "";

        if (e.CommandName == "image")
        {
            if (e.Item.FindControl("theID") != null)
            {
                temp = ((Label)e.Item.FindControl("theID")).Text;
                Response.Write("<script>window.open('Show.aspx?ID=" + temp + "','','');</script>");
            }
        }
    }
    
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class ggdetail : System.Web.UI.Page
{
    public string ntitle, ncontent, ndianjilv;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)  //该页意思与 gg_updt.aspx.cs中的完全相似
        {

            string sql;

            DataTable dt = new DataTable();
            data me = new data();


            sql = "select * from 王洁_新闻 where ID=" + Request.QueryString["ID"].ToString().Trim();
            getdata(sql);
        }
    }

    private void getdata(string sql)
    {
        DataTable dt = new DataTable();
        data me = new data();
        dt = me.getTable(sql);
        if (dt != null)
        {
            if (dt.Rows.Count > 0)
            {
                ntitle = dt.Rows[0]["标题"].ToString().Trim();
                ncontent = dt.Rows[0]["内容"].ToString();
            }
        }
    }
}
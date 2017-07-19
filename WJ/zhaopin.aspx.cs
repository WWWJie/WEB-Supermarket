using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class zhaopin : System.Web.UI.Page
{
   
        public string npics, nlinks, ntexts;
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "select top 7 ID,标题,招聘内容,时间 from 王洁_招聘  order by ID desc";
        getdata(sql);
        
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
                DataList1.DataSource = dt;
                DataList1.DataBind();
                DataList2.DataSource = dt;
                DataList2.DataBind();
                DataList3.DataSource = dt;
                DataList3.DataBind();

            }

        }
    }

    
    public string CutStr(object str)
    {
        string strTmp = str.ToString();
        //     截取长度20 
        if (strTmp.Length > 25)
        {
            return strTmp.Substring(0, 23) + "... ";
        }
        else
        {
            return strTmp;
        }
    }

    public string CutStr1(object str)
    {
        string strTmp = str.ToString();
        //     截取长度20 
        if (strTmp.Length > 19)
        {
            return strTmp.Substring(0, 17) + "... ";
        }
        else
        {
            return strTmp;
        }
    }
    public string CutStr_time(object str)
    {
        string strTmp = str.ToString();
        strTmp = strTmp.Substring(0, strTmp.IndexOf(' '));
        return strTmp;
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    
}
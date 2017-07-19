using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class news : System.Web.UI.Page
{
    public string npics, nlinks, ntexts;
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql1 = "select top 7 ID,类别,标题,时间 from 王洁_新闻  order by ID desc";
        getdata(sql1);

        string sql2 = "select top 7 ID,类别,标题,时间 from 王洁_新闻 where 类别='广告'  order by ID desc";
        getdata1(sql2);
        string sql3= "select top 7 ID,类别,标题,时间 from 王洁_新闻 where 类别='热门推荐' order by ID desc";
        getdata2(sql3);
        sql1 = "select top 5 ID,标题,图片 from 王洁_新闻 where  图片<>'' order by ID desc";
        getsyt(sql1);
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
               

            }

        }
    }
    private void getdata1(string sql)
    {
        DataTable dt = new DataTable();
        data me = new data();
        dt = me.getTable(sql);

        if (dt != null)
        {
            if (dt.Rows.Count > 0)
            {
                
                DataList2.DataSource = dt;
                DataList2.DataBind();
                

            }

        }
    }
    private void getdata2(string sql)
    {
        DataTable dt = new DataTable();
        data me = new data();
        dt = me.getTable(sql);

        if (dt != null)
        {
            if (dt.Rows.Count > 0)
            {
                
                DataList3.DataSource = dt;
                DataList3.DataBind();

            }

        }
    }

    private void getsyt(string sql)
    {
        DataTable dt = new DataTable();
        data me = new data();
        dt = me.getTable(sql);
        if (dt != null)
        {
            if (dt.Rows.Count > 0)
            {
                int i = 0;
                for (i = 0; i < dt.Rows.Count; i++)
                {
                    npics = npics + dt.Rows[i]["图片"].ToString().Trim() + "|";
                    nlinks = nlinks + "ggdetail.aspx?ID=" + dt.Rows[i]["ID"].ToString().Trim() + "|";
                    ntexts = ntexts + dt.Rows[i]["标题"].ToString().Trim() + "|";

                }
                npics = npics.Substring(0, npics.Length - 1);
                nlinks = nlinks.Substring(0, nlinks.Length - 1);
                ntexts = ntexts.Substring(0, ntexts.Length - 1);
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
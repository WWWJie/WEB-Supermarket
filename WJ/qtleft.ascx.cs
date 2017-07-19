using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class qtleft : System.Web.UI.UserControl
{
    public string npics, nlinks, ntexts;
    public string ngg;
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql1 = "select top 7 ID,类别,标题,时间 from 王洁_新闻  order by ID desc";
        getdata(sql1);

        string sql2 = "select top 7 ID,标题,招聘内容,时间 from 王洁_招聘  order by ID desc";
        getdata1(sql2); 

        if (Session["username"] != null && Session["密码"] != null)
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
        }
        else
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
        if (!IsPostBack)
        {
            string sql;
           // sql = "select top 8 * from youqinglianjie order by id desc";
           // getdatayqlj(sql);
            //sql = "select content from dx where leibie='系统公告'";
            //DataTable dt = new DataTable();
            //data me = new data();
            //dt = me.getTable(sql);
            //ngg = dt.Rows[0][0].ToString();

            ngg = "陶瓷工艺品起源于我国，在我国的发展历史悠久，从新石器时期印纹陶、彩陶、粗犷质朴的品格，到唐宋陶瓷突飞猛进的发展，五彩缤纷的色釉、釉下彩、白釉的烧造成功，刻画花等多种装饰方法的出现，为陶瓷工艺品的发展开辟了道路，使得陶瓷工艺品发展前景无限广阔。 陶瓷艺术品是一种可观赏，可把玩，可使用，又能够进行投资、收藏的一个艺术品种。陶瓷工艺品以其精巧的装饰美、梦幻的意境美、陶艺的个性美、独特的材质美，形成了现代独有的陶瓷文化，受到了广大人群的喜爱，并且逐渐成为现代人进行投资收藏的首选。";

        }
        
    }
    //private void getdatayqlj(string sql)
    //{
    //    DataTable result = new DataTable();
    //    result = new Class1().hsggetdata(sql);
    //    if (result != null)
    //    {
    //        if (result.Tables[0].Rows.Count > 0)
    //        {
    //            DataGridyqlj.DataSource = result.Tables[0];
    //            DataGridyqlj.DataBind();
    //        }
    //        else
    //        {
    //            DataGridyqlj.DataSource = null;
    //            DataGridyqlj.DataBind();
    //        }
    //    }
    //}
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
        if (strTmp.Length > 15)
        {
            return strTmp.Substring(0, 14) + "... ";
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
        if (strTmp.Length > 15)
        {
            return strTmp.Substring(0, 13) + "... ";
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
    data me = new data();
        protected void Button1_Click(object sender, EventArgs e)
        {
        DataTable dt = new DataTable();
        if (cx.Text == "无")
        {
            dt = me.getTable("select * from 王洁_会员表 where 姓名='" + TextBox1.Text.Replace(" ", "").Replace("'", "") + "' ");

            if (dt.Rows.Count == 0)
            {
                Response.Write("<script>alert('用户名错误');</script>");
            }
            else
            {
                if (dt.Rows.Count > 0)
                {
                    if (dt.Rows[0]["密码"].ToString() != TextBox2.Text)
                        Response.Write("<script>alert('密码错误');</script>");
                    else
                    {
                        Session["username"] = TextBox1.Text;
                        Session["密码"] = TextBox2.Text;
                        Session["cx"] = cx.Text;
                        Response.Redirect("myindex.aspx");
                    }
                }

            }
        }
        else
        {
            dt = me.getTable("select * from 王洁_管理员 where 姓名='" + TextBox1.Text.Replace(" ", "").Replace("'", "") + "' ");
            if (dt.Rows.Count == 0)
            {
                Response.Write("<script>alert('用户名错误');</script>");
            }
            else
            {
                if (dt.Rows.Count > 0)
                {
                    if (dt.Rows[0]["密码"].ToString() != TextBox2.Text)
                        Response.Write("<script>alert('密码错误');</script>");
                    else
                    {
                        Session["username"] = TextBox1.Text;
                        Session["密码"] = TextBox1.Text;
                        Session["cx"] = cx.Text;
                        Response.Redirect("myindex.aspx");
                    }
                }

            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('userreg.aspx','_blank')</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Session["密码"] =null;
        Session["cx"] =null;
        Response.Redirect("myindex.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("person.aspx");
    }


    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void cx_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

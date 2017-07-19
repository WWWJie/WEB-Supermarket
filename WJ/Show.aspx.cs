using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Show : System.Web.UI.Page
{
    data me = new data();
   
    protected void Page_Load(object sender, EventArgs e)
    {
       

        if (Request.QueryString["产品名称"] != null)
        {
            if (Session["username"] != null && Session["密码"] != null)
            {
                string xh = "0";

                xh = Request.QueryString["产品名称"].ToString();
                string strsql1 = "select * from 王洁_会员表 where 姓名='" + Session["username"] + "'";

                string strsql = "select * from 王洁_产品 where 产品名称=" + xh;
                DataTable dt = new DataTable();
                DataTable dt1 = new DataTable();
                dt = me.getTable(strsql);
                dt1 = me.getTable(strsql1);
                if (dt.Rows.Count > 0)
                {
                    Label1.Text = dt.Rows[0]["产品名称"].ToString();
                    Label2.Text = dt.Rows[0]["介绍"].ToString();
                    Label3.Text = dt.Rows[0]["库存"].ToString();
                    Label5.Text = dt1.Rows[0]["电话"].ToString();
                    Label4.Text = dt.Rows[0]["价格"].ToString();
                    Label6.Text = dt1.Rows[0]["地址"].ToString();
                    Label7.Text = dt1.Rows[0]["姓名"].ToString();
                    Image1.ImageUrl = dt1.Rows[0]["图片"].ToString();
                }
            }
            else
            {
                Response.Write("<script>alert('请先登录！');</script>");
                Response.Redirect("myindex.aspx");
            }

        }

        if (Request.QueryString["ID"] != null)
        {


            if (Session["username"] != null && Session["密码"] != null)
            {
                string xh = "0";
                data me = new data();
                xh = Request.QueryString["id"].ToString();
                string strsql1 = "select * from 王洁_会员表 where 姓名='" + Session["username"] + "'";

                string strsql = "select * from 王洁_产品 where ID=" + xh;
                DataTable dt = new DataTable();
                DataTable dt1 = new DataTable();
                dt = me.getTable(strsql);
                dt1 = me.getTable(strsql1);
                if (dt.Rows.Count > 0)
                {
                    Label1.Text = dt.Rows[0]["产品名称"].ToString();
                    Label2.Text = dt.Rows[0]["介绍"].ToString();
                    Label3.Text = dt.Rows[0]["库存"].ToString();
                    Label5.Text = dt1.Rows[0]["联系电话"].ToString();
                    Label4.Text = dt.Rows[0]["价格"].ToString();
                    Label6.Text = dt1.Rows[0]["地址"].ToString();
                    Label7.Text = dt1.Rows[0]["姓名"].ToString();
                   Image1.ImageUrl = dt.Rows[0]["图片"].ToString();
                }
            }
            else
            {

                string xh1 = "0";
                data me1 = new data();
                xh1 = Request.QueryString["ID"].ToString();



                string strsql = "select * from 王洁_产品 where ID=" + xh1;
                DataTable dt1 = new DataTable();

                dt1 = me1.getTable(strsql);

                if (dt1.Rows.Count > 0)
                {
                    Label1.Text = dt1.Rows[0]["产品名称"].ToString();
                    Label2.Text = dt1.Rows[0]["介绍"].ToString();
                    Label3.Text = dt1.Rows[0]["库存"].ToString();
                    //Label5.Text = dt.Rows[0]["电话"].ToString();
                    Label4.Text = dt1.Rows[0]["价格"].ToString();
                    //Label6.Text = dt.Rows[0]["地址"].ToString();
                    //Label7.Text = dt.Rows[0]["姓名"].ToString();
                    Image1.ImageUrl = dt1.Rows[0]["图片"].ToString();
                    
                    

                }
               
            }


        }


    }
   
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        data me = new data();
        int yunakucun = 0;
        if (Session["username"] != null && Session["密码"] != null)
        {
            string strsql = "select 库存 from 王洁_产品" + " where 产品名称='" + Label1.Text + "'";//读取数据的SQL语句
            DataTable dt = new DataTable();
            dt = me.getTable(strsql);//调用读数据的函数进行读，并把读取的表返回。
            string strsql1 = "insert into 王洁_产品订单表(产品名称,数量,价格,地址,订购人,电话) values('" + Label1.Text + "'";

            strsql1 = strsql1 + ",'" + int.Parse(TextBox1.Text) + "'";
            strsql1 = strsql1 + ",'" + Label4.Text + "'";
            strsql1 = strsql1 + ",'" + Label6.Text + "'";
            strsql1 = strsql1 + ",'" + Label7.Text + "'";
            strsql1 = strsql1 + ",'" +  Label5.Text+ "'";
            strsql1 = strsql1 + ")";
            me.execSql(strsql1);


            yunakucun = int.Parse(Label3.Text);
            int Kucunshuliang = yunakucun - int.Parse(TextBox1.Text);
            strsql = "update 王洁_产品  set 库存=" + Kucunshuliang + " where 产品名称='" + Label1.Text + "'";

            me.execSql(strsql);
            Response.Write("<script>alert('下单成功！');</script>");
        
            

        }
        


    }

    
}
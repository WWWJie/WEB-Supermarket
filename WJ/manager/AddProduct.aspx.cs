using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class manager_AddProduct : System.Web.UI.Page
{
    data me = new data();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            read_Click(sender, e);
    }
    protected void read_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["ID"] == null)
            return;
        string strsql = "select * from 王洁_产品 where ID=" + Request.QueryString["ID"].ToString();

        DataTable dt = new DataTable();
        dt = me.getTable(strsql);
        类别.Text = dt.Rows[0]["类别"].ToString();
        产品名称.Text = dt.Rows[0]["产品名称"].ToString();//newstitle,newsfrom,newswriter,ninfo,newsimg
        库存.Text = dt.Rows[0]["库存"].ToString();
        价格.Text = dt.Rows[0]["价格"].ToString();
        类别.Text = dt.Rows[0]["类别"].ToString();
        editor_id.Value = dt.Rows[0]["介绍"].ToString();

        图片.Text = dt.Rows[0]["图片"].ToString();


    }
    protected void add_Click(object sender, EventArgs e)
    {
        //data me = new data();
        string strsql = "insert into 王洁_产品(产品名称,介绍,库存,价格,图片,类别) values(@a,@b,@c,@d,@e,@f)";
        string[] str = new string[6];
        str[0] = 产品名称.Text;

        str[1] = editor_id.Value;
        str[2] = 库存.Text;
        str[3] = 价格.Text;
        str[4] = 图片.Text;
        str[5] = 类别.Text;
        data.ExecuteCommand(strsql, str);
        ID.Text = me.getValue("select top 1 ID from 王洁_产品 order by ID desc");//读入刚添加的记录。
        read_Click(sender, e);


    }
    protected void modi_Click(object sender, EventArgs e)
    {

        string strsql = "update 王洁_产品 set 产品名称=@a, 介绍=@b, 库存=@c, 价格=@d, 图片=@e,类别=@f where ID=" + ID.Text;
        string[] str = new string[7];
        str[0] = 产品名称.Text;
        str[1] = editor_id.Value;
        str[2] = 库存.Text;
        str[3] = 价格.Text;
        str[4] = 图片.Text;
        str[5] = 类别.Text;

        data.ExecuteCommand(strsql, str);


        
        read_Click(sender, e);
    }
    protected void yulan_Click(object sender, EventArgs e)
    {
        if (ID.Text == "")
        {
            Response.Write("<script>alert('请选择一条记录再预览');</script>");
            return;
        }
        Response.Write("<script>window.open('../Show.aspx?ID=" + ID.Text + "');</script>");
    }
    protected void nUp_Click(object sender, EventArgs e)
    {
        //方法1：
        if (FileUpload1.PostedFile.FileName != "")
        {
            FileInfo file = new FileInfo(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~") + "\\uploadFiles\\" + file.Name);
            图片.Text = "~/uploadFiles/" + file.Name;
        }

        //方法2：
        /*
        if (FileUpload1.HasFile)
        {
            string name = FileUpload1.PostedFile.FileName; // 客户端文件路径        
            FileInfo file = new FileInfo(name);
            string fileName = file.Name; // 文件名称
            string webFilePath = Server.MapPath("uploadFiles/" + fileName); // 服务器端文件路径
            string fileContentType = FileUpload1.PostedFile.ContentType;
            if (fileContentType == "image/bmp" || fileContentType == "image/gif" || fileContentType == "image/pjpeg")
            {
                if (!File.Exists(webFilePath))
                {
                    try
                    {
                        FileUpload1.SaveAs(webFilePath); // 使用 SaveAs 方法保存文件
                        Label1.Visible = true;

                        Label1.Text = "文件“" + fileName + "”成功上传，" + "文件大小为：" + FileUpload1.PostedFile.ContentLength + "字节";

                        图片.Text = "~/uploadFiles/" + fileName;
                    }
                    catch (Exception ex)
                    {
                        Label1.Visible = true;
                        Label1.Text = "文件上传失败，失败原因：" + ex.Message;
                    }
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "文件已经存在，请重命名后上传";
                }
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "文件类型不符，只能上传*.bmp、*.jpg、*.gif类型的文件";
            }
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "请选择文件或输入文件路径及名称！";
        }
         */
    }
}
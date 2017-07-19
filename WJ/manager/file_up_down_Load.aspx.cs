using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class manager_file_up_down_Load : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void myftp_Click(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile)
        {
            using (System.Net.WebClient client = new System.Net.WebClient())
            {
                string filename = FileUpload2.PostedFile.FileName.Substring(FileUpload2.PostedFile.FileName.LastIndexOf('\\')+1);

                client.Credentials = new System.Net.NetworkCredential("temp", "temp");
                client.UploadFile(ftpTextBox.Text + "/" + filename, FileUpload2.PostedFile.FileName);
                Label1.Text = "上传成功："+FileUpload2.PostedFile.FileName;
                HyperLink1.NavigateUrl = "ftp://temp:temp@10.22.128.130/" + filename;
                HyperLink1.Text = ftpTextBox.Text + "/" + filename;

            }
        }
    }
    protected void downftp_Click(object sender, EventArgs e)
    {
        using (System.Net.WebClient client = new System.Net.WebClient())
        {
            client.DownloadFile("ftp://temp:temp@10.22.128.130/" + downfilename.Text, "c:\\" + downfilename.Text);
            //client.DownloadFile("http://www.baidu.com", "c:\\" + downfilename.Text);
            //使用命令ftp://username:password@hostname:port
        }
    }

    protected void nUp_Click(object sender, EventArgs e)
    {
        //上传到本网站uploadFiles目录下。
        if (FileUpload1.HasFile)
        {

            FileInfo file = new FileInfo(FileUpload1.PostedFile.FileName);
            string webfile = Server.MapPath("~") + "\\uploadFiles\\" + file.Name;
            FileUpload1.SaveAs(webfile);


            图片.Text = "~/uploadFiles/" + file.Name;
            HyperLink1.NavigateUrl = "~/uploadFiles/" + file.Name;
            HyperLink1.Text = "~/uploadFiles/" + file.Name;
        }
    }
    protected void backdown_Click(object sender, EventArgs e)
    {
        using (System.Net.WebClient client = new System.Net.WebClient())
        {
            client.DownloadFile(getRootPath() + "/uploadfiles/" + downfilename.Text, "c:\\" + downfilename.Text);
            //client.DownloadFile("http://www.baidu.com", "c:\\" + downfilename.Text);
        }
    }

    private void getwebfromurl()
    {
       // 用 DownloadData 或 OpenRead 抓取网页
        using (System.Net.WebClient client = new System.Net.WebClient())
        {
            byte[] bytes = client.DownloadData("http://www.cftea.com/");
            string str = (System.Text.Encoding.GetEncoding("gb2312").GetString(bytes));
            //对str进行其它操作。。。。。
        }


        //我们将抓取来的网页赋给变量 str，任由我们使用。也可以用 OpenRead 方法来获取数据流。
        using (System.Net.WebClient client = new System.Net.WebClient())
        {
            using (System.IO.Stream stream = client.OpenRead("http://www.cftea.com/"))
            {
                using (System.IO.StreamReader reader = new System.IO.StreamReader(stream, System.Text.Encoding.GetEncoding("gb2312")))
                {
                    string str = reader.ReadToEnd();
                    reader.Close();
                    //对str进行其它操作。。。。。
                }
                stream.Close();
            }
        }
    }

    
    /// <summary>   
    /// 系统的根目录   
    /// </summary>   
    public string getRootPath()
    {
        string _RootPath;
        
        // 根目录虚拟路径
        _RootPath = this.Page.Request.Url.Authority + this.Page.Request.ApplicationPath;


        return "http://" + _RootPath;

    }

}
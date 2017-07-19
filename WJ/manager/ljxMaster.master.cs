using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manager_ljxMaster : System.Web.UI.MasterPage
{
    public string accountsHtml;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["用户名"] != null)
        {

            accountsHtml = "<span class=\"yellow\">" + Session["用户名"].ToString() + "</span>";
        }
        //else
        //{
        //    Response.Redirect("/Login/AdminLogin.aspx");
        //}
    }
}

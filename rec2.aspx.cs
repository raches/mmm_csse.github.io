using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class rec1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Username"] != null)
        {
            Label1.Text = Session["Username"].ToString();
        }
        else
        {
            Response.Redirect("~/login.aspx");
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "OpenWindow", "window.open('cngpass.aspx','Change_Password');", true);
        //Server.Transfer("~/cngpass.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/login.aspx");
    }
}
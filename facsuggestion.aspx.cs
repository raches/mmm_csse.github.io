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
        if (Session["Username"] != null)
        {
            //Label1.Text = Session["Username"].ToString();
        }
        else
        {
            Response.Redirect("tlogin.aspx");
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/reg.aspx");
    }
}

//select * from idea
//create proc spSug
//@Name nvarchar (50),
//@Email nvarchar (50),
//@Comment nvarchar (200)

//as
//Begin

//    Select Id
//    from idea
//    Begin
//        Insert into idea values
//        (@Name, @Email, @Comment, GETDATE())
//    End
//End
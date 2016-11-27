using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Data;

public partial class cngpass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["Username"] != null)
        {
            //Label1.Text = Session["Username"].ToString();
        }
        else
        {
            Response.Redirect("~/login.aspx");
        }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if(Password.Text.Length == 0 || NewPassword.Text == string.Empty)
        {
            Label2.Visible = true;
            Label2.Text = "Please Provide Correct Inputs";
            Label2.ForeColor = System.Drawing.Color.Red;
        }
        else if (NewPassword.Text != TextBox1.Text)
        {
            Label2.Visible = true;
            Label2.Text = "Entered Password Mismatch";
            Label2.ForeColor = System.Drawing.Color.Red;
            NewPassword.Text = "";
            TextBox1.Text = "";
        }

         else if (changepassword(Password.Text, NewPassword.Text))
        {
            Label2.Visible = true;
            Label2.Text = "Password Changed Successfully.";
            Label2.ForeColor = System.Drawing.Color.Green;
            
        }
        else if(changepassword1(Password.Text, NewPassword.Text))
        {
            Label2.Visible = true;
            Label2.Text = "Password Changed Successfully .";
            Label2.ForeColor = System.Drawing.Color.Green;
        }

        else
        {
            Label2.Visible = true;
            Label2.Text = "Current Password Is In-Correct.";
            Label2.ForeColor = System.Drawing.Color.Red;
        }
    }

    private bool changepassword(string Password, string NewPassword)
    {
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("spchange", con);
            cmd.CommandType = CommandType.StoredProcedure;

            string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(Password, "SHA1");
            string EncryptedPassword1 = FormsAuthentication.HashPasswordForStoringInConfigFile(NewPassword, "SHA1");
            SqlParameter paramPassword = new SqlParameter("@Password", EncryptedPassword);
            SqlParameter paramNewPassword = new SqlParameter("@NewPassword", EncryptedPassword1);

            cmd.Parameters.Add(paramPassword);
            cmd.Parameters.Add(paramNewPassword);

            con.Open();
            int ReturnCode = (int)(cmd.ExecuteScalar());
            return ReturnCode == 1;
        }
    }

    private bool changepassword1(string Password1, string NewPassword1)
    {
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("spcng", con);
            cmd.CommandType = CommandType.StoredProcedure;

            string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(Password1, "SHA1");
            string EncryptedPassword1 = FormsAuthentication.HashPasswordForStoringInConfigFile(NewPassword1, "SHA1");
            SqlParameter paramPassword = new SqlParameter("@Password", EncryptedPassword);
            SqlParameter paramNewPassword = new SqlParameter("@NewPassword", EncryptedPassword1);

            cmd.Parameters.Add(paramPassword);
            cmd.Parameters.Add(paramNewPassword);

            con.Open();
            int ReturnCode = (int)(cmd.ExecuteScalar());
            return ReturnCode == 1;
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/index.aspx");
    }
}

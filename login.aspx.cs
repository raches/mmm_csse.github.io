using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

public partial class Default2 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

  

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (AuthenticateUser(UserName.Text, Password.Text))
        {
            if(CheckBox1.Checked == true)
            {
            Session["Username"] = UserName.Text;
            Response.Redirect("~/rec1.aspx");
            }

            else if (CheckBox2.Checked == true)
            {
                Session["Username"] = UserName.Text;
                Response.Redirect("~/rec2.aspx");
            }

            else if (CheckBox3.Checked == true)
            {
                Session["Username"] = UserName.Text;
                Response.Redirect("~/rec3.aspx");
            }
        }

        else if(AuthenticateUser1(UserName.Text, Password.Text) && CheckBox1.Checked == true)
        {
            Session["Username"] = UserName.Text;
            Response.Redirect("~/tre1.aspx");
        }
        else if (AuthenticateUser1(UserName.Text, Password.Text) && CheckBox2.Checked == true)
        {
            Session["Username"] = UserName.Text;
            Response.Redirect("~/tre2.aspx");
        }
        else if (AuthenticateUser1(UserName.Text, Password.Text) && CheckBox3.Checked == true)
        {
            Session["Username"] = UserName.Text;
            Response.Redirect("~/tre2.aspx");
        }
        else
        {
            Label1.Visible =true;
            Label1.Text = "Invalid User Name or Password";
        }

    }

    private bool AuthenticateUser(string UserName, string Password)
    {
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("spAuthenticateUser", con);
            cmd.CommandType = CommandType.StoredProcedure;

            String EncryptesPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(Password, "SHA1");
            SqlParameter paramUsername = new SqlParameter("@UserName", UserName);
            SqlParameter paramPassword = new SqlParameter("@Password", EncryptesPassword);

            cmd.Parameters.Add(paramUsername);
            cmd.Parameters.Add(paramPassword);

            con.Open();
            int ReturnCode = (int)(cmd.ExecuteScalar());
            return ReturnCode == 1;
        }
    }

    private bool AuthenticateUser1(string UserName1, string Password1)
    {
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("spAuthenticateUser1", con);
            cmd.CommandType = CommandType.StoredProcedure;

            String EncryptesPassword1 = FormsAuthentication.HashPasswordForStoringInConfigFile(Password1, "SHA1");
            SqlParameter paramUsername = new SqlParameter("@UserName", UserName1);
            SqlParameter paramPassword = new SqlParameter("@Password", EncryptesPassword1);

            cmd.Parameters.Add(paramUsername);
            cmd.Parameters.Add(paramPassword);

            con.Open();
            int ReturnCode = (int)(cmd.ExecuteScalar());
            return ReturnCode == 1;
        }
    }
}
//username=anand,password=dubey
//username=abdul,password=1234
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

public partial class login_forms_tlogin : System.Web.UI.Page
{
    //string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    BindGridviewData();
        //}
    }
    //// Bind Gridview Data
    //private void BindGridviewData()
    //{
    //    SqlConnection con = new SqlConnection(cs);
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("select * from notice", con);
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    DataSet ds = new DataSet();
    //    da.Fill(ds);
    //    con.Close();
    //    gvDetails.DataSource = ds;
    //    gvDetails.DataBind();
    //}

    //protected void lnkDownload_Click(object sender, EventArgs e)
    //{
    //    LinkButton lnkbtn = sender as LinkButton;
    //    GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
    //    string filePath = gvDetails.DataKeys[gvrow.RowIndex].Value.ToString();
    //    Response.ContentType = "image/jpg";
    //    Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
    //    Response.TransmitFile(Server.MapPath(filePath));
    //    Response.End();
    //}

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (AuthenticateUser(UserName.Text, Password.Text))
        {
            Session["Username"] = UserName.Text;
            Response.Redirect("~/reg.aspx");
        }

        else if(AuthenticateUser1(UserName.Text, Password.Text))
        {
            Session["Username"] = UserName.Text;
            Response.Redirect("~/reg1.aspx");
        }
        else
        {
            Label2.Visible = true;
            Label2.Text = "Invalid User Name or Password";

        }

    }

    private bool AuthenticateUser(string UserName, string Password)
    {
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("spa", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter paramUsername = new SqlParameter("@UserName", UserName);
            SqlParameter paramPassword = new SqlParameter("@Password", Password);

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
            SqlCommand cmd = new SqlCommand("spa1", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter paramUsername = new SqlParameter("@UserName", UserName1);
            SqlParameter paramPassword = new SqlParameter("@Password", Password1);

            cmd.Parameters.Add(paramUsername);
            cmd.Parameters.Add(paramPassword);

            con.Open();
            int ReturnCode = (int)(cmd.ExecuteScalar());
            return ReturnCode == 1;
        }
    }
}
//username=tre,password=tre
//username=secretary,password=secretary
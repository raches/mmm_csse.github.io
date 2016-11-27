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
using System.IO;

public partial class login_forms_tlogin : System.Web.UI.Page
{
    string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
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
        if (!IsPostBack)
        {
            BindGridviewData();
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (UserName.Text == string.Empty || Password.Text.Length == 0)
        {
            Label2.Visible = true;
            Label2.Text = "Please Provide Correct Inputs";
        }

        else if (Password.Text != TextBox1.Text)
        {
            Label2.Visible = true;
            Label2.Text = "Entered Password Mismatch";
        }

        else if (AuthenticateUser(UserName.Text, Password.Text))
        {
            Session["Username"] = UserName.Text;
            Label2.Visible = true;
            Label2.Text = "User Created Successfully";
            Session.RemoveAll();
        }
        else
        {
            Label2.Visible = true;
            Label2.Text = "User Name Already Taken, Please Choose Another User Name";
        }
    }

    private void Remove(string p)
    {
        throw new NotImplementedException();
    }

    private bool AuthenticateUser(string UserName, string Password)
    {
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("spreg", con);
            cmd.CommandType = CommandType.StoredProcedure;

            string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(Password, "SHA1");
            SqlParameter paramUsername = new SqlParameter("@UserName", UserName);
            SqlParameter paramPassword = new SqlParameter("@Password", EncryptedPassword);

            cmd.Parameters.Add(paramUsername);
            cmd.Parameters.Add(paramPassword);

            con.Open();
            int ReturnCode = (int)(cmd.ExecuteScalar());
            return ReturnCode == 1;
        }
    }

    private void BindGridviewData()
    {
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from notice", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        gvDetails.DataSource = ds;
        gvDetails.DataBind();
    }
    // Save files to Folder and files path in database
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (fileUpload1.HasFile)
        {
            SqlConnection con = new SqlConnection(cs);
            string filename = Path.GetFileName(fileUpload1.PostedFile.FileName);

            fileUpload1.SaveAs(Server.MapPath("~/notice/" + filename));
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into notice(Detail, Name,FilePath) values(@Detail,@Name,@FilePath)", con);
            cmd.Parameters.AddWithValue("@Detail", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Name", filename);
            cmd.Parameters.AddWithValue("@FilePath", "~/notice/" + filename);
            cmd.ExecuteNonQuery();
            Label3.Text = "File Uploaded Successfully";
            con.Close();
            BindGridviewData();
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        else
        {
            SqlConnection con = new SqlConnection(cs);
            Label3.Text = "Please Select a File.";
        }
    }
    // This button click event is used to download files from gridview
    protected void lnkDownload_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtn = sender as LinkButton;
        GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
        string filePath = gvDetails.DataKeys[gvrow.RowIndex].Value.ToString();
        Response.ContentType = "image/jpg";
        Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
        Response.TransmitFile(Server.MapPath(filePath));
        Response.End();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/facsuggestion.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/tlogin.aspx");
    }
}
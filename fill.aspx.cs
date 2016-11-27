using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

public partial class fill : System.Web.UI.Page
{
    string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        string body = TextArea1.Value;
        if (TextBox1.Text != string.Empty || Name.Text.Length != 0 || body.Length != 0)
        {
            SqlCommand cmd = new SqlCommand("Insert into idea (Name, Email, Comment) VALUES('" + Name.Text + "','" + TextBox1.Text + "', '" + body + "')", con);
            Label2.Visible = true;
            Label2.Text = "Row Inserted Successfully";
            Label2.ForeColor = System.Drawing.Color.Green;
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("~/fill.aspx");
            con.Close();
        }
        else
        {
            Label2.Visible = true;
            Label2.Text = "Please Fill all the Fields.";
        }
    }

    //private bool suggestion(string Name, string Email, string Comment)
    //{
    //    string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

    //    using (SqlConnection con = new SqlConnection(CS))
    //    {
    //        SqlCommand cmd = new SqlCommand("spSug", con);
    //        cmd.CommandType = CommandType.StoredProcedure;

    //        SqlParameter paramName = new SqlParameter("@Name", Name);
    //        SqlParameter paramEmail = new SqlParameter("@Email", Email);
    //        SqlParameter paramComment = new SqlParameter("@Comment", Comment);

    //        cmd.Parameters.Add(paramName);
    //        cmd.Parameters.Add(paramEmail);
    //        cmd.Parameters.Add(paramComment);

    //        con.Open();
    //        int ReturnCode = Convert.ToInt32(cmd.ExecuteScalar());
    //        return ReturnCode == 1;
    //    }
    //}
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/index.aspx");
    }
}
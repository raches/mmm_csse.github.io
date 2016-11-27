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
using System.IO;

public partial class Index : System.Web.UI.Page
{
    string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridviewData();
        }
    }

    // Bind Gridview Data
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

    //protected void GridView1_RowCommand(object sender,
    //GridViewCommandEventArgs e)
    //{
    //    Response.Clear();
    //    Response.ContentType = "application/octet-stream";
    //    Response.AppendHeader("Content-Disposition", "filename="
    //        + e.CommandArgument);
    //    Response.TransmitFile(Server.MapPath("~/notice/")
    //        + e.CommandArgument);
    //    Response.End();
    //}



}
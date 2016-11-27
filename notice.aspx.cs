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
            //Response.Redirect("~/login.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentLength < 20971520)
            {
                string fileName = FileUpload1.FileName;
                FileUpload1.PostedFile
                    .SaveAs(Server.MapPath("~/notice/") + fileName);
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "Size-Limit Exceeded.";
            }
        }

        DataTable dt = new DataTable();
        dt.Columns.Add("File");
        dt.Columns.Add("Size");
        dt.Columns.Add("Type");

        foreach (string strfile in Directory.GetFiles(Server.MapPath("~/notice")))
        {
            FileInfo fi = new FileInfo(strfile);
            dt.Rows.Add(fi.Name, fi.Length.ToString(),
                GetFileTypeByExtension(fi.Extension));
        }

        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    private string GetFileTypeByExtension(string fileExtension)
    {
        switch (fileExtension.ToLower())
        {
            case ".docx":
            case ".doc":
                return "Microsoft Word Document";
            case ".xlsx":
            case ".xls":
                return "Microsoft Excel Document";
            case ".txt":
                return "Text Document";
            case ".pdf":
                return "Pdf";
            default:
                return "Unknown";
        }
    }

    protected void GridView1_RowCommand(object sender,
    GridViewCommandEventArgs e)
    {
        Response.Clear();
        Response.ContentType = "application/octet-stream";
        Response.AppendHeader("Content-Disposition", "filename="
            + e.CommandArgument);
        Response.TransmitFile(Server.MapPath("~/notice/")
            + e.CommandArgument);
        Response.End();
    }
}
        //if (FileUpload1.HasFile)
        //{

        //    string contentType = FileUpload1.PostedFile.ContentType;
        //    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);


        //    string cs = System.Configuration.ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        //    SqlConnection con = new SqlConnection(cs);
        //    Stream fs = FileUpload1.PostedFile.InputStream;
        //    BinaryReader br = new BinaryReader(fs);
        //    byte[] bytes = br.ReadBytes((Int32)fs.Length);

        //    string query = "insert into notice values (@Detail, @Name, @File, @Size)";
        //    using (SqlCommand cmd = new SqlCommand(query))
        //    {

        //        cmd.Connection = con;
        //        cmd.Parameters.AddWithValue("@Detail", TextBox1.Text);
        //        cmd.Parameters.AddWithValue("@Name", filename);
        //        cmd.Parameters.AddWithValue("@File", contentType);
        //        cmd.Parameters.AddWithValue("@Size", bytes);
        //        con.Open();
        //        cmd.ExecuteNonQuery();

        //        Label2.Visible = true;
        //        Label2.Text = "File Uploaded Successfully";
        //        con.Close();
        //    }

        //}
        //else
        //{
        //    Label2.Visible = true;
        //    Label2.Text = "Not Found";
        //}
        //Response.Redirect(Request.Url.AbsoluteUri);


    //<hr />
    //<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
    //    <Columns>
    //        <asp:BoundField DataField="Name" HeaderText="File Name" />
    //        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
    //            <ItemTemplate>
    //                <asp:LinkButton ID="lnkView" runat="server" Text="View"  CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>
    //            </ItemTemplate>
    //        </asp:TemplateField>
    //    </Columns>
    //</asp:GridView>
    //<hr />

    //Add the following code to the Gridview selected index changed event to download the files:


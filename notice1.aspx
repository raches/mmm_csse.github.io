<%@ Page Language="C#" AutoEventWireup="true" CodeFile="notice1.aspx.cs" Inherits="cngpass" %>

<!DOCTYPE html>
 <html xmlns="http://www.w3.org/1999/xhtml">
                        <head runat="server">
                        <title>Save and Download Files from file system</title>
                            <link rel="stylesheet" type="text/css" href="./css/style.css">
                        <style type="text/css">
                        .modalBackground
                        {
                        background-color: Gray;
                        filter: alpha(opacity=80);
                        opacity: 0.8;
                        z-index: 10000;
                        }

                        .GridviewDiv {font-size: 100%; font-family: 'Lucida Grande', 'Lucida Sans Unicode', Verdana, Arial, Helevetica, sans-serif; color: cadetblue;}
                        Table.Gridview{border:solid 1px cadetblue;}
                        .Gridview th{color:#FFFFFF;border-right-color:#abb079;border-bottom-color:#abb079;padding:0.5em 0.5em 0.5em 0.5em;text-align:center}
                        .Gridview td{border-bottom-color:#f0f2da;border-right-color:#f0f2da;padding:0.5em 0.5em 0.5em 0.5em;}
                        .Gridview tr{color: Black; background-color: White; text-align:left}
                        :link,:visited { color: #DF4F13; text-decoration:none }

                        </style>
                        </head>
                        <body style="color:black;">
                        <form id="form2" runat="server">

                         <center>
                             <div class="logform1">
                                <asp:Label ID="Label1" runat="server" Text="Upload Notification"></asp:Label>
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/back.png" CssClass="pad" Height="36px" ToolTip="Go Back">
                                </asp:ImageButton></div>
                                <br />
                                <br />
                             <div>
                        <asp:FileUpload ID="fileUpload1" runat="server" CssClass="txt"/>
                                 <br />
                                 <br />
                        <asp:Button ID="btnUpload" runat="server" Text="Upload" onclick="btnUpload_Click" CssClass="trebtn"/>
                                 <br />
                                 <br />
                                 <asp:TextBox ID="TextBox1" runat="server" CssClass="txt"></asp:TextBox>
                                 <br />
                                 <br />
                                 <asp:Label ID="Label2" runat="server">Size Limit is 25MB.</asp:Label>
                                 <br />
                                 <br />
                        </div>
                        <div>
                        <asp:GridView ID="gvDetails" CssClass="Gridview" runat="server" AutoGenerateColumns="false" DataKeyNames="FilePath">
                        <HeaderStyle BackColor="CadetBlue" />
                        <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" />
                        <asp:BoundField DataField="Name" HeaderText="FileName" />
                        <asp:TemplateField HeaderText="FilePath">
                        <ItemTemplate>
                        <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="lnkDownload_Click"></asp:LinkButton>
                            
                        </ItemTemplate>
                        </asp:TemplateField>
                        </Columns>
                        </asp:GridView>
                        </div>

        
    </center>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="notice.aspx.cs" Inherits="cngpass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="~/css/style.css" />
    <title>Change Password</title>
    </head>
<body style="color:black;">
    <form id="form1" runat="server">
    <center>
            <div class="logform1">
                <asp:Label ID="Label1" runat="server" Text="Change Current Password"></asp:Label>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/back.png" CssClass="pad" Height="36px" ToolTip="Go Back">
                </asp:ImageButton></div>
                <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />

                <br />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Upload" CssClass="trebtn" Style="float:none;width:22%;" ToolTip="Click to Register" OnClick="Button2_Click"></asp:Button>
                <br /><br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" ForeColor="red"></asp:Label>
        <br />
            <br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    OnRowCommand="GridView1_RowCommand">
    <Columns>
        <asp:TemplateField HeaderText="File" ShowHeader="False">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" 
                    CausesValidation="False" 
                    CommandArgument='<%# Eval("File") %>'
                    CommandName="Download" Text='<%# Eval("File") %>'>
                    </asp:LinkButton>
            </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Size" HeaderText="Size in Bytes" />
                <asp:BoundField DataField="Type" HeaderText="File Type" />
            </Columns>
            </asp:GridView>    
        
            <br />
        
            <br />
            <br />
        
    </center>
    </form>
</body>
</html>

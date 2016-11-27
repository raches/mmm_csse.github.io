<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cngpass.aspx.cs" Inherits="cngpass" %>

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
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/back.png" CssClass="pad" Height="36px" OnClick="ImageButton1_Click" ToolTip="Go Back">
                </asp:ImageButton></div>
                <br /><br /><br />
              Current Password: <asp:TextBox ID="Password" runat="server"  CssClass="txt" TextMode="Password"></asp:TextBox>

                <br /><br />
              New Password:&emsp;&nbsp;&thinsp; <asp:TextBox ID="NewPassword" runat="server" Type="password"  CssClass="txt"></asp:TextBox> 
                <br />
            <br />
            Confirm Password:&nbsp;&nbsp; 
           <asp:TextBox ID="TextBox1" runat="server" Type="password"  CssClass="txt"></asp:TextBox>&emsp;

                <br />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Change Password" CssClass="trebtn" Style="float:none;width:22%;" ToolTip="Click to Register" OnClick="Button2_Click"></asp:Button>
                <br /><br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" ForeColor="red"></asp:Label>
    </center>
    </form>
</body>
</html>

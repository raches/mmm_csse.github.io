<%@ Page Title="" Language="C#" MasterPageFile="~/csse_Master.master" AutoEventWireup="true" CodeFile="tlogin.aspx.cs" Inherits="login_forms_tlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/style.css" />
    <style type="text/css">
        #footer{
           visibility:collapse;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincon3" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="maincon1" Runat="Server">

    <form id="form2" runat="server" method="post">

    <center>
            <div class="logform">
                <asp:Label ID="Label1" runat="server" Text="Administrative LogIn for Faculty"></asp:Label>
            </div>
                <br /><br /><br />
              User Name: <asp:TextBox ID="UserName" runat="server"  CssClass="txt" required="true"></asp:TextBox>
                
                <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/icon/avatar.png" />

                <br /><br />
              Password: &nbsp;&nbsp;<asp:TextBox ID="Password" runat="server" TextMode="Password"  CssClass="txt" required="true"></asp:TextBox> 
                
                <asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/icon/padlock.png" />
                <br />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" CssClass="trebtn" Style="float:none;width:25%;"></asp:Button>
                <br /><br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" ForeColor="red"></asp:Label>
    </center>

    </form>

</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="maincon2" Runat="Server" Visible="false">

    </asp:Content>
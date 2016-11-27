<%@ Page Title="" Language="C#"  MasterPageFile="~/csse_Master.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Default2" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="~/css/style.css" />
        <style type="text/css">
        #footer{
           visibility:collapse;
        }
        .main{
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincon3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="maincon1" Runat="Server">

   
    <form id="form2" runat="server" method="post">
    <center>
            <div class="logform" style="text-align: center";>
                <asp:Label ID="Label2" runat="server" Text="Administrative LogIn for Student"></asp:Label>
            </div>
                <br /><br /><br />
              User Name: <asp:TextBox ID="UserName" runat="server"  CssClass="txt" required="true"></asp:TextBox>

                <asp:Image ID="Image3" runat="server" ImageUrl="~/icon/avatar.png" Height="20px"/>

                <br /><br />
              Password: &nbsp;&nbsp;<asp:TextBox ID="Password" runat="server" TextMode="Password"  CssClass="txt" required="true"></asp:TextBox> 
                           

            <asp:Image ID="Image2" runat="server" ImageUrl="~/icon/padlock.png" Height="20px"/>
                           
            <br /> <br />
                <asp:CheckBox ID="CheckBox1" runat="server" Text="1st Year" required="true"></asp:CheckBox>&nbsp;&nbsp;
                <asp:CheckBox ID="CheckBox2" runat="server" Text="2nd Year" required="true"></asp:CheckBox> &nbsp;
                <asp:CheckBox ID="CheckBox3" runat="server" Text="3rd Year" required="true"></asp:CheckBox> &nbsp;
                <br />
                <br />
                
                <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me" ToolTip="checkBox" CssClass="rmb"/>
                <br />
                <br />
        <br />
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" CssClass="trebtn" Style="float:none;width:25%;"></asp:Button>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" ForeColor="red"></asp:Label>
            
    
        <br />
       
    </center>

 </form>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincon2" Runat="Server" Visible="false">

    </asp:Content>

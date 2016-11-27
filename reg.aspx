<%@ Page Title="" Language="C#" MasterPageFile="~/csse_Master.master" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="login_forms_tlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/style.css" />
    <style type="text/css">
        .main{
            width:95%;
        }
    </style>
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
                        

                        </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincon3" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="maincon1" Runat="Server">

    <form id="form2" runat="server" method="post">

    <center>
            <div class="logform">
                <asp:Label ID="Label1" runat="server" Text="Create New Secretary of CSSE"></asp:Label>
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/icon/logout.png" CssClass="pad" Height="36px" OnClick="ImageButton2_Click" ToolTip="Log Out"/>
            </div>
                <br /><br /><br />
              User Name: <asp:TextBox ID="UserName" runat="server"  CssClass="txt" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="logform">*</asp:RequiredFieldValidator>

                <br /><br />
              Password: &nbsp;&nbsp;<asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="txt" ></asp:TextBox> 
                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="logform">*</asp:RequiredFieldValidator>
                <br /><br />
           Confirm Password: 
           <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"  CssClass="txt"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Register" OnClick="Button2_Click" CssClass="trebtn" Style="float:none;width:22%;" ToolTip="Click to Register"></asp:Button>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" ForeColor="red"></asp:Label>
            <br />
            <hr /><br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">[Click to Check the Suggestions List]</asp:LinkButton>
                <br /><br />
                <hr />
            <span style="font-size:22px;">Uploade Notice From Here</span><br />
            <br />
            <br />
                        <asp:FileUpload ID="fileUpload1" runat="server" CssClass="txt"/>
            <br />
            <br />
                                 <asp:TextBox ID="TextBox2" runat="server" CssClass="txt"></asp:TextBox>
            <br />
            <br />
                        <asp:Button ID="btnUpload" runat="server" Text="Upload" onclick="btnUpload_Click" CssClass="trebtn"/>
            <br />
            <br />
                                 <asp:Label ID="Label3" runat="server">Size Limit is 25MB.</asp:Label>
            <br />
            <br />
            <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="false" CssClass="Gridview" DataKeyNames="FilePath">
                <HeaderStyle BackColor="CadetBlue" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" />
                    <asp:BoundField DataField="Name" HeaderText="FileName"/>
                    <asp:TemplateField HeaderText="FilePath">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkDownload" runat="server" OnClick="lnkDownload_Click" Text="Download"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <br />
    </center>

    </form>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincon2" Runat="Server">



    </asp:Content>
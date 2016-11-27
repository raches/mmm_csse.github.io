<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fill.aspx.cs" Inherits="fill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" type="text/css" href="../css/style.css" />
    <title></title>
</head>
<body style="color:black;">
    
    <form id="form1" runat="server" style="color:black;">
        <div class="logform1">
               
            <asp:Label ID="Label1" runat="server" Text="Suggestion" Style="margin-left:20%;margin-right:20%;font-size:26px;font-weight:bold;"></asp:Label>
            
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/back.png" CssClass="pad" Style="margin-left:20%;margin-right:20%;" Height="36px" OnClick="ImageButton1_Click" ToolTip="Go Back">
                </asp:ImageButton></div>
        
        <div style="margin-left:20%;margin-right:20%;">
          <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT [Name], [Comment] FROM [idea]"></asp:SqlDataSource>
            <br /><br />
              Name <br />
            <asp:TextBox ID="Name" runat="server"  CssClass="txt" Style="text-transform: capitalize;" Width="216px" ></asp:TextBox>

                <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/icon/avatar.png" style="" />

                <br /><br />
              Email<br />
             
            <asp:TextBox ID="TextBox1" runat="server" CssClass="txt" Width="217px"></asp:TextBox>
            <asp:Image ID="Image4" runat="server" Height="20px" ImageUrl="~/icon/envelope.png" style="" ToolTip="Enter Email Here" />
                <br />
            <br />
            Comment<br />
            
            <textarea id="TextArea1" name="S1" runat="server" class="txt" style="overflow:auto; width: 382px; height: 107px; margin-left: 0;" spellcheck="true"></textarea><br />
            <asp:Image ID="Image5" runat="server" Height="20px" ImageUrl="~/icon/edit.png" style="" ToolTip="Enter Your Suggestion" />    
            <br />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="trebtn" Style="float:none;" ToolTip="Click to Submit Message" OnClick="Button2_Click"></asp:Button>
                <br /><br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" ForeColor="red"></asp:Label>        

            <br />
            <br />
            <br />
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <span style="">
                        <asp:Image ID="Image1" runat="server" ToolTip="Name" ImageUrl="~/icon/star.png" Height="30px"/>
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>'  Style="font-size:22px;font-weight:bold;"/><hr />
                   <asp:Image ID="Image2" runat="server" ToolTip="Comments" ImageUrl="~/icon/chat-2.png" Height="25px"/>
                    <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                    <br /><br /><br /><br />
                  
</span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="">
                        <asp:Image ID="Image1" runat="server" ToolTip="Name" ImageUrl="~/icon/star.png" Height="30px"/>
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>'  Style="font-size:22px;font-weight:bold;"/><hr />
                    <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' />

                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /><br />
                    </span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span><hr /><br />
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">
                        <asp:Image ID="Image1" runat="server" ToolTip="Name" ImageUrl="~/icon/star.png" Height="30px"/>
                    <asp:TextBox ID="NameTextBox0" runat="server" Text='<%# Bind("Name") %>' /><hr />
                    <asp:TextBox ID="CommentTextBox0" runat="server" Text='<%# Bind("Comment") %>' />

                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton0" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /><br />
                    </span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="">
                        <asp:Image ID="Image1" runat="server" ToolTip="Name" ImageUrl="~/icon/star.png" Height="30px"/>
                    <asp:Label ID="NameLabel0" runat="server" Text='<%# Eval("Name") %>'  Style="font-size:22px;font-weight:bold;"/><hr />
                    <asp:Image ID="Image2" runat="server" ToolTip="Comments" ImageUrl="~/icon/chat-2.png" Height="25px"/>
                    <asp:Label ID="CommentLabel0" runat="server" Text='<%# Eval("Comment") %>' />
                    <br /><br /><br /><br />
                    </span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="">
                        <div style="padding: 10px 0 10px 0; z-index: -1;font-size:20px;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                            </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="">
                    <asp:Label ID="NameLabel1" runat="server" Text='<%# Eval("Name") %>'  Style="font-size:22px;font-weight:bold;"/><hr />
                    
                    <asp:Label ID="CommentLabel1" runat="server" Text='<%# Eval("Comment") %>' />
                    <br /><br />
                    </span>
                </SelectedItemTemplate>
            </asp:ListView>

    </div>
    </form>
</body>
</html>

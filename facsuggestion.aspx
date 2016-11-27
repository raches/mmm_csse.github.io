<%@ Page Language="C#" AutoEventWireup="true" CodeFile="facsuggestion.aspx.cs" Inherits="rec1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="~/css/style.css" />
</head>
<body style="color:black;">
    <form id="form1" runat="server" method="post">
   
        <div class="logform1">
                <asp:Label ID="Label1" runat="server" Text="Suggestion by the Users" Style="margin-left:20%;margin-right:20%;font-size:26px;font-weight:bold;"></asp:Label>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/back.png" CssClass="pad" Style="margin-left:20%;margin-right:20%;" Height="36px" OnClick="ImageButton1_Click" ToolTip="Go Back">
                </asp:ImageButton>
        </div>
        <div style="margin-left:20%;margin-right:20%;">
        <br />
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <span style="">id:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>'  Style="font-size:15px;font-weight:bold;"/>
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>'  Style="font-size:15px;font-weight:bold;"/>
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>'  Style="font-size:15px;font-weight:bold;"/>
                    <br />
                Comment:
                <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete"  CssClass="txt" Style="background-color:cadetblue;cursor:pointer;padding:10px 15px 10px 15px;color:white;"/><hr />
                <br />
                <br />
                    <br />
                </span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="">id:
                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Comment:
                <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br />
                <br />
                </span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Comment:
                <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
                <br />
                </span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="">id:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>'  Style="font-size:15px;font-weight:bold;"/>
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>'  Style="font-size:15px;font-weight:bold;"/>
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>'  Style="font-size:15px;font-weight:bold;"/>
                    <br />
                Comment:
                <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete"  CssClass="txt" Style="background-color:cadetblue;cursor:pointer;padding:10px 15px 10px 15px;color:white;"/><hr />
                <br />
                <br />
                    <br />
                </span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="">
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
                <span style="">id:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                Comment:
                <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                <br />
                <br />
                </span>
            </SelectedItemTemplate>
        </asp:ListView>
        
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" DeleteCommand="DELETE FROM [idea] WHERE [id] = @id" InsertCommand="INSERT INTO [idea] ([Name], [Email], [Comment]) VALUES (@Name, @Email, @Comment)" SelectCommand="SELECT * FROM [idea]" UpdateCommand="UPDATE [idea] SET [Name] = @Name, [Email] = @Email, [Comment] = @Comment WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Comment" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Comment" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />

        </div>

    </form>
</body>
</html>

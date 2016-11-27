<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tre1.aspx.cs" Inherits="rec1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
    <link rel="stylesheet" type="text/css" href="~/css/style.css" />
</head>
<body>
    <form id="form1" runat="server" method="post">
        
    <div id="w1">
       &emsp;&emsp;<span style="color:black;">Welcome To Treasury Departememt</span>
    
        <asp:Label ID="Label1" runat="server" Text="label" ForeColor="Black" CssClass="lbl1"></asp:Label> 
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/icon/logout.png" CssClass="pad" Height="36px" OnClick="ImageButton2_Click" ToolTip="Log Out"/>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/padlock.png" CssClass="pad" Height="36px" OnClick="ImageButton1_Click" ToolTip="Change Password"/>
            </div><br />

        <div class="ar1">
        <br />
    <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="None" AllowSorting="True" BorderStyle="None" Caption="First Year  Record" CaptionAlign="Top" CssClass="grid1" BackColor="#666666" ShowFooter="True" Width="442px" CellSpacing="1">
            <AlternatingRowStyle BorderStyle="None" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:TemplateField HeaderText="Id" SortExpression="Id">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name" SortExpression="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Roll_No" SortExpression="Roll_No">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Roll_No") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Roll_No") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status" SortExpression="Status">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("Status") %>' BackColor="#CCCCCC">
                            <asp:ListItem>Select Status</asp:ListItem>
                            <asp:ListItem>Paid</asp:ListItem>
                            <asp:ListItem>Pending</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT * FROM [record1]" DeleteCommand="DELETE FROM [record1] WHERE [Id] = @Id" InsertCommand="INSERT INTO [record1] ([Id], [Name], [Roll_No], [Status]) VALUES (@Id, @Name, @Roll_No, @Status)" UpdateCommand="UPDATE [record1] SET [Name] = @Name, [Roll_No] = @Roll_No, [Status] = @Status WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Roll_No" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Roll_No" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />
      </center>

        </div>

  
    </form>
</body>
</html>

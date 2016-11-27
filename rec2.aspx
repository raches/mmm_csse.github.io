<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rec2.aspx.cs" Inherits="rec1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student's Record</title>
    <link rel="stylesheet" type="text/css" href="~/css/style.css" />
</head>
<body>
    <form id="form1" runat="server" method="post">
        
     <div id="w1">
       &emsp;&emsp;<span style="color:black;">Welcome</span>
    
        <asp:Label ID="Label1" runat="server" Text="label" ForeColor="Black" CssClass="lbl1"></asp:Label> 
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/icon/logout.png" CssClass="pad" Height="36px" OnClick="ImageButton2_Click" ToolTip="Log Out"/>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/padlock.png" CssClass="pad" Height="36px" OnClick="ImageButton1_Click" ToolTip="Change Password"/>
            </div>
        <br />
        <div class="ar1">
    <center>
        <br />
  
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="None" AllowSorting="True" BorderStyle="None" Caption="Second  Year  Record" CaptionAlign="Top" CssClass="grid1" BackColor="#666666" ShowFooter="True" Width="445px" CellSpacing="1">
            <AlternatingRowStyle BorderStyle="None" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Roll_No" HeaderText="Roll_No" SortExpression="Roll_No" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" DeleteCommand="DELETE FROM [record2] WHERE [Id] = @Id" InsertCommand="INSERT INTO [record2] ([Id], [Name], [Roll_No]) VALUES (@Id, @Name, @Roll_No)" SelectCommand="SELECT [Id], [Name], [Roll_No] FROM [record2]" UpdateCommand="UPDATE [record2] SET [Name] = @Name, [Roll_No] = @Roll_No WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Roll_No" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Roll_No" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />
    
 </center>
        </div>

   
    </form>
</body>
</html>

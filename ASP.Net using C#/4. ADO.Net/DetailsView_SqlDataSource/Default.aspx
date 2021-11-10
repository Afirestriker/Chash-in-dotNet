﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!-- DetailsView control and SqlDataSource Control binding both and also adding option to Insert new data with details view control-->
        
        
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" 
            DataSourceID="SqlDataSource_GridViewControl" ForeColor="#333333" 
            GridLines="None">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                    SortExpression="ID" />
                <asp:BoundField DataField="EmpName" HeaderText="EmpName" 
                    SortExpression="EmpName" />
                <asp:BoundField DataField="EmpCity" HeaderText="EmpCity" 
                    SortExpression="EmpCity" />
            </Columns>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" 
            AutoGenerateRows="False" DataKeyNames="ID" 
            DataSourceID="SqlDataSource_DetailsViewControl" Height="50px" 
            Width="125px">
            <Fields>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                    SortExpression="ID" />
                <asp:BoundField DataField="EmpName" HeaderText="EmpName" 
                    SortExpression="EmpName" />
                <asp:BoundField DataField="EmpCity" HeaderText="EmpCity" 
                    SortExpression="EmpCity" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
        <asp:Label ID="LabelDataBaseStatus" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource_GridViewControl" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EmpConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:EmpConnectionString.ProviderName %>" 
            SelectCommand="SELECT [ID], [EmpName], [EmpCity] FROM [Employee]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource_DetailsViewControl" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EmpConnectionString2 %>" 
            DeleteCommand="DELETE FROM [Employee] WHERE (([ID] = ?) OR ([ID] IS NULL AND ? IS NULL))" 
            InsertCommand="INSERT INTO [Employee] ([ID], [EmpName], [EmpCity]) VALUES (?, ?, ?)" 
            ProviderName="<%$ ConnectionStrings:EmpConnectionString2.ProviderName %>" 
            SelectCommand="SELECT [ID], [EmpName], [EmpCity] FROM [Employee]" 
            
            UpdateCommand="UPDATE [Employee] SET [EmpName] = ?, [EmpCity] = ? WHERE (([ID] = ?) OR ([ID] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="EmpName" Type="String" />
                <asp:Parameter Name="EmpCity" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="EmpName" Type="String" />
                <asp:Parameter Name="EmpCity" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        
        
    </div>
    </form>
</body>
</html>

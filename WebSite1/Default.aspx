<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cno" DataSourceID="SqlDataSource2" EmptyDataText="没有可显示的数据记录。">
            <Columns>
                <asp:BoundField DataField="cno" HeaderText="cno" ReadOnly="True" SortExpression="cno" />
                <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
                <asp:BoundField DataField="cpno" HeaderText="cpno" SortExpression="cpno" />
                <asp:BoundField DataField="credit" HeaderText="credit" SortExpression="credit" />
                <asp:BoundField DataField="teacher" HeaderText="teacher" SortExpression="teacher" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=LENOVO-PC\SQLEXPRESS;Initial Catalog=data1;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [course]"></asp:SqlDataSource>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>
</body>
</html>

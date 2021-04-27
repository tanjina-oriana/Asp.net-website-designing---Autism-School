<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stmanager.aspx.cs" Inherits="stmanager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSourcestreg" runat="server" ConnectionString="<%$ ConnectionStrings:stregConnectionString %>" SelectCommand="SELECT * FROM [ProfileDetail]"></asp:SqlDataSource>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="rollno" DataSourceID="SqlDataSourcestreg">
            <Columns>
                <asp:BoundField DataField="rollno" HeaderText="rollno" ReadOnly="True" SortExpression="rollno" />
                <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
                <asp:BoundField DataField="mname" HeaderText="mname" SortExpression="mname" />
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="profileimage" HeaderText="profileimage" SortExpression="profileimage" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

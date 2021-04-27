<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .body {
          background-image: url(pic\form2.jpg);
        }
        .auto-style1 {
            width: 59%;
            height: 612px;
          background-color: #FFCCCC;
            margin-left:20%;
          


        }
        .auto-style2 {
            width: 185px;
        }
        .auto-style3 {
            width: 44px;
            font-weight: bold;
            background-color: #FFCCCC;
        }
        .auto-style4 {
            width: 44px;
            height: 45px;
            font-weight: bold;
            background-color: #FFCCCC;
        }
        .auto-style5 {
            width: 185px;
            height: 45px;
        }
        .auto-style6 {
            width: 44px;
            height: 53px;
            font-weight: bold;
            background-color: #FFCCCC;
        }
        .auto-style7 {
            width: 185px;
            height: 53px;
        }
    </style>
</head>
<body class="body">
    <form id="form1" runat="server">
    <div style:"height: 503px">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [reg]"></asp:SqlDataSource>

        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Name</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Width="388px" Height="39px" style="margin-top: 0px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Father&#39;s Name</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="390px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Mother&#39;s Name</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server" Width="392px" Height="42px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Date of Birth</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server" Width="393px" Height="41px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Nationality</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox5" runat="server" Width="393px" Height="41px" style="margin-left: 0px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Gender</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox6" runat="server" Width="397px" Height="41px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Address</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox7" runat="server" Height="40px" Width="399px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lb1" runat="server" Text="Insert Successful" ForeColor="#006600" Visible="False"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" Height="33px" OnClick="Button1_Click" Text="Insert" Width="82px" />
                    <asp:Button ID="Button3" runat="server" style="margin-top: 0px" Text="Update" Width="81px" />
                    <asp:Button ID="Button2" runat="server" Height="26px" style="margin-top: 0px" Text="Delete" Width="83px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
    
    &nbsp;</div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User2.aspx.cs" Inherits="User2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 67%;
            height: 321px;
        }
        .auto-style2 {
            width: 419px;
        }
        .auto-style4 {
            width: 87%;
            height: 318px;
        }
        .auto-style5 {
            height: 122px;
            width: 225px;
            background-color: #CCFF99;
        }
        .auto-style7 {
            width: 100%;
            height: 317px;
        }
        .auto-style8 {
            background-color: #FFFFCC;
        }
        .auto-style9 {
            width: 108px;
            height: 64px;
            background-color: #FFFFCC;
        }
        .auto-style10 {
            height: 64px;
            background-color: #FFFFCC;
        }
        .auto-style11 {
            height: 59px;
            background-color: #FFFFCC;
        }
        .auto-style12 {
            height: 58px;
            background-color: #FFFFCC;
        }
        .auto-style13 {
            height: 78px;
            width: 225px;
            background-color: #CCFF99;
        }
        .auto-style14 {
            height: 59px;
            width: 108px;
            background-color: #FFFFCC;
        }
        .auto-style15 {
            height: 58px;
            width: 108px;
            background-color: #FFFFCC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: xx-large; color: #3333FF" Text="Student Registration"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style9">Roll Number</td>
                            <td class="auto-style10">
                                <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="187px"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" style="color: #000000; margin-top: 0px; background-color: #FF9933" Text="Search" Width="68px" />
                                <asp:Label ID="Labelsearch" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style14">Student Name</td>
                            <td class="auto-style11">
                                <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="187px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style14">Father&#39;s Name</td>
                            <td class="auto-style11">
                                <asp:TextBox ID="TextBox3" runat="server" Height="35px" Width="187px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15">Mother&#39;s Name</td>
                            <td class="auto-style12">
                                <asp:TextBox ID="TextBox4" runat="server" Height="35px" Width="187px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8" colspan="2">
                                <asp:Button ID="Button2" runat="server" Height="25px" OnClick="Button2_Click" style="background-color: #FF9933" Text="Update" Width="156px" />
                                <br />
                                <asp:Label ID="Labelupdate" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style5">
                                <asp:Image ID="Image1" runat="server" style="text-align: center" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13">
                                <asp:FileUpload ID="FileUpload1" runat="server" Height="35px" Width="259px" />
                                <br />
                                Upload JPG image 200x200<br />
                                Maximum size 50kb</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

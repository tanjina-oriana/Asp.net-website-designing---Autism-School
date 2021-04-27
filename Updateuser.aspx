<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Updateuser.aspx.cs" Inherits="Updateuser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 376px;
        }
        
        .auto-style3 {
            text-align: left;
            width: 231px;
        }
        .auto-style11 {
            color: #0033CC;
        }
        .auto-style16 {
            width: 361px;
        }
        .auto-style9 {
            text-align: left;
            width: 231px;
            height: 42px;
        }
        .auto-style12 {
            color: #3333CC;
        }
        .auto-style10 {
            height: 42px;
            width: 361px;
        }
        .auto-style17 {
            text-align: left;
            width: 231px;
            height: 70px;
        }
        .auto-style13 {
            color: #3333CC;
            background-color: #FFFFFF;
        }
        .auto-style18 {
            width: 361px;
            height: 70px;
        }
        .auto-style19 {
            text-align: left;
            width: 231px;
            height: 116px;
        }
        .auto-style20 {
            width: 361px;
            height: 116px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <span class="auto-style11"><strong>Username</strong></span><br />
                    <asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="262px"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <span class="auto-style12"><strong>Email</strong></span><br />
                    <asp:TextBox ID="TextBox2" runat="server" Height="33px" Width="262px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="E-mail is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="You must enter the valid email id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <strong><span class="auto-style13">Password</span></strong><br />
                    <asp:TextBox ID="TextBox3" runat="server" Height="33px" TextMode="Password" Width="262px"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <span class="auto-style12"><strong>Country</strong></span><br />
                    <asp:TextBox ID="TextBox5" runat="server" Height="33px" Width="262px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Country is Required" ForeColor="Red" InitialValue="Select Country"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    
    </div>
        <p>
    <asp:Button ID="Button2" runat="server" Height="40px" OnClick="Button2_Click" style="font-weight: 700; color: #FF33CC; background-color: #CCCCCC" Text="Update" Width="85px" />
    <asp:Label ID="Label2" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 399px;
        }
        .auto-style2 {
            width: 234px;
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style3 {
            text-align: left;
            width: 231px;
        }
        .auto-style5 {
            text-align: left;
            height: 30px;
            width: 231px;
        }
        .auto-style6 {
            height: 30px;
            width: 361px;
        }
        .auto-style7 {
            width: 231px;
        }
        .auto-style9 {
            text-align: left;
            width: 231px;
            height: 42px;
        }
        .auto-style10 {
            height: 42px;
            width: 361px;
        }
        #Reset1 {
            width: 78px;
            color: #CC0099;
            font-weight: 700;
            background-color: #CCCCCC;
            height: 35px;
        }
        .auto-style11 {
            color: #0033CC;
        }
        .auto-style12 {
            color: #3333CC;
        }
        .auto-style13 {
            color: #3333CC;
            background-color: #FFFFFF;
        }
        .auto-style14 {
            font-size: xx-large;
            color: #CC33FF;
        }
        .auto-style16 {
            width: 361px;
        }
        .auto-style17 {
            text-align: left;
            width: 231px;
            height: 70px;
        }
        .auto-style18 {
            width: 361px;
            height: 70px;
        }
        .auto-style19 {
            width: 329px;
            height: 270px;
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style20 {
            font-size: x-large;
            color: #FF3300;
        }
        .auto-style21 {
            text-align: center;
        }
        .auto-style22 {
            width: 231px;
            color: #FF3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p class="auto-style21"><strong style="font-size: xx-large; color: #9933FF">Register Into Our Official Page</strong></p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" rowspan="7"><span class="auto-style14"><strong>Autism Speaks</strong></span><br />
                    <strong><span class="auto-style20">SignUp</span></strong><br />
                    <img alt="" class="auto-style19" src="pic/form3.jpg" /><br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style3">
                    <span class="auto-style11"><strong>Username</strong></span><br />
                    <asp:TextBox ID="TextBox1" placeholder="Enter Username" runat="server" Height="33px" Width="262px"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <span class="auto-style12"><strong>Email</strong></span><br />
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Email" Height="33px" Width="262px"></asp:TextBox>
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
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Password" Height="33px" TextMode="Password" Width="262px"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <span class="auto-style12"><strong>Confirm Password</strong></span><br />
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Confirm Password" Height="33px" TextMode="Password" Width="262px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please confirm password" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Password must be same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <span class="auto-style12"><strong>Country</strong></span><br />
                    <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter your country" Height="33px" Width="262px"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Country is Required" ForeColor="Red" InitialValue="Select Country"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="82px" style="color: #CC0099; font-weight: 700; background-color: #CCCCCC" Height="38px" />
                    <input id="Reset1" type="reset" value="reset" /></td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22"><strong>Already have an account?
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Login Here</asp:HyperLink>
                    </strong></td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: #CC0099;
            font-size: xx-large;
        }
        .auto-style2 {
            width: 43%;
            height: 271px;
          
            margin-left:37%;
            background-color:#3a99ea;
            margin-top: 0px;
        }
        .auto-style4 {
            width: 546px;
            background-color: #3399FF;
        }
        .auto-style5 {
            color: #000066;
        }
        .auto-style6 {
            color: #003366;
        }
        
        .auto-style8 {
            width: 546px;
            height: 97px;
            background-color: #3399FF;
        }
        
        .auto-style13 {
            width: 757px;
            height: 97px;
            background-color: #3399FF;
        }
        .auto-style14 {
            width: 757px;
            background-color: #3399FF;
        }
        .auto-style15 {
            width: 568px;
            height: 97px;
            background-color: #3399FF;
        }
        .auto-style16 {
            width: 568px;
            background-color: #3399FF;
        }
        
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" Runat="Server">
    <p class="auto-style1">
        <strong>Login Page</strong></p>
    <table class="auto-style2" border="0" style="border:none; border-color:white;">
        <tr>
            <td class="auto-style13" >
            </td>
            <td class="auto-style15" ><span class="auto-style5"><strong>User Email</strong></span><br />
                <asp:TextBox ID="TextBox9" placeholder="Enter Email" runat="server" Height="44px" Width="378px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox9" ErrorMessage="Please enter your email address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16"><span class="auto-style6"><strong>Password</strong></span><br />
                <asp:TextBox ID="TextBox10" runat="server" Height="44px" TextMode="Password" placeholder="Enter Password" Width="378px"></asp:TextBox>
            </td>
            <td class="auto-style4" colspan="0">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox10" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style16">
                <asp:Button ID="Button1" runat="server" Height="41px" OnClick="Button1_Click" Text="Login" Width="162px" style="color: #CC0066; font-weight: 700; font-size: medium; background-color: #CCCCCC" />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/reg.aspx" style="color: #660066; font-weight: 700;">New User Register Here</asp:HyperLink>
            </td>
            <td class="auto-style4" colspan="0">&nbsp;</td>
        </tr>
        </table>
    <div>

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

    </div>
</asp:Content>


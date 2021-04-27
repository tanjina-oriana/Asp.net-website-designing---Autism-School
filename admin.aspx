<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 177px;
        }
        .auto-style2 {
            height: 44px;
        }
        .auto-style6 {
            width: 469px;
            color: #0033CC;
            font-size: x-large;
        }
        .auto-style9 {
            height: 44px;
            width: 458px;
            color: #0033CC;
            font-size: x-large;
            background-color: #CCCCCC;
        }
        .auto-style10 {
            height: 44px;
            width: 458px;
            background-color: #CCCCCC;
        }
        .auto-style11 {
            height: 40px;
            width: 458px;
            background-color: #CCCCCC;
        }
    .auto-style12 {
        color: #CC3300;
    }
    .auto-style13 {
        font-weight: bold;
    }
    .auto-style14 {
        font-weight: bold;
        color: rgb(102, 0, 102);
    }
    .auto-style15 {
        color: rgb(102, 0, 102);
    }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style6" rowspan="7">
                <b class="whb" style="margin: 0px; padding: 0px; color: rgb(84, 84, 84); font-family: Helvetica, arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
                <br class="Apple-interchange-newline" />
                </b><span class="auto-style15"><b class="whb" style="margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">Make sure that you&#39;re trying to log into your own website.</b></span><span class="auto-style15" style="font-family: Helvetica, arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="auto-style13">&nbsp;</span></span><span class="auto-style14" style="font-family: Helvetica, arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">If 
                you have the administrator credentials (e.g., your email address and a password), you can log into your website&#39;s administrator panel by entering them in the proper location.</span></td>
            <td class="auto-style9">
                <strong>This is the Admin Login Page</strong></td>
        </tr>
        <tr>
            <td class="auto-style9">
                <img src="https://www.newbharathschool.in/upload/icon/admin_pic.jpg" style="width: 205px" /></td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Email" Height="38px" Width="318px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="E-mail is requred" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Password" Height="38px" Width="318px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><span class="auto-style12"><strong>Remember Me :</strong></span> <asp:CheckBox ID="CheckBox1" runat="server" /> </td>
                <td class="auto-style2"></td>

          
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Button ID="Button1" runat="server" Text="Login"  Width="329px" Height="38px" OnClick="Button1_Click" style="background-color: #00CC66" BorderColor="#009900" Font-Bold="True" Font-Size="Large" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>


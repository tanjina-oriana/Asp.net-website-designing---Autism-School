﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="stdelete.aspx.cs" Inherits="stdelete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 76%;
            height: 411px;
        }
        .auto-style2 {
            width: 465px;
        }
        .auto-style3 {
            width: 465px;
            height: 307px;
        }
        .auto-style4 {
            height: 352px;
            width: 339px;
        }
        .auto-style5 {
            width: 410px;
        }
        .auto-style7 {
            width: 96%;
            height: 317px;
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
        .auto-style14 {
            height: 59px;
            width: 108px;
            background-color: #FFFFCC;
        }
        .auto-style11 {
            height: 59px;
            background-color: #FFFFCC;
        }
        .auto-style15 {
            height: 58px;
            width: 108px;
            background-color: #FFFFCC;
        }
        .auto-style12 {
            height: 58px;
            background-color: #FFFFCC;
        }
        .auto-style8 {
            background-color: #FFFFCC;
        }
        .auto-style13 {
            height: 78px;
            width: 225px;
            background-color: #CCFF99;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" Runat="Server">
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
                                <asp:Button ID="Button2" runat="server" Height="25px" OnClick="Button2_Click" style="background-color: #FF9933" Text="Delete" Width="156px" />
                                <br />
                                <asp:Label ID="Labeld" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style3">
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
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
    </table>
</asp:Content>


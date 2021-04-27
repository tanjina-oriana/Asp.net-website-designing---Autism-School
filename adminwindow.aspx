<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminwindow.aspx.cs" Inherits="adminwindow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 208px;
            background-color: #FFFFFF;
        }
        .auto-style2 {
            width: 326px;
            background-color: #DDBBFF;
            height: 166px;
        }
        .auto-style3 {
            width: 326px;
            height: 233px;
            background-color: #CCEAAE;
        }
        .auto-style5 {
            width: 326px;
            height: 168px;
            background-color: #F8D3EB;
        }
        .auto-style6 {
            width: 326px;
            height: 159px;
            background-color: #9DAAE3;
        }
        .auto-style7 {
            font-size: xx-large;
            color: #663300;
        }
        .auto-style9 {
            height: 233px;
        }
    .auto-style10 {
        height: 233px;
        width: 342px;
    }
        .auto-style11 {
            width: 326px;
            height: 197px;
            background-color: #33CCFF;
        }
        .auto-style12 {
            height: 197px;
            width: 342px;
        }
        .auto-style13 {
            height: 197px;
        }
        .auto-style14 {
            width: 326px;
            height: 190px;
            background-color: #CC66FF;
        }
        .auto-style15 {
            height: 190px;
            width: 342px;
        }
        .auto-style16 {
            height: 190px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" BackColor="White" Font-Bold="True" ForeColor="Red" Width="326px"></asp:Label>
                <br />
                <br />
                <strong><span class="auto-style7">Admin Control</span></strong><br />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">Upload Files<br />
                            <asp:FileUpload ID="FileUpload1" runat="server" Height="72px" Width="261px" />
                            <br />
                            <asp:Button ID="Button3" runat="server" Height="44px" OnClick="Button3_Click" Text="Upload" Width="126px" BackColor="#FFCC99" Font-Bold="True" Font-Italic="True" ForeColor="#CC0066" />
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                            <br />
                            <asp:Label ID="Label4" runat="server"></asp:Label>
                        </td>
                        <td rowspan="0" class="auto-style10">
                            <img alt="Image result for autistic children" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmb_mZMILpCBUKI1hAaVfaSbEAJczM5Uu7gXiGv7R6Ce_A6nt6" style="height: 237px; width: 355px" /></td>
                        <td rowspan="0" class="auto-style9">
                            <img alt="Image result for autistic children" src="http://www.dualdiagnosishelpline.com/wp-content/uploads/2015/08/Autism-and-down-syndrome.jpg" style="height: 238px" /></td>
                    </tr>
                    <tr>
                        <td class="auto-style14">
                            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Manager.aspx" style="font-weight: 700; font-size: x-large">Registered User</asp:HyperLink>
                        </td>
                        <td class="auto-style15">
                            </td>
                        <td class="auto-style16">
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">
                            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/stmanager.aspx" style="font-weight: 700; font-size: x-large; color: #0000FF">Registered Student List</asp:HyperLink>
                        </td>
                        <td class="auto-style12">
                            </td>
                        <td class="auto-style13">
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <br />
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/library.aspx" Font-Bold="True" style="font-size: x-large">Upload new books</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" NavigateUrl="~/User2.aspx" style="font-size: x-large">Update Student Data</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" NavigateUrl="~/stdelete.aspx" style="font-size: x-large">Remove Student</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" NavigateUrl="~/teacher.xml" style="font-size: x-large">Add Teachers</asp:HyperLink>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Height="42px" OnClick="Button1_Click" Text="Logout" Width="178px" BackColor="#BBFFFF" Font-Bold="True" ForeColor="Red" />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>


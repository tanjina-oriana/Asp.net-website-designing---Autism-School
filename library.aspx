<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="library.aspx.cs" Inherits="library" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 270px;
    }
    .auto-style3 {
        width: 270px;
        height: 26px;
    }
    .auto-style4 {
        height: 26px;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" Runat="Server">

    <link href="style/library.css" rel="stylesheet" />

    <div id="lback">


        &nbsp;<table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="40px" />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click" Text="Upload" Width="84px" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

        

</asp:Content>


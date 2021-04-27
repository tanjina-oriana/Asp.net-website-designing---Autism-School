<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style19 {
            width: 99%;
            height: 296px;
        }
        .auto-style20 {
            height: 236px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Welcome........."></asp:Label>
    <br />
    <br />
    <table class="auto-style19">
        <tr>
            <td class="auto-style20" colspan="2">
                <img alt="Image result for sunset images" src="https://upload.wikimedia.org/wikipedia/commons/5/58/Sunset_2007-1.jpg" style="height: 312px; width: 1103px" /></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="applicationid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="536px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="applicationid" HeaderText="Uploaded Id" ReadOnly="True" SortExpression="applicationid">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:HyperLinkField DataNavigateUrlFields="routine" HeaderText="Pdf Files" Text="View and Downloads">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:HyperLinkField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:up1ConnectionString %>" SelectCommand="SELECT * FROM [routine1]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Updateuser.aspx">Update Info</asp:HyperLink>
    
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" Height="40px" style="font-weight: 700; color: #FF33CC; background-color: #CCCCCC" Width="215px" BackColor="#0066FF" Font-Bold="True" Font-Italic="True" />
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
    <br />
    <br />
</asp:Content>


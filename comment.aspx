<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="comment.aspx.cs" Inherits="comment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            background-color: #FFFFFF;
        }
        .auto-style5 {
            width: 100%;
            height: 142px;
        }
        .auto-style6 {
            height: 34px;
        }
        .auto-style7 {
            font-size: medium;
        }
        .auto-style8 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" Runat="Server">
    <p class="auto-style1">
        <strong>Give Us Your Feedback and Ask Questions</strong></p>
    <table class="auto-style8">
        <tr>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="E-mail" Height="36px" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="E-mail is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="130px" placeholder="Comment" TextMode="MultiLine" Width="621px" style="background-color: #FFFFCC"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" Height="35px" OnClick="Button2_Click" Text="comment" Width="93px" BackColor="#0066CC" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" ForeColor="White" />
                </td>
        </tr>
    </table>
    <p class="auto-style1">
                <asp:Label ID="Label5" runat="server" style="font-size: medium"></asp:Label>
            </p>
    <p class="auto-style1">
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" Width="621px">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EFF3FB" />
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style6"><span class="auto-style7">Posted By</span>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("email") %>' style="font-size: medium"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><span class="auto-style7">Comment:</span><asp:Label ID="Label7" runat="server" Text='<%# Eval("comm") %>' CssClass="auto-style7"></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
    </p>
    <p class="auto-style1">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CommentConnectionString %>" SelectCommand="SELECT * FROM [commentbox]"></asp:SqlDataSource>
    </p>
</asp:Content>


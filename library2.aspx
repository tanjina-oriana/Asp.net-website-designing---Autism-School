<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="library2.aspx.cs" Inherits="library2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 304px;
        }
        .auto-style2 {
            width: 520px;
        }
        .auto-style3 {
            width: 520px;
            height: 247px;
        }
        .auto-style4 {
            height: 247px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Download Books Here!!"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="bookid" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="427px">
                    <Columns>
                        <asp:BoundField DataField="bookid" HeaderText="Book ID" ReadOnly="True" SortExpression="bookid">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:HyperLinkField DataNavigateUrlFields="bookup" HeaderText="Book [PDF]" Text="View and Download">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:HyperLinkField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookConnectionString %>" SelectCommand="SELECT * FROM [book1]"></asp:SqlDataSource>
            </td>
            <td class="auto-style4">
                <header style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px 0px 1.5em; padding: 0px 0px 20px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: arial, sans-serif; vertical-align: baseline; display: block; background: url('https://www.appliedbehavioranalysisprograms.com/30-best-childrens-books-about-the-autism-spectrum/images/divider.png') repeat-x center bottom; color: rgb(134, 134, 134); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    <h1 class="title" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 28px; line-height: 1.2; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(119, 119, 119); width: 554.172px;">Best Children’s Books About the Autism Spectrum</h1>
                </header>
                <div class="post-content box mark-links" style="margin: 0px; padding: 0px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: arial, sans-serif; vertical-align: baseline; color: rgb(134, 134, 134); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    <p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;">
                        One of the most wonderful things about a book is its ability to reveal to us a little piece of ourselves. When we can relate to a story or a character, we are left with a better understanding of who we are and what our purpose may be.</p>
                    <p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;">
                        Related:<span>&nbsp;</span><a href="https://www.appliedbehavioranalysisprograms.com/rankings/applied-behavior-analysis-online-programs/" style="margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration: none; color: rgb(89, 189, 213); transition: background-color, color 0.2s linear;">15 Best Applied Behavior Analysis Online Programs</a></p>
                    <p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;">
                        This might be most true for children on the autism spectrum. Because things like relating to others, understanding emotions, and making and keeping friends are common challenges faced by children with autism, reading about autistic characters can often act as an outlet and a learning tool to discovering one’s own place in the world.</p>
                </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <br />
            </td>
            <td>
                <div class="post-content box mark-links" style="margin: 0px; padding: 0px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: arial, sans-serif; vertical-align: baseline; color: rgb(134, 134, 134); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    <p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;">
                        While some of these books are written specifically for children on the autism spectrum, others are aimed towards siblings and friends. Regardless of the specific audience, each of these 30 best children’s books about the autism spectrum provide a level of comfort and understanding that can only be achieved through a good story.</p>
                    <h3 style="margin: 0px 0px 5px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 20px; line-height: 1.4; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(119, 119, 119);">All Cats Have Asperger Syndrome (Jessica Kingsley Publishers, 2006)</h3>
                    <h3 style="margin: 0px 0px 5px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 20px; line-height: 1.4; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(119, 119, 119);">Kathy Hoopmann</h3>
                    <p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;">
                        <a href="https://www.appliedbehavioranalysisprograms.com/wp-content/uploads/2017/05/61Ta9OLCW6L._SX258_BO1204203200_.jpg" style="margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration: none; color: rgb(89, 189, 213); transition: background-color, color 0.2s linear;">
                        <img alt="Book Cover All Cats Have Asperger Syndrome" class="aligncenter wp-image-11909 size-full" height="263" sizes="(max-width: 260px) 100vw, 260px" src="https://www.appliedbehavioranalysisprograms.com/wp-content/uploads/2017/05/61Ta9OLCW6L._SX258_BO1204203200_.jpg" srcset="https://www.appliedbehavioranalysisprograms.com/wp-content/uploads/2017/05/61Ta9OLCW6L._SX258_BO1204203200_.jpg 260w, https://www.appliedbehavioranalysisprograms.com/wp-content/uploads/2017/05/61Ta9OLCW6L._SX258_BO1204203200_-50x50.jpg 50w, https://www.appliedbehavioranalysisprograms.com/wp-content/uploads/2017/05/61Ta9OLCW6L._SX258_BO1204203200_-65x65.jpg 65w" style="margin: 1em auto; padding: 5px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto !important; display: block; box-shadow: rgba(0, 0, 0, 0.5) 0px 0px 1px; clear: both;" width="260" /></a><br />
                        <strong style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">Ages 7 and Up</strong><br />
                        Not only does this delightful book include fun color photographs of cats and kittens, it also offers a humorous glimpse at some of the difficulties and joys of raising a child on the autism spectrum. Hoopmann draws insightful parallels between children with Asperger Syndrome and household cats, including sensitive hearing, picky eating habits, and a dislike of&nbsp;being touched.<br />
                        <span style="margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(0, 128, 128);">ISBN-10: 1843104814</span><br />
                        <span style="margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(0, 128, 128);">ISBN-13: 978-1843104810</span></p>
                    <p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;">
                        &nbsp;</p>
                    <h3 style="margin: 0px 0px 5px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 20px; line-height: 1.4; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(119, 119, 119);">All My Stripes: A Story for Children with Autism (Magination Press, 2015)</h3>
                    <h3 style="margin: 0px 0px 5px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 20px; line-height: 1.4; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(119, 119, 119);">Shaina Rudolph and Danielle Royer</h3>
                    <p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;">
                        <a href="https://www.appliedbehavioranalysisprograms.com/wp-content/uploads/2017/05/51XtOCmUrL._SX258_BO1204203200_.jpg" style="margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration: none; color: rgb(89, 189, 213); transition: background-color, color 0.2s linear;">
                        <img alt="Book Cover All My Stripes" class="aligncenter wp-image-11925 size-medium" height="300" sizes="(max-width: 241px) 100vw, 241px" src="https://www.appliedbehavioranalysisprograms.com/wp-content/uploads/2017/05/51XtOCmUrL._SX258_BO1204203200_-241x300.jpg" srcset="https://www.appliedbehavioranalysisprograms.com/wp-content/uploads/2017/05/51XtOCmUrL._SX258_BO1204203200_-241x300.jpg 241w, https://www.appliedbehavioranalysisprograms.com/wp-content/uploads/2017/05/51XtOCmUrL._SX258_BO1204203200_.jpg 260w" style="margin: 1em auto; padding: 5px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto !important; display: block; box-shadow: rgba(0, 0, 0, 0.5) 0px 0px 1px; clear: both;" width="241" /></a><br />
                        <strong style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">Ages 5-8</strong><br />
                        Zane the zebra has autism, and he is worried that his friends and classmates will make fun of his stripes, which make him different. As Zane learns that having autism is one of the many things that actually makes him special, young readers will relate to Zane and realize that they, too, have plenty to be proud of.<br />
                        <span style="margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(0, 128, 128);">ISBN-10: 1433819163</span><br />
                        <span style="margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(0, 128, 128);">ISBN-13: 978-1433819162</span></p>
                    <p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;">
                        &nbsp;</p>
                    <h3 style="margin: 0px 0px 5px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 20px; line-height: 1.4; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(119, 119, 119);">Andy and His Yellow Frisbee (Woodbine House, 1996)</h3>
                    <h3 style="margin: 0px 0px 5px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 20px; line-height: 1.4; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(119, 119, 119);">Mary Thompson</h3>
                    <p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;">
                        <a href="https://www.appliedbehavioranalysisprograms.com/wp-content/uploads/2017/05/273798.jpg" style="margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration: none; color: rgb(89, 189, 213); transition: background-color, color 0.2s linear;">
                        <img alt="Book Cover Andy and His Yellow Frisbee" class="aligncenter wp-image-11902 size-medium" height="300" sizes="(max-width: 245px) 100vw, 245px" src="https://www.appliedbehavioranalysisprograms.com/wp-content/uploads/2017/05/273798-245x300.jpg" srcset="https://www.appliedbehavioranalysisprograms.com/wp-content/uploads/2017/05/273798-245x300.jpg 245w, https://www.appliedbehavioranalysisprograms.com/wp-content/uploads/2017/05/273798.jpg 318w" style="margin: 1em auto; padding: 5px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto !important; display: block; box-shadow: rgba(0, 0, 0, 0.5) 0px 0px 1px; clear: both;" width="245" /></a><br />
                    </p>
                </div>
                <br class="Apple-interchange-newline" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


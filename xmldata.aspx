<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="xmldata.aspx.cs" Inherits="xmldata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 188px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" Runat="Server">
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" style="color: #0033CC; font-weight: 700; font-size: x-large" Text="Showing Information of Our Teachers"></asp:Label>
    </p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="XmlDataSource1" ForeColor="#333333" Height="299px" Width="657px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="tname" HeaderText="Name" SortExpression="tname" />
            <asp:BoundField DataField="area" HeaderText="Area of Work" SortExpression="area" />
            <asp:BoundField DataField="qualification" HeaderText="Qualifications" SortExpression="qualification" />
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
    <table class="auto-style1">
        <tr>
            <td>
                <section id="about" class="hestia-about " data-sorder="hestia_about" style="box-sizing: border-box; -webkit-tap-highlight-color: transparent; display: block; font-weight: 300; padding: 65px 0px; background-attachment: fixed; color: rgb(153, 153, 153); border-radius: 6px 6px 0px 0px; overflow: hidden; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    <div class="container" style="box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: auto; margin-left: auto; padding-left: 15px; padding-right: 15px; width: 1170px; max-width: 100%;">
                        <div class="row hestia-about-content" style="box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-left: -15px; margin-right: -15px;">
                            <div class="col-xs-12 col-sm-12 col-md-4 col-md-offset-1 about_steph-photo-container" style="box-sizing: border-box; -webkit-tap-highlight-color: transparent; position: relative; min-height: 1px; padding-left: 15px; padding-right: 15px; float: left; width: 390px; margin-left: 97.5px; text-align: center;">
                                <a href="https://i0.wp.com/asdteacher.com/wp-content/uploads/2018/04/steph-reed-asd-teacher-1.png" style="box-sizing: border-box; -webkit-tap-highlight-color: transparent; background-color: transparent; color: rgb(105, 80, 162); text-decoration: none; transition: 0.3s ease; outline: 0px; opacity: 0.75;">
                                <img alt="steph reed asd teacher teaching children with autism, autism training and outreach" class="aligncenter wp-image-1996" height="300" sizes="(max-width: 300px) 100vw, 300px" src="https://i0.wp.com/asdteacher.com/wp-content/uploads/2018/04/steph-reed-asd-teacher-1.png?resize=300%2C300" srcset="https://i0.wp.com/asdteacher.com/wp-content/uploads/2018/04/steph-reed-asd-teacher-1.png?w=800 800w, https://i0.wp.com/asdteacher.com/wp-content/uploads/2018/04/steph-reed-asd-teacher-1.png?resize=150%2C150 150w, https://i0.wp.com/asdteacher.com/wp-content/uploads/2018/04/steph-reed-asd-teacher-1.png?resize=300%2C300 300w, https://i0.wp.com/asdteacher.com/wp-content/uploads/2018/04/steph-reed-asd-teacher-1.png?resize=768%2C768 768w, https://i0.wp.com/asdteacher.com/wp-content/uploads/2018/04/steph-reed-asd-teacher-1.png?resize=50%2C50 50w" style="box-sizing: border-box; -webkit-tap-highlight-color: transparent; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin: 0px auto 24px;" width="300" /></a></div>
                            <div class="col-xs-12 col-sm-12 col-md-6 about_text-container" style="box-sizing: border-box; -webkit-tap-highlight-color: transparent; position: relative; min-height: 1px; padding-left: 15px; padding-right: 15px; float: left; width: 585px; color: rgb(128, 128, 128); text-align: left; padding-top: 35px;">
                                <p style="box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 0px 10px; font-size: 18px;">
                                    I have 12 years of experience and training in teaching children with autism&nbsp;in both specialist and&nbsp;mainstream&nbsp;settings.</p>
                                <p style="box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 0px 10px; font-size: 18px;">
                                    I write regular blog posts on effective teaching&nbsp;strategies and resources to enable children with autism to be successful.</p>
                                <p style="box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 0px 10px; font-size: 18px;">
                                    Scroll down to find my articles!</p>
                                <p style="box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 0px 10px; font-size: 18px;">
                                    <a class="btn btn-primary btn-lg" href="http://asdteacher.com/about-me/" style="box-sizing: border-box; -webkit-tap-highlight-color: transparent; background-color: rgb(105, 80, 162); color: rgb(255, 255, 255); text-decoration: none; transition: box-shadow 0.2s cubic-bezier(0.4, 0, 1, 1), background-color 0.2s cubic-bezier(0.4, 0, 0.2, 1), -webkit-box-shadow 0.2s cubic-bezier(0.4, 0, 1, 1); display: inline-block; margin: 10px 1px; font-weight: 400; text-align: center; vertical-align: middle; touch-action: manipulation; cursor: pointer; background-image: none; border: none; white-space: normal; padding: 12px 30px; font-size: 12px; line-height: 1.33333; border-radius: 3px; user-select: none; position: relative; letter-spacing: 0px; text-transform: uppercase; will-change: box-shadow, transform; box-shadow: rgba(105, 80, 162, 0.14) 0px 2px 2px 0px, rgba(105, 80, 162, 0.2) 0px 3px 1px -2px, rgba(105, 80, 162, 0.12) 0px 1px 5px 0px; outline: none;" title="About Steph">ABOUT STEPH</a></p>
                            </div>
                        </div>
                    </div>
                </section>
                <section id="subscribe" class="hestia-subscribe subscribe-line subscribe-line-image" data-sorder="hestia_subscribe" style="box-sizing: border-box; -webkit-tap-highlight-color: transparent; display: block; padding: 65px 0px; position: relative; background-position: center top; background-size: cover; color: rgb(60, 72, 88); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 300; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; background-image: url(&quot;http://asdteacher.com/wp-content/uploads/2017/08/communication.jpg&quot;);">
                    <div class="container" style="box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin-right: auto; margin-left: auto; padding-left: 15px; padding-right: 15px; width: 1170px; max-width: 100%; position: relative; z-index: 2;">
                        <div class="row text-center" style="box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: center; margin-left: -15px; margin-right: -15px;">
                            <div class="col-md-8 col-md-offset-2 text-center hestia-subscribe-title-area" style="box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-align: center; position: relative; min-height: 1px; padding-left: 15px; padding-right: 15px; float: left; width: 780px; margin-left: 195px;">
                                <br class="Apple-interchange-newline" />
                            </div>
                        </div>
                    </div>
                </section>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/teacher.xml"></asp:XmlDataSource>
    <p>
    </p>
</asp:Content>


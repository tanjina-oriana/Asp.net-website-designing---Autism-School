using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class comment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        String query = "insert into commentbox(email,comm) values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
        String mycon = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\aspnet projects\web4\autism4\App_Data\comm1.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        DataList1.DataBind();
        Label5.Text = "Thanks For Giving Feedback as Comment on Website";
    }
}
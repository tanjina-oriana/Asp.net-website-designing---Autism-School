using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class stdelete : System.Web.UI.Page
{

    static String imagelink;
    protected void Page_Load(object sender, EventArgs e)
    {

    }





    protected void Button1_Click(object sender, EventArgs e)
    {
        String mycon = ConfigurationManager.ConnectionStrings["stregConnectionString"].ConnectionString;
        String myquery = "Select * from profiledetail where rollno=" + TextBox1.Text;
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Labeld.Text = "Particular Roll Number Found";
            TextBox2.Text = ds.Tables[0].Rows[0]["sname"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0]["fname"].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0]["mname"].ToString();
            imagelink = ds.Tables[0].Rows[0]["profileimage"].ToString();
            Image1.ImageUrl = imagelink + "?n=" + DateTime.Now.Second.ToString();

        }
        else
        {
            Labeld.Text = "Particular Roll Number Not Found";

        }
        con.Close();
    }

         protected void Button2_Click(object sender, EventArgs e)
    {

        String myconn = ConfigurationManager.ConnectionStrings["stregConnectionString"].ConnectionString;
        String deletedata = "delete from ProfileDetail where rollno=" + TextBox1.Text;
        SqlConnection conn = new SqlConnection(myconn);
        conn.Open();
        SqlCommand cmdd = new SqlCommand();
        cmdd.CommandText = deletedata;
        cmdd.Connection = conn;
        cmdd.ExecuteNonQuery();
        Labeld.Text = "Particular Searched Rollno Has Been Deleted";
        System.IO.File.Delete(Server.MapPath(imagelink));


    }

}
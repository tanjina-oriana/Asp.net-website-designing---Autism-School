using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class library : System.Web.UI.Page
{

    static String bookup;

    static Int32 bookid;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (uploadresume() == true)
        {

            String query = "insert into book1 (bookid,bookup) values(" + bookid + ",'" + bookup + "')";
            String mycon = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\aspnet projects\web4\autism4\App_Data\book.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label2.Text = "The uploaded book id is " + bookid.ToString() + "";



        }
    }



    private Boolean uploadresume()
    {
        Boolean resumesaved = false;
        if (FileUpload1.HasFile == true)
        {

            String contenttype = FileUpload1.PostedFile.ContentType;

            if (contenttype == "application/pdf")
            {
                int filesize;
                filesize = FileUpload1.PostedFile.ContentLength;

                getapplicationid();
                FileUpload1.SaveAs(Server.MapPath("~/uploadbooks/") + bookid + ".pdf");

                bookup = "uploadbooks/" + bookid + ".pdf";
                resumesaved = true;
                Label1.Text = "";
            }
            else
            {
                Label1.Text = "Upload Book in PDF Format Only";
            }

        }
        else
        {
            Label1.Text = "Kindly Upload Book Before Apply in PDF Format";
        }


        return resumesaved;
    }




    public void getapplicationid()
    {

        String mycon = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\aspnet projects\web4\autism4\App_Data\book.mdf;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);

        String myquery = "select bookid from book1";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        scon.Close();
        if (ds.Tables[0].Rows.Count < 1)
        {
           bookid = 10001;

        }
        else
        {



            String mycon1 = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\aspnet projects\web4\autism4\App_Data\book.mdf;Integrated Security=True";
            SqlConnection scon1 = new SqlConnection(mycon1);
            String myquery1 = "select max(bookid) from book1";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = scon1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            bookid = Convert.ToInt32(ds1.Tables[0].Rows[0][0].ToString());
             bookid = bookid + 1;
            scon1.Close();
        }

    }




}
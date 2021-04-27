using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class User2 : System.Web.UI.Page
{


    static String imagelink;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            if (uploadimage() == true)
            {
                String mycon = ConfigurationManager.ConnectionStrings["stregConnectionString"].ConnectionString;
                String updatedata = "Update [ProfileDetail] set sname='" + TextBox2.Text + "', mname='" + TextBox3.Text + "', fname='" + TextBox4.Text + "', profileimage='" + imagelink + "' where rollno=" + TextBox1.Text;
                SqlConnection con = new SqlConnection(mycon);
               
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = updatedata;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Labelupdate.Text = "Record Has Been Updated Successfully";
               
            }
        }
        else
        {
            String mycon = ConfigurationManager.ConnectionStrings["stregConnectionString"].ConnectionString;
            String updatedata = "Update ProfileDetail set sname='" + TextBox2.Text + "', fname='" + TextBox3.Text + "', mname='" + TextBox4.Text + "' where rollno=" + TextBox1.Text;
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Labelupdate.Text = "Record Has Been Updated Successfully";
            
        }
    }


    protected void Button3_Click(object sender, EventArgs e)
    {

        String myconn = ConfigurationManager.ConnectionStrings["stregConnectionString"].ConnectionString;
        String deletedata = "delete from ProfileDetail where rollno=" + TextBox1.Text;
        SqlConnection conn = new SqlConnection(myconn);
        conn.Open();
        SqlCommand cmdd = new SqlCommand();
        cmdd.CommandText = deletedata;
        cmdd.Connection = conn;
        cmdd.ExecuteNonQuery();
        Labelupdate.Text = "Particular Searched Rollno Has Been Deleted";
        System.IO.File.Delete(Server.MapPath(imagelink));


    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        String imagelink1;
        String mycon = ConfigurationManager.ConnectionStrings["stregConnectionString"].ConnectionString;
        String myquery = "Select * from ProfileDetail where rollno=" + TextBox1.Text;
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
            Labelsearch.Text = "Particular Roll Number Found";
            TextBox2.Text = ds.Tables[0].Rows[0]["sname"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0]["fname"].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0]["mname"].ToString();
            imagelink1 = ds.Tables[0].Rows[0]["profileimage"].ToString();
            Image1.ImageUrl = imagelink1 + "?n=" + DateTime.Now.Second.ToString();
        }
        else
        {
            Labelsearch.Text = "Particular Roll Number Not Found";

        }
        con.Close();
    }



   







    private Boolean uploadimage()
    {
        Boolean imagesaved = false;
        if (FileUpload1.HasFile == true)
        {

            String contenttype = FileUpload1.PostedFile.ContentType;

            if (contenttype == "image/jpeg")
            {
                int filesize;
                filesize = FileUpload1.PostedFile.ContentLength;

                if (filesize <= 51200)
                {
                    System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
                    int height = img.Height;
                    int width = img.Width;
                    if (height == 200 && width == 200)
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/ProfileImage/") + TextBox1.Text + ".jpg");
                        Image1.ImageUrl = "~/ProfileImage/" + TextBox1.Text + ".jpg";
                        imagelink = "ProfileImage/" + TextBox1.Text + ".jpg";
                        imagesaved = true;
                    }
                    else
                    {
                        Labelupdate.Text = "Kindly Upload JPEG Image in Proper Dimensions 200 x 200";
                    }




                }
                else
                {
                    Labelupdate.Text = "File Size exceeds 50 KB - Please Upload File Size Maximum 50 KB";
                }

            }
            else
            {
                Labelupdate.Text = "Only JPEG/JPG Image File Acceptable - Please Upload Image File Again";
            }
        }
        else
        {
            Labelupdate.Text = "You have not selected any file - Browse and Select File First";
        }

        return imagesaved;

    }
}
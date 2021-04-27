using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class stregister : System.Web.UI.Page
{


    static String imagelink;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        if (uploadimage() == true)
        {
            String query = "insert into [ProfileDetail](rollno,sname,fname,mname,profileimage) values(" + TextBox1.Text + ",'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + imagelink + "')";
            String mycon = ConfigurationManager.ConnectionStrings["stregConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Labelsave.Text = "Registration Has Been Saved Successfully";
        }

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
                        Labelsave.Text = "Kindly Upload JPEG Image in Proper Dimensions 200 x 200";
                    }




                }
                else
                {
                    Labelsave.Text = "File Size exceeds 50 KB - Please Upload File Size Maximum 50 KB";
                }

            }
            else
            {
                Labelsave.Text = "Only JPEG/JPG Image File Acceptable - Please Upload Image File Again";
            }
        }
        else
        {
            Labelsave.Text = "You have not selected any file - Browse and Select File First";
        }

        return imagesaved;

    }



}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class adminwindow : System.Web.UI.Page
{
    static String routine;
    static Int32 applicationid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {

            Response.Redirect("home.aspx");


        }
        else
        {
            Label2.Text = "Hello " + Session["email"].ToString();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("admin.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (uploadresume() == true)
        {

            String query = "insert into routine1 (applicationid,routine) values(" + applicationid + ",'" + routine + "')";
            String mycon = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\aspnet projects\web4\autism4\App_Data\up1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label4.Text = "The uploaded file id is " + applicationid.ToString() + "";
           


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
                FileUpload1.SaveAs(Server.MapPath("~/UploadedResume/") + applicationid + ".pdf");

                routine = "UploadedResume/" + applicationid + ".pdf";
                resumesaved = true;
                Label3.Text = "";
            }
            else
            {
                Label3.Text = "Upload File in PDF Format Only";
            }

        }
        else
        {
            Label3.Text = "Kindly Upload File Before Apply in PDF Format";
        }


        return resumesaved;
    }
    public void getapplicationid()
    {

        String mycon = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\aspnet projects\web4\autism4\App_Data\up1.mdf;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);

        String myquery = "select applicationid from routine1";
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
            applicationid = 10001;

        }
        else
        {



            String mycon1 = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\aspnet projects\web4\autism4\App_Data\up1.mdf;Integrated Security=True";
            SqlConnection scon1 = new SqlConnection(mycon1);
            String myquery1 = "select max(applicationid) from routine1";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = scon1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            applicationid = Convert.ToInt32(ds1.Tables[0].Rows[0][0].ToString());
            applicationid = applicationid + 1;
            scon1.Close();
        }

    }
}
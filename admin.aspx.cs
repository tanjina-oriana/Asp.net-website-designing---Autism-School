using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class admin : System.Web.UI.Page
{



    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            if (Request.Cookies["email"] != null)
            {
                TextBox1.Text = Request.Cookies["email"].Value;
            }
            if (Request.Cookies["password"] != null)
            {
                TextBox2.Attributes.Add("value", Request.Cookies["password"].Value);

            }

            if (Request.Cookies["email"] != null && Request.Cookies["password"] != null)
            {
                CheckBox1.Checked = true;
            }

        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
      
        String mycon = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\aspnet projects\web4\autism4\App_Data\admindata.mdf;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);

        String myquery = "select * from admintable where email='" + TextBox1.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        String uname;
        String pass;
        if (ds.Tables[0].Rows.Count > 0)
        {
            uname = ds.Tables[0].Rows[0]["email"].ToString();
            pass = ds.Tables[0].Rows[0]["password"].ToString();

            scon.Close();
            if (uname == TextBox1.Text && pass == TextBox2.Text)
            {
                Session["email"] = uname;
                if (CheckBox1.Checked == true)
                {
                    Response.Cookies["email"].Value = TextBox1.Text;
                    Response.Cookies["password"].Value = TextBox2.Text;
                    Response.Cookies["email"].Expires = DateTime.Now.AddMinutes(1);
                    Response.Cookies["password"].Expires = DateTime.Now.AddMinutes(1);
                }
                else
                {
                    Response.Cookies["email"].Expires = DateTime.Now.AddMinutes(-1);
                    Response.Cookies["password"].Expires = DateTime.Now.AddMinutes(-1);
                }
                Response.Redirect("adminwindow.aspx");
            }
            else
            {
                Label3.Text = "Invalid email or Password - Relogin with Correct email Password";
            }
        }
        else
        {
            Label3.Text = "Invalid email or Password - Relogin with Correct email Password";
        }



    }

}
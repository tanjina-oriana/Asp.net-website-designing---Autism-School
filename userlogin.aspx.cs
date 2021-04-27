using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string checkmail = "select count(*) from [registration] where Email='" + TextBox9.Text + "'";
        SqlCommand com = new SqlCommand(checkmail, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "select password from [registration] where Email='" + TextBox9.Text + "'";
            SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
            string password = passComm.ExecuteScalar().ToString().Replace(" ", "");

            if (password == TextBox10.Text)
            {
                Session["New"] = TextBox10.Text;

                Response.Write("Password is correct");
                Response.Redirect("Userhome.aspx");

            }
            else
            {
                Response.Write("Password is not correct");

            }
        }

    }
}
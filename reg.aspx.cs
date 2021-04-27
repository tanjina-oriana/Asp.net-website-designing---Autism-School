using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class reg : System.Web.UI.Page
{
    int temp = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkmail = "select count(*) from [registration] where Email='" + TextBox2.Text + "'";
            SqlCommand com = new SqlCommand(checkmail, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("Email Already Exists");
            }
            conn.Close();





        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into [registration](Username,Email,Password,Country) values(@uname,@email,@password,@country)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
           
            com.Parameters.AddWithValue("@uname", TextBox1.Text);
            com.Parameters.AddWithValue("@email", TextBox2.Text);
            com.Parameters.AddWithValue("@password", TextBox3.Text);
            com.Parameters.AddWithValue("@country", TextBox5.Text);

            com.ExecuteNonQuery();
           // Response.Redirect("Manager.aspx");
            Response.Write("Registration is successful");
            Response.Redirect("login.aspx");
          

            conn.Close();

        }
        catch (Exception ex)
        {

            Response.Write("Error:" + ex.ToString());

        }
    }
    
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class Updateuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            cn.Open();
            String updatedata = "Update [registration] set Username='" + TextBox1.Text + "', Password='" + TextBox3.Text + "',Country='" + TextBox5.Text + "'  where Email=" + TextBox2.Text;

          
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            Label2.Text = "Record Has Been Updated Successfully";
        }
        catch (Exception ex)
        {

            Response.Write("Error:" + ex.ToString());

        }
    }
}
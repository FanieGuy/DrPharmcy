using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Login : System.Web.UI.Page
{
    public SqlConnection myConn = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string selectQuery = "SELECT * FROM tblAdmin";

        try
        {
            myConn.Open();

            SqlCommand com = new SqlCommand(selectQuery, myConn);
            SqlDataReader reader = com.ExecuteReader();

            while (reader.Read())
            {
                var returnedUsername = reader.GetValue(1);
                var returnedPassword = reader.GetValue(2);

                if (returnedUsername.ToString() == txtUsername.Text.Trim() && returnedPassword.ToString() == txtPassword.Text.Trim())
                {
                    if (ddlPatient.Text == "View Bookings / Add Appointment") 
                    {
                        Response.Redirect("~/AddPatient.aspx");
                    }
                    else if (ddlPatient.Text == "View Appointments")
                    {
                        Response.Redirect("~/ViewPatients.aspx");
                    }

                }
                else
                {
                    lblStatus.Text = "Incorrect username or password (or unauthorized access).";
                }
            }
       }
    
       catch (Exception ex)
       {
            lblStatus.Text = "Encountered problem"+ ex.Message;
       }
       finally
        {
            myConn.Close();
        }
   }
}
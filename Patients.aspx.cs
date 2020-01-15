using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Book : System.Web.UI.Page
{
    public SqlConnection myConn = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Booking book = new Booking();
        book.AddBooking(txtFullName.Text,txtCellNumber.Text,txtAddress.Text,txtDate.Text,txtTime.Text,txtMessage.Text);
        lblStatus.Text = book.status;
    }
    protected void btnViewAppointments_Click(object sender, EventArgs e)
    {
        string selectQuery = "SELECT * FROM tblDoctors";

        try
        {
            myConn.Open();

            SqlCommand com = new SqlCommand(selectQuery, myConn);
            SqlDataReader reader = com.ExecuteReader();

            while (reader.Read())
            {
                Response.Redirect("~/ViewAppTime.aspx");
            }

        }
        catch (Exception ex)
        {
            lblStatus.Text = "Encountered problem" + ex.Message;
        }
        finally
        {
            myConn.Close();
        }
    }
}
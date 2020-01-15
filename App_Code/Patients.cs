using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for Patients
/// </summary>
public class Patients
{
    public SqlConnection myConn = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);
    public string status;
    public Patients()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void AddPatient(string patientID, string fullName,string cellNumber,string address, string date, string time,string message)
    {
        string insertQuery = "INSERT INTO tblPatients(PatientID,FullName,CellNumber,Address,Date,Time,Message)VALUES(@patientID,@fullName,@cellNumber,@address,@date,@time,@message)";
        try
        {
            myConn.Open();
            SqlCommand com = new SqlCommand(insertQuery, myConn);

            com.Parameters.AddWithValue("@patientID", patientID);
            com.Parameters.AddWithValue("@fullName", fullName);
            com.Parameters.AddWithValue("@cellNumber", cellNumber);
            com.Parameters.AddWithValue("@address", address);
            com.Parameters.AddWithValue("@date", date);
            com.Parameters.AddWithValue("@time", time);
            com.Parameters.AddWithValue("@message", message);

            int answer = com.ExecuteNonQuery();
            if (answer == 1)
            {
                status = "Patient added succesfully.";
            }
        }
            catch(Exception ex)
            {
                status = "Encountered problem :"+ex.Message;
            }
            finally
            {
                myConn.Close();
            }
        }

    public void ViewPatients(GridView myGrid)
    {
        string selectQuery = "SELECT * FROM tblPatients";
        try
        {
            myConn.Open();
            SqlCommand com = new SqlCommand(selectQuery, myConn);
            SqlDataAdapter myDataAdapter = new SqlDataAdapter(com);

            DataSet myDataSet = new DataSet();

            myDataAdapter.Fill(myDataSet, "tblPatients");
            myGrid.DataSource = myDataSet;
            myGrid.DataBind();
        }
        catch (SqlException ex)
        {
            status = "Error :" + ex.Message;
        }
        finally
        {
            myConn.Close();
        }
    }
}

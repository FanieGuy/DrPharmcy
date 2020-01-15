using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for RegisterUser
/// </summary>
public class RegisterUser
{
    public SqlConnection myConn = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);
    public string status;
    public RegisterUser()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public void RegisterUsers(string username,string password,string passwordC)
    {
        string insertQuery = "INSERT INTO tblUsers(Username,Password,PasswordC)VALUES(@username,@password,@passwordC)";
        try
        {
            myConn.Open();
            SqlCommand com = new SqlCommand(insertQuery, myConn);

            com.Parameters.AddWithValue("@username",username);
            com.Parameters.AddWithValue("@password",password);
            com.Parameters.AddWithValue("@passwordC", passwordC);

            int answer = com.ExecuteNonQuery();

            if (password != passwordC)
            {
                status = "Password and Confirm password must match"; 

            } else if (answer == 1)
            {
                status = "Patient added succesfully.";
            }
        }
        catch (Exception ex)
        {
            status = "Encountered problem :" + ex.Message;
        }
        finally
        {
            myConn.Close();
        }
    }

}
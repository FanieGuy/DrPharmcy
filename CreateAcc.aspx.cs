using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class CreateAcc : System.Web.UI.Page
{
    public SqlConnection myConn = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        RegisterUser reg = new RegisterUser();
        reg.RegisterUsers(txtUsername.Text, txtPassword.Text, txtPasswordC.Text);
        lblStatus.Text = reg.status;

    }
}
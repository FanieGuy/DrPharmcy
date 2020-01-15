using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewPatients : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Patients patient = new Patients();
 //       patient.ViewPatients(gdvDisplay);
        lblStatus.Text = patient.status;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
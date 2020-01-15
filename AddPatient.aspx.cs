using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddPatient : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Patients patient = new Patients();
        patient.AddPatient(txtPatientID.Text,txtFullName.Text,txtCellNumber.Text,txtAddress.Text,txtDate.Text,txtTime.Text,txtMessage.Text);
        lblStatus.Text = patient.status;
    }
}
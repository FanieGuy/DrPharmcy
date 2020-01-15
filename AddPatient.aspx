<%@ Page Title="" Language="C#" MasterPageFile="~/NAV.master" AutoEventWireup="true" CodeFile="AddPatient.aspx.cs" Inherits="AddPatient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style13 {
        }
        .auto-style14 {
            width: 66px;
        }
        .auto-style15 {
            width: 1366px;
        }
    .auto-style16 {
        width: 178px;
    }
        .auto-style17 {
            width: 178px;
            height: 5px;
        }
        .auto-style18 {
            height: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style16" colspan="2" style="color: #008000; font-weight: bold; font-size: large">Patient Bookings</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Patient_Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Patient_Id" HeaderText="Patient_Id" InsertVisible="False" ReadOnly="True" SortExpression="Patient_Id" />
                    <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                    <asp:BoundField DataField="Cell" HeaderText="Cell" SortExpression="Cell" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                    <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConnection %>" SelectCommand="SELECT * FROM [tblBookings]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style14" style="color: #008000; font-size: large; font-weight: bold; text-decoration: blink;">Create Appointments</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style16" style="background-color: #C0C0C0;"></td>
        <td style="background-color: #C0C0C0">
            </td>
    </tr>
    <tr>
        <td class="auto-style16" style="background-color: #C0C0C0">Patient_ID</td>
        <td style="background-color: #C0C0C0">
            <asp:TextBox ID="txtPatientID" runat="server" BorderColor="#0099CC"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style16" style="background-color: #C0C0C0">Full name</td>
        <td style="background-color: #C0C0C0">
            <asp:TextBox ID="txtFullName" runat="server" BorderColor="#0099CC"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style16" style="background-color: #C0C0C0">Cell number</td>
        <td style="background-color: #C0C0C0">
            <asp:TextBox ID="txtCellNumber" runat="server" BorderColor="#0099CC"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style16" style="background-color: #C0C0C0">Physical Address</td>
        <td style="background-color: #C0C0C0">
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" BorderColor="#0099CC"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style17" style="background-color: #C0C0C0">Date</td>
        <td class="auto-style18" style="background-color: #C0C0C0">
            <asp:TextBox ID="txtDate" runat="server" TextMode="Date" BorderColor="#0099CC"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style16" style="background-color: #C0C0C0">Time</td>
        <td style="background-color: #C0C0C0">
            <asp:TextBox ID="txtTime" runat="server" TextMode="Time" BorderColor="#0099CC"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14" style="background-color: #C0C0C0">Message / Reason / Diagnose</td>
        <td style="background-color: #C0C0C0">
            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" BorderColor="#0099CC"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style16" style="background-color: #C0C0C0"></td>
        <td style="background-color: #C0C0C0">
            <asp:Label ID="lblStatus" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style16" style="background-color: #C0C0C0">
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" ForeColor="Red" NavigateUrl="~/Home.aspx">LOGOUT</asp:HyperLink>
        </td>
        <td style="background-color: #C0C0C0">
            <asp:Button ID="btnAddPatient" runat="server" OnClick="Button1_Click" Text="Add Patient" BorderColor="#0099CC" BorderStyle="Inset" />
        </td>
    </tr>
</table>
</asp:Content>


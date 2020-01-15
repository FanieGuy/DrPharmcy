<%@ Page Title="" Language="C#" MasterPageFile="~/NAV.master" AutoEventWireup="true" CodeFile="Patients.aspx.cs" Inherits="Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style13 {
            width: 172px;
        }
        .auto-style14 {
            height: 23px;
        }
        .auto-style15 {
            height: 23px;
        }
        .auto-style16 {
            height: 25px;
        }
        .auto-style18 {
        width: 178px;
    }
    .auto-style19 {
            width: 177px;
        }
        .auto-style20 {
            height: 34px;
        }
        .auto-style21 {
            height: 34px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="border: medium solid #0099CC">
        <tr>
            <td class="auto-style20" colspan="2">
                <asp:Button ID="btnViewAppointments" runat="server" BorderColor="Black" BorderStyle="Solid" OnClick="btnViewAppointments_Click" Text="View Appointments" Width="181px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style20" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">Full name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="border-style: solid; border-width: thin">
                <asp:TextBox ID="txtFullName" runat="server" BorderStyle="Solid" Width="172px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">Cell number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="border-style: solid; border-width: thin">
                <asp:TextBox ID="txtCellNumber" runat="server" BorderStyle="Solid" Width="172px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">Physical Address</td>
            <td style="border-style: solid; border-width: thin">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2" style="border-style: solid; border-width: thin; color: #FF0000; font-style: italic; font-weight: bold">Final appointment dates and time will be allocated by the administrator</td>
        </tr>
        <tr>
            <td class="auto-style19">Date</td>
            <td class="auto-style18" style="border-style: solid; border-width: thin">
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date" BorderStyle="Solid" Width="172px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">Preferd appointment time&nbsp;&nbsp; </td>
            <td style="border-style: solid; border-width: thin">
                <asp:TextBox ID="txtTime" runat="server" TextMode="Time" BorderStyle="Solid" Width="172px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">Rreason for your appointment(e.g illness, injury ...)</td>
            <td style="border-style: solid; border-width: thin">
                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" BorderStyle="Solid" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td style="border-style: solid; border-width: thin">
                <asp:Label ID="lblStatus" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td style="border-style: solid; border-width: thin">
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" BorderStyle="Solid" style="height: 26px" />
            </td>
        </tr>
    </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/NAV.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style13 {
            width: 126px;
        }
    .auto-style14 {
        width: 284px;
        height: 17px;
    }
    .auto-style15 {
        height: 17px;
    }
    .auto-style17 {
        height: 23px;
    }
    .auto-style19 {
        height: 26px;
    }
    .auto-style21 {
        height: 28px;
    }
    .auto-style23 {
        width: 178px;
        height: 25px;
    }
    .auto-style25 {
        height: 23px;
        width: 144px;
    }
    .auto-style26 {
        height: 26px;
        width: 144px;
    }
    .auto-style27 {
            height: 28px;
            width: 144px;
        }
    .auto-style28 {
        width: 144px;
        height: 25px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="border: thin outset #0099CC; font-family: Arial;">
        <tr>
            <td class="auto-style28" style="border-style: solid; border-width: thin;">Username</td>
            <td class="auto-style23" style="border-style: solid; border-width: thin;">
                <asp:TextBox ID="txtUsername" runat="server" BackColor="White" BorderStyle="Groove" ForeColor="#0099CC"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25" style="border-style: solid; border-width: thin;">Password</td>
            <td class="auto-style17" style="border-style: solid; border-width: thin;">
                <asp:TextBox ID="txtPassword" runat="server" BackColor="White" BorderStyle="Groove" ForeColor="#0099CC" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style26" style="border-style: solid; border-width: thin;">Administrator option</td>
            <td class="auto-style19" style="border-style: solid; border-width: thin;">
               
                <asp:DropDownList ID="ddlPatient" runat="server" BackColor="White" ForeColor="#0099CC">
                    <asp:ListItem>View Bookings / Add Appointment</asp:ListItem>
                    <asp:ListItem>View Appointments</asp:ListItem>
                </asp:DropDownList>
               
            </td>
        </tr>
        <tr>
            <td class="auto-style27" style="border-style: solid; border-width: thin;">&nbsp;</td>
            <td class="auto-style21" style="border-style: solid; border-width: thin;">
                <asp:Label ID="lblStatus" runat="server" BorderColor="White" BorderStyle="Dotted" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style27" style="border-style: solid; border-width: thin;"></td>
            <td class="auto-style21" style="border-style: solid; border-width: thin;">
                <asp:Button ID="btnLogin" runat="server" Text="LOGIN" OnClick="btnLogin_Click" BackColor="White" BorderColor="#0099CC" ForeColor="Black" />
            </td>
        </tr>
    </table>
</asp:Content>


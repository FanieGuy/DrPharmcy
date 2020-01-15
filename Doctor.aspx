<%@ Page Title="" Language="C#" MasterPageFile="~/NAV.master" AutoEventWireup="true" CodeFile="Doctor.aspx.cs" Inherits="Doctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style23 {
            width: 178px;
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
        .auto-style24 {
            width: 8px;
        }
        .auto-style25 {
            height: 23px;
            width: 8px;
        }
        .auto-style26 {
            height: 26px;
            width: 8px;
        }
        .auto-style27 {
            height: 28px;
            width: 8px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="font-family: Arial">
        <tr>
            <td class="auto-style24" style="background-color: #C0C0C0; font-family: Arial;">Username</td>
            <td class="auto-style23" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtUsername" runat="server" BorderColor="#0099CC" BorderStyle="Outset" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25" style="background-color: #C0C0C0; font-family: Arial;">Password</td>
            <td class="auto-style17" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" BorderColor="#0099CC" BorderStyle="Outset" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style26" style="background-color: #C0C0C0;"></td>
            <td class="auto-style19" style="background-color: #C0C0C0">
                <asp:Label ID="lblStatus" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style27" style="background-color: #C0C0C0;"></td>
            <td class="auto-style21" style="background-color: #C0C0C0; margin-left: 40px;">
                <asp:Button ID="btnLogin" runat="server" Text="View Patients" OnClick="btnLogin_Click" BorderColor="#0099CC" BorderStyle="Outset" Width="170px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style27" style="background-color: #C0C0C0;"></td>
            <td class="auto-style21" style="background-color: #C0C0C0">&nbsp;</td>
        </tr>
    </table>
</asp:Content>


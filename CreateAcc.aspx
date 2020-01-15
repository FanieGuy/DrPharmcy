<%@ Page Title="" Language="C#" MasterPageFile="~/NAV.master" AutoEventWireup="true" CodeFile="CreateAcc.aspx.cs" Inherits="CreateAcc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            width: 125px;
        }
        .auto-style17 {
            height: 23px;
        }
        .auto-style18 {
            height: 23px;
            width: 128px;
        }
        .auto-style19 {
            height: 23px;
            width: 125px;
        }
        .auto-style20 {
            width: 128px;
        }
        .auto-style1 {
            width: 355px;
        }
        .auto-style21 {
            width: 125px;
            height: 26px;
        }
        .auto-style22 {
            width: 128px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="border: medium solid #FF0000">
        <tr>
            <td class="auto-style17" colspan="2">create account below</td>
        </tr>
        <tr>
            <td class="auto-style17" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">Username</td>
            <td class="auto-style20">
                <asp:TextBox ID="txtUsername" runat="server" BackColor="#CCCCCC" BorderColor="Red" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Password</td>
            <td class="auto-style20">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" BackColor="#CCCCCC" BorderColor="Red" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">Confirm Password</td>
            <td class="auto-style22">
                <asp:TextBox ID="txtPasswordC" runat="server" TextMode="Password" BackColor="#CCCCCC" BorderColor="Red" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style20">
                <asp:Label ID="lblStatus" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style20">
                <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" OnClick="btnSubmit_Click" BackColor="#999999" BorderColor="#669900" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
        </tr>
    </table>
</asp:Content>


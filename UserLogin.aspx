<%@ Page Title="" Language="C#" MasterPageFile="~/NAV.master" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="NewUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style38 {
            width: 238px;
        }
        .auto-style40 {
            width: 177%;
        }
        .auto-style41 {
            width: 238px;
            height: 42px;
        }
        .auto-style42 {
            width: 354px;
        }
        .auto-style43 {
        }
        .auto-style44 {
            width: 208px;
        }
        .auto-style45 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="border-style: solid; border-color: #0099CC; text-align: center; width: 435px;">
        <tr>
            <td style="text-align: center" class="auto-style38"></td>
        </tr>
        <tr>
            <td style="text-align: center" class="auto-style41">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style45" style="font-weight: bold; color: #0099CC">&nbsp;LOGIN</span><br />
            </td>
        </tr>
        <tr>
            <td style="text-align: center" class="auto-style38">
                <table class="auto-style40">
                    <tr>
                        <td class="auto-style44" style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Username</td>
                        <td class="auto-style42" style="text-align: center">
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style44" style="text-align: center">&nbsp;Password</td>
                        <td class="auto-style42" style="text-align: center">
                <asp:TextBox ID="txtPassword" runat="server" style="margin-left: 0px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style44">&nbsp;</td>
                        <td style="text-align: left" class="auto-style42">
                <asp:Label ID="lblStatus" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style43" colspan="2">
                <asp:Button ID="btnLogin" runat="server" Text="Login" Width="132px" OnClick="btnLogin_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style43" colspan="2">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CreateAcc.aspx">Create new account</asp:HyperLink>
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        </table>
</asp:Content>


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="FlmWebFormsApp.Student.StudentLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Login</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <table class="auto-style1">
                <tr>
                    <td colspan="2" align="center">
                        <asp:Label ID="Label1" runat="server" Text="Student Login" Font-Bold="True" Font-Size="Large" ForeColor="#0033CC"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">User Name: </td>
                    <td>
                        <asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password:</td>
                    <td>
                        <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="LblError" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" />
                    </td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>

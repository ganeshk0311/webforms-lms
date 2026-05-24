<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AttemptTest.aspx.cs" Inherits="FlmWebFormsApp.Student.AttemptTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Lblwelcome" runat="server" Text=""></asp:Label>
            <table>
                <tr>
                    <td colspan="2" align="center"><h2>Attempt Test</h2></td>
                </tr>
                <tr>
                    <td>Question: </td>
                    <td>
                        <asp:Label ID="LblQuestion" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Answer1: <asp:Label ID="LblAnswer1" runat="server" Text="Label"></asp:Label></td>
                
                    <td>Answer2: <asp:Label ID="LblAnswer2" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>Answer3: <asp:Label ID="LblAnswer3" runat="server" Text="Label"></asp:Label></td>
                
                    <td>Answer4: <asp:Label ID="LblAnswer4" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>Select Correct Answer: </td>
                    <td>
                        <asp:DropDownList ID="DdlCorrectanswer" runat="server">
                            <asp:ListItem>Select Correct Answer</asp:ListItem>
                            <asp:ListItem Value="1">Answer1</asp:ListItem>
                            <asp:ListItem Value="2">Answer2</asp:ListItem>
                            <asp:ListItem Value="3">Answer3</asp:ListItem>
                            <asp:ListItem Value="4">Answer4</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LblError" runat="server" ForeColor="Red"></asp:Label></td>
                    <td>
                        <asp:Button ID="BtnContinue" runat="server" Text="Continue" OnClick="BtnContinue_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

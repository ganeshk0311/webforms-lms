<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudRegistration.aspx.cs" Inherits="FlmWebFormsApp.Student.StudRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2" align="center">
                        <asp:Label ID="Label2" runat="server" Text="Student Registration" Font-Bold="True" Font-Size="Medium" ForeColor="#0033CC"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Student Name: </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtStudName" runat="server" ToolTip="Enter Student Name"></asp:TextBox>                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Student Name is Mandatory" ControlToValidate="TxtStudName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email Id (Used for Login): </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtEmail" runat="server" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is Mandatory" ControlToValidate="TxtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password: </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password is Mandatory" ControlToValidate="TxtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Repeat-Password: </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtRePassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Re-Type Password" ControlToValidate="TxtRePassword" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password doesnot match" ControlToCompare="TxtPassword" ControlToValidate="TxtRePassword" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Gender: </td>
                    <td class="auto-style3">
                        <asp:RadioButton ID="RbtMale" runat="server" GroupName="Gender" Text="Male" Checked="True" />
                        <asp:RadioButton ID="RbtFemale" runat="server" GroupName="Gender" Text="Female" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Mobile: </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtMobile" runat="server" MaxLength="10" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Mobile is Mandatory" ControlToValidate="TxtMobile"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">State: </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DdlState" runat="server" AutoPostBack="True" Height="25px" OnSelectedIndexChanged="DdlState_SelectedIndexChanged" Width="190px">
                            <asp:ListItem Value="0">Select a State</asp:ListItem>
                            <asp:ListItem>Telangana</asp:ListItem>
                            <asp:ListItem>Andhra Pradesh</asp:ListItem>
                            <asp:ListItem>Karnataka</asp:ListItem>
                            <asp:ListItem>TamilNadu</asp:ListItem>
                            <asp:ListItem>Kerala</asp:ListItem>
                            <asp:ListItem>Maharashtra</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">City: </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DdlCity" runat="server" Height="26px" Width="190px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Address: </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtAddress" runat="server" Height="130px" TextMode="MultiLine" Width="358px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Date Of Birth: </td>
                    <td class="auto-style3">
                        <asp:Calendar ID="CalDob" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="CalDob_SelectionChanged" Visible="False" Width="350px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                        <asp:Label ID="LblDob" runat="server" Font-Size="Medium" ForeColor="#006600"></asp:Label>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Click Here</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Upload Your Photo: </td>
                    <td class="auto-style3">
                        <asp:FileUpload ID="FileStudPhoto" runat="server" AllowMultiple="True" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Select the Course: </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DdlCourse" runat="server" Height="21px" Width="186px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="LblError" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="BtnRegister" runat="server" Text="Register" OnClick="BtnRegister_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

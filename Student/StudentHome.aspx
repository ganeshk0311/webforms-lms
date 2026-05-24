<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="FlmWebFormsApp.Student.StudentHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Welcome <%=Session["studname"] %></td>
                </tr>
                <tr>
                    <td>Your Course Details</td>
                    <td>
                        <asp:DataList ID="DLCourseDetails" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyField="id" DataSourceID="DSCourseMaster" GridLines="Horizontal">
                            <AlternatingItemStyle BackColor="#F7F7F7" />
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <ItemTemplate>
                                id: <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                <br />
                                coursename:
                                <asp:Label ID="coursenameLabel" runat="server" Text='<%# Eval("coursename") %>' />
                                <br />
                                description:
                                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                <br />
                                modules:
                                <asp:Label ID="modulesLabel" runat="server" Text='<%# Eval("modules") %>' />
                                <br />
                                duration:
                                <asp:Label ID="durationLabel" runat="server" Text='<%# Eval("duration") %>' />
                                <br />
                                <br />
                            </ItemTemplate>
                            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        </asp:DataList>
                        <asp:SqlDataSource ID="DSCourseMaster" runat="server" ConnectionString="<%$ ConnectionStrings:LMSConnectionString2 %>" SelectCommand="SELECT * FROM [coursemaster] WHERE ([id] = @id)">
                            <SelectParameters>
                                <asp:SessionParameter DefaultValue="1" Name="id" SessionField="fkcourseid" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>Your Course Material Links</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Your Test Attempts</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Select a Test To Attempt</td>
                    <td>
                        <asp:DropDownList ID="DdlTestMaster" runat="server" DataSourceID="DsTestList" DataTextField="testname" DataValueField="id"></asp:DropDownList>
                        <asp:SqlDataSource ID="DsTestList" runat="server" ConnectionString="<%$ ConnectionStrings:LMSConnectionString2 %>" SelectCommand="select '0' as id, 'Select a Test' as testname union SELECT id, testname FROM [testmaster] WHERE ([fkcourseid] = @fkcourseid)">
                            <SelectParameters>
                                <asp:SessionParameter DefaultValue="1" Name="fkcourseid" SessionField="fkcourseid" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:LinkButton ID="LnkAttemptTest" runat="server" OnClick="LnkAttemptTest_Click">AttemptTest</asp:LinkButton>
                    </td>
                </tr>
            </table>
            
            
        </div>
    </form>
</body>
</html>

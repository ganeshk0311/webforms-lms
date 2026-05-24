<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageTests.aspx.cs" Inherits="FlmWebFormsApp.Faculty.ManageTests" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1" border-color="blue" cell-spacing="0" width="100%">
                <tr>
                    <td colspan="2"><h2>Welcome <%=Session["facultyname"] %></h2></td>
                </tr>
                <tr>
                    <td width="25%" align="center" valign="top">
                        <a href="ManageCourses.aspx" style="text-decoration:none;">Manage Courses</a> <br />
                        <a href="ManageCoruseMaterial.aspx" style="text-decoration:none;">Manage Course Material</a> <br />
                        <a href="ManageTests.aspx" style="text-decoration:none;">Manage Tests</a> <br />
                        <a href="ManageQuestions.aspx" style="text-decoration:none;">Manage Questions</a> <br />
                    </td>
                    <td width="75%" valign="top">

                        <table class="auto-style1">
                            <tr>
                                <td colspan="2" style="text-align: center">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Select The Course:</td>
                                <td>
                                    <asp:DropDownList ID="DdlCourse" runat="server" DataSourceID="DsCourse" DataTextField="coursename" DataValueField="id" Width="184px">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="DsCourse" runat="server" ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" SelectCommand="select '0' as id, 'Select a Course' as coursename
union
select id, coursename from coursemaster"></asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Test Name: </td>
                                <td>
                                    <asp:TextBox ID="TxtTestName" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Duration [in Mins]: </td>
                                <td>
                                    <asp:TextBox ID="TxtDuration" runat="server" TextMode="Number"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Total Questions: </td>
                                <td>
                                    <asp:TextBox ID="TxtQuestions" runat="server" TextMode="Number"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="LblError" runat="server" ForeColor="#CC0000"></asp:Label>
                                </td>
                                <td>
                                    <asp:Button ID="btnAddTest" runat="server" Text="Add Test" OnClick="btnAddTest_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td align="left">Exising Tests:</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="DsTests" GridLines="Horizontal">
                                        <AlternatingRowStyle BackColor="#F7F7F7" />
                                        <Columns>
                                            <asp:BoundField DataField="id" HeaderText="Test Id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                            <asp:BoundField DataField="fkcourseid" HeaderText="Course Id" SortExpression="fkcourseid" />
                                            <asp:BoundField DataField="testname" HeaderText="Test Name" SortExpression="testname" />
                                            <asp:BoundField DataField="duration" HeaderText="Duration" SortExpression="duration" />
                                            <asp:BoundField DataField="totquestions" HeaderText="Total Questions" SortExpression="totquestions" />
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                        </Columns>
                                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="DsTests" runat="server" ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" DeleteCommand="DELETE FROM [testmaster] WHERE [id] = @id" InsertCommand="INSERT INTO [testmaster] ([fkcourseid], [testname], [duration], [totquestions]) VALUES (@fkcourseid, @testname, @duration, @totquestions)" SelectCommand="SELECT * FROM [testmaster]" UpdateCommand="UPDATE [testmaster] SET [fkcourseid] = @fkcourseid, [testname] = @testname, [duration] = @duration, [totquestions] = @totquestions WHERE [id] = @id">
                                        <DeleteParameters>
                                            <asp:Parameter Name="id" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="fkcourseid" Type="Int32" />
                                            <asp:Parameter Name="testname" Type="String" />
                                            <asp:Parameter Name="duration" Type="Int32" />
                                            <asp:Parameter Name="totquestions" Type="Int32" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="fkcourseid" Type="Int32" />
                                            <asp:Parameter Name="testname" Type="String" />
                                            <asp:Parameter Name="duration" Type="Int32" />
                                            <asp:Parameter Name="totquestions" Type="Int32" />
                                            <asp:Parameter Name="id" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>

                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

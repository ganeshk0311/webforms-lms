<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageQuestions.aspx.cs" Inherits="FlmWebFormsApp.Faculty.ManageQuestions" %>

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
                                <td colspan="2" align="center">
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Select a Test:</td>
                                <td>
                                    <asp:DropDownList ID="DdlTests" runat="server" Width="184px" DataSourceID="DsTests" DataTextField="testname" DataValueField="id">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="DsTests" runat="server" ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" SelectCommand="select '0' as id, 'Select a Test' as testname
union
select id, testname from testmaster"></asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Question: </td>
                                <td>
                                    <asp:TextBox ID="TxtQuestion" runat="server" Height="123px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Answer1:</td>
                                <td>
                                    <asp:TextBox ID="TxtAnswer1" runat="server" Height="101px" TextMode="MultiLine" Width="398px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Answer2:</td>
                                <td>
                                    <asp:TextBox ID="TxtAnswer2" runat="server" Height="102px" TextMode="MultiLine" Width="397px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Answer3:</td>
                                <td>
                                    <asp:TextBox ID="TxtAnswer3" runat="server" Height="100px" TextMode="MultiLine" Width="395px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Answer4:</td>
                                <td>
                                    <asp:TextBox ID="TxtAnswer4" runat="server" Height="88px" TextMode="MultiLine" Width="394px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Correct Answer:</td>
                                <td>
                                    <asp:DropDownList ID="DdlCorrectAnswer" runat="server" Width="188px">
                                        <asp:ListItem Value="0">Select An Answer</asp:ListItem>
                                        <asp:ListItem Value="1">Answer1</asp:ListItem>
                                        <asp:ListItem Value="2">Answer2</asp:ListItem>
                                        <asp:ListItem Value="3">Answer3</asp:ListItem>
                                        <asp:ListItem Value="4">Answer4</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Explanation:</td>
                                <td>
                                    <asp:TextBox ID="TxtExplanation" runat="server" Height="173px" TextMode="MultiLine" Width="389px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right">
                                    <asp:Label ID="LblError" runat="server" ForeColor="Red"></asp:Label>
                                </td>
                                <td>
                                    <asp:Button ID="BtnSave" runat="server" Text="Add Question" OnClick="BtnSave_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left">Existing Questions</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <asp:GridView ID="GvQuestions" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="DsTestQuestions" GridLines="Horizontal">
                                        <AlternatingRowStyle BackColor="#F7F7F7" />
                                        <Columns>
                                            <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                            <asp:BoundField DataField="fktestid" HeaderText="Test Id" SortExpression="fktestid" />
                                            <asp:BoundField DataField="question" HeaderText="Question" SortExpression="question" />
                                            <asp:BoundField DataField="answer1" HeaderText="Answer1" SortExpression="answer1" />
                                            <asp:BoundField DataField="answer2" HeaderText="Answer2" SortExpression="answer2" />
                                            <asp:BoundField DataField="answer3" HeaderText="Answer3" SortExpression="answer3" />
                                            <asp:BoundField DataField="answer4" HeaderText="Answer4" SortExpression="answer4" />
                                            <asp:BoundField DataField="correctans" HeaderText="Correct Answer" SortExpression="correctans" />
                                            <asp:BoundField DataField="explanation" HeaderText="Explanation" SortExpression="explanation" />
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
                                    <asp:SqlDataSource ID="DsTestQuestions" runat="server" ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" DeleteCommand="DELETE FROM [testquestions] WHERE [id] = @id" InsertCommand="INSERT INTO [testquestions] ([fktestid], [question], [answer1], [answer2], [answer3], [answer4], [correctans], [explanation]) VALUES (@fktestid, @question, @answer1, @answer2, @answer3, @answer4, @correctans, @explanation)" SelectCommand="SELECT * FROM [testquestions] WHERE ([fktestid] = @fktestid)" UpdateCommand="UPDATE [testquestions] SET [fktestid] = @fktestid, [question] = @question, [answer1] = @answer1, [answer2] = @answer2, [answer3] = @answer3, [answer4] = @answer4, [correctans] = @correctans, [explanation] = @explanation WHERE [id] = @id">
                                        <DeleteParameters>
                                            <asp:Parameter Name="id" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="fktestid" Type="Int32" />
                                            <asp:Parameter Name="question" Type="String" />
                                            <asp:Parameter Name="answer1" Type="String" />
                                            <asp:Parameter Name="answer2" Type="String" />
                                            <asp:Parameter Name="answer3" Type="String" />
                                            <asp:Parameter Name="answer4" Type="String" />
                                            <asp:Parameter Name="correctans" Type="Int32" />
                                            <asp:Parameter Name="explanation" Type="String" />
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DdlTests" DefaultValue="1" Name="fktestid" PropertyName="SelectedValue" Type="Int32" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="fktestid" Type="Int32" />
                                            <asp:Parameter Name="question" Type="String" />
                                            <asp:Parameter Name="answer1" Type="String" />
                                            <asp:Parameter Name="answer2" Type="String" />
                                            <asp:Parameter Name="answer3" Type="String" />
                                            <asp:Parameter Name="answer4" Type="String" />
                                            <asp:Parameter Name="correctans" Type="Int32" />
                                            <asp:Parameter Name="explanation" Type="String" />
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

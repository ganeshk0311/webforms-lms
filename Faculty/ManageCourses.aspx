<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageCourses.aspx.cs" Inherits="FlmWebFormsApp.Faculty.ManageCourses" %>

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
       <tr><td colspan="2"><h2>Welcome <%=Session["facultyname"] %></h2></td></tr>
    <tr>
        <td width="25%" align="center" valign="top">
            <a href="ManageCourses.aspx" style="text-decoration:none;">Manage Courses</a> <br />
            <a href="ManageCoruseMaterial.aspx" style="text-decoration:none;">Manage Course Material</a> <br />
            <a href="ManageTests.aspx" style="text-decoration:none;">Manage Tests</a> <br />
            <a href="ManageQuestions.aspx" style="text-decoration:none;">Manage Questions</a> <br />
        </td>
        <td width="75%">
            <table class="auto-style1">
    <tr>
        <td colspan="2" align="center">
            <asp:Label ID="Label2" runat="server" Text="Manage Courses" Font-Bold="True" Font-Size="Large" ForeColor="#0033CC"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Course Name: </td>
        <td>
            <asp:TextBox ID="TxtCourseName" runat="server" Width="299px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Description: </td>
        <td>
            <asp:TextBox ID="TxtDescription" runat="server" Height="99px" TextMode="MultiLine" Width="306px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Main Modules: </td>
        <td>
            <asp:TextBox ID="TxtModules" runat="server" Height="95px" TextMode="MultiLine" Width="302px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Duration [in months]: </td>
        <td>
            <asp:TextBox ID="TxtDuration" runat="server" TextMode="Number"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="LblError" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td>
            <asp:Button ID="BtnAdd" runat="server" Text="Add Course" OnClick="BtnAdd_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Existing Courses:</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:GridView ID="GvCourseList" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="DsCourseList">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="coursename" HeaderText="coursename" SortExpression="coursename" />
                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                    <asp:BoundField DataField="modules" HeaderText="modules" SortExpression="modules" />
                    <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
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

            <asp:SqlDataSource ID="DsCourseList" runat="server" 
                ConnectionString="<%$ ConnectionStrings:LMSConnectionString2 %>" 
                DeleteCommand="DELETE FROM [coursemaster] WHERE [id] = @id" 
                SelectCommand="SELECT * FROM [coursemaster]" 
                UpdateCommand="UPDATE [coursemaster] SET [coursename] = @coursename, [description] = @description, [modules] = @modules, [duration] = @duration WHERE [id] = @id" InsertCommand="INSERT INTO [coursemaster] ([coursename], [description], [modules], [duration]) VALUES (@coursename, @description, @modules, @duration)">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                
                <InsertParameters>
                    <asp:Parameter Name="coursename" Type="String" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="modules" Type="String" />
                    <asp:Parameter Name="duration" Type="Int32" />
                </InsertParameters>
                
                <UpdateParameters>
                    <asp:Parameter Name="coursename" Type="String" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="modules" Type="String" />
                    <asp:Parameter Name="duration" Type="Int32" />
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

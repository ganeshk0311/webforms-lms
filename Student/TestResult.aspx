<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestResult.aspx.cs" Inherits="FlmWebFormsApp.Student.TestResult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Welcome <%=Session["studname"] %>, This is your Result</h2>
        </div>
        <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyField="id" DataSourceID="DsAttemptSummary" GridLines="Both">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
                id:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                <br />
                fkstudid:
                <asp:Label ID="fkstudidLabel" runat="server" Text='<%# Eval("fkstudid") %>' />
                <br />
                fktestid:
                <asp:Label ID="fktestidLabel" runat="server" Text='<%# Eval("fktestid") %>' />
                <br />
                attemptdate:
                <asp:Label ID="attemptdateLabel" runat="server" Text='<%# Eval("attemptdate") %>' />
                <br />
                result:
                <asp:Label ID="resultLabel" runat="server" Text='<%# Eval("result") %>' />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="DsAttemptSummary" runat="server" ConnectionString="<%$ ConnectionStrings:LMSConnectionString4 %>" ProviderName="<%$ ConnectionStrings:LMSConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [studentattemptsummary] WHERE (([fkstudid] = @fkstudid) AND ([fktestid] = @fktestid))">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="2" Name="fkstudid" SessionField="studid" Type="Int32" />
                <asp:SessionParameter DefaultValue="1" Name="fktestid" SessionField="testid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <h3>Test Attempt Details</h3>
                <asp:DataList ID="DataList2" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyField="id" DataSourceID="DsAttemptSummary" GridLines="Both">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
                Question:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("question") %>' />
                <br />
                Answer1:
                <asp:Label ID="fkstudidLabel" runat="server" Text='<%# Eval("answer1") %>' />
                <br />
                Answer2:
                <asp:Label ID="fktestidLabel" runat="server" Text='<%# Eval("answer2") %>' />
                <br />
                Answer3:
                <asp:Label ID="attemptdateLabel" runat="server" Text='<%# Eval("answer3") %>' />
                <br />
                Answer4:
                <asp:Label ID="resultLabel" runat="server" Text='<%# Eval("answer4") %>' />
                <br />
                Selected Answer:
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("selectedans") %>' />
                <br />
                Is Correct:
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("iscorrect") %>' />
                <br />
                Explanation:
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("explanation") %>' />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="DsAttemptDetails" runat="server" ConnectionString="<%$ ConnectionStrings:LMSConnectionString4 %>" ProviderName="<%$ ConnectionStrings:LMSConnectionString4.ProviderName %>" SelectCommand="select tq.question, tq.answer1, tq.answer3, tq.answer4, tq.correctans, sa.selectedans, sa.iscorrect, tq.explanation, from testquestions tq, studentattemptdetails sa where sa.fktestquestionid = tq.id and WHERE (([sa.fkstudid] = @fkstudid) AND ([tq.fktestid] = @fktestid))">
             <SelectParameters>
                 <asp:SessionParameter DefaultValue="2" Name="fkstudid" SessionField="studid" Type="Int32" />
                 <asp:SessionParameter DefaultValue="1" Name="fktestid" SessionField="testid" Type="Int32" />
             </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

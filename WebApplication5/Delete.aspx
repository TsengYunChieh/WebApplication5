<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="WebApplication5.Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            刪除資料<br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                    <asp:BoundField DataField="MID" HeaderText="MID" ReadOnly="True" SortExpression="MID" />
                    <asp:BoundField DataField="MNAME" HeaderText="MNAME" SortExpression="MNAME" />
                    <asp:BoundField DataField="TEL" HeaderText="TEL" SortExpression="TEL" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    <asp:BoundField DataField="PID" HeaderText="PID" SortExpression="PID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SellSystemConnectionString %>" DeleteCommand="DELETE FROM [M] WHERE [MID] = @original_MID AND (([MNAME] = @original_MNAME) OR ([MNAME] IS NULL AND @original_MNAME IS NULL)) AND (([TEL] = @original_TEL) OR ([TEL] IS NULL AND @original_TEL IS NULL)) AND (([EMAIL] = @original_EMAIL) OR ([EMAIL] IS NULL AND @original_EMAIL IS NULL)) AND (([PID] = @original_PID) OR ([PID] IS NULL AND @original_PID IS NULL))" InsertCommand="INSERT INTO [M] ([MID], [MNAME], [TEL], [EMAIL], [PID]) VALUES (@MID, @MNAME, @TEL, @EMAIL, @PID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [M]" UpdateCommand="UPDATE [M] SET [MNAME] = @MNAME, [TEL] = @TEL, [EMAIL] = @EMAIL, [PID] = @PID WHERE [MID] = @original_MID AND (([MNAME] = @original_MNAME) OR ([MNAME] IS NULL AND @original_MNAME IS NULL)) AND (([TEL] = @original_TEL) OR ([TEL] IS NULL AND @original_TEL IS NULL)) AND (([EMAIL] = @original_EMAIL) OR ([EMAIL] IS NULL AND @original_EMAIL IS NULL)) AND (([PID] = @original_PID) OR ([PID] IS NULL AND @original_PID IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_MID" Type="String" />
                    <asp:Parameter Name="original_MNAME" Type="String" />
                    <asp:Parameter Name="original_TEL" Type="String" />
                    <asp:Parameter Name="original_EMAIL" Type="String" />
                    <asp:Parameter Name="original_PID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MID" Type="String" />
                    <asp:Parameter Name="MNAME" Type="String" />
                    <asp:Parameter Name="TEL" Type="String" />
                    <asp:Parameter Name="EMAIL" Type="String" />
                    <asp:Parameter Name="PID" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MNAME" Type="String" />
                    <asp:Parameter Name="TEL" Type="String" />
                    <asp:Parameter Name="EMAIL" Type="String" />
                    <asp:Parameter Name="PID" Type="String" />
                    <asp:Parameter Name="original_MID" Type="String" />
                    <asp:Parameter Name="original_MNAME" Type="String" />
                    <asp:Parameter Name="original_TEL" Type="String" />
                    <asp:Parameter Name="original_EMAIL" Type="String" />
                    <asp:Parameter Name="original_PID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

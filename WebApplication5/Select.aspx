<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Select.aspx.cs" Inherits="WebApplication5.Select" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        查詢資料<br />
&nbsp;<asp:RadioButton ID="RadioButton1" runat="server" GroupName="search" Text="全部" />
        <br />
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" GroupName="search" Text="姓名" />
&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
&nbsp;<asp:RadioButton ID="RadioButton3" runat="server" GroupName="search" Text="產品" />
&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="開始查詢" Width="119px" />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="WebApplication5.Insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            新增資料<br />
            <br />
            帳號:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            姓名:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            電話:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            信箱:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            產品:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="確認" Width="79px" />
        </div>
    </form>
</body>
</html>

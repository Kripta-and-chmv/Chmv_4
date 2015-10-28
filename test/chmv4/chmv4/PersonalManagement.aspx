<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="PersonalManagement.aspx.cs" Inherits="chmv4.PersonalMenegment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    </head>
<body background="Images/tumblr_static_grey_tumblr_background__2_.jpg">
    <form id="form1" runat="server">
        <div>

            <asp:Button ID="btnToMain" runat="server" Text="На главную" OnClick="btnToMain_Click" />

            <br />
            <br />
            <br />

        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Введите имя пользователя:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="VG1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Введите имя пользователя" ForeColor="#CC0000" ValidationGroup="VG1">*</asp:RequiredFieldValidator>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Поиск" ValidationGroup="VG1" />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" PageSize="2" AllowPaging="True" AllowSorting="True" AutoGenerateEditButton="True">
            <Columns>
                <asp:BoundField DataField="Имя" HeaderText="Имя" SortExpression="Имя" />
                <asp:BoundField DataField="Категория" HeaderText="Категория" SortExpression="Категория" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KKK %>" SelectCommand="SELECT [Имя], [Категория] FROM [Users]"></asp:SqlDataSource>
    </form>
</body>
</html>

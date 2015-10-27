<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalManagement.aspx.cs" Inherits="chmv4.PersonalMenegment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 135px;
        }
        .auto-style2 {
            width: 520px;
            height: 202px;
        }
        .auto-style3 {
            width: 123px;
        }
    </style>
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
            <table col="2" class="auto-style2" border="1">
                <tr>
                    <td align="center" class="auto-style3"><strong>Категория</strong></td>
                    <td align="center" class="auto-style1"><strong>Имя пользователя</strong></td>
                </tr>
                <tr>
                    <td class="auto-style3" align="center">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="30px" Width="165px">
                            <asp:ListItem>Пользователь</asp:ListItem>
                            <asp:ListItem>Администратор</asp:ListItem>
                            <asp:ListItem>Супер Администратор</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td align="center" class="auto-style1">Петя Васечкин</td>
                </tr>
                <tr>
                    <td class="auto-style3" align="center">
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="30px" Width="165px">
                             <asp:ListItem>Пользователь</asp:ListItem>
                            <asp:ListItem>Администратор</asp:ListItem>
                            <asp:ListItem>Супер Администратор</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td align="center" class="auto-style1">
                        Вася Петечкин
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" align="center">
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" Height="30px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="165px">
                             <asp:ListItem>Пользователь</asp:ListItem>
                            <asp:ListItem>Администратор</asp:ListItem>
                            <asp:ListItem>Супер Администратор</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td align="center" class="auto-style1">
                        Пася Весечкин
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>

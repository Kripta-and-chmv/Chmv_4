<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="red.ascx.cs" Inherits="chmv4.red" %>
<table>
    <tr>
        <td align="center">Добавить категорию</td>

    </tr>
    <tr>
        <td align="center">
            <asp:TextBox ID="txtCategoryName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCategoryName" Display="Dynamic" ErrorMessage="Введите категорию" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:Button ID="btnAddcategory" runat="server" Text="Добавить" OnClick="btnAddcategory_Click" /></td>
    </tr>
    <tr>
        <td></td>
    </tr>
    <tr>
        <td align="center">Добавить товар</td>
    </tr>
    <tr>
        <td align="center">
            <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtProductName" Display="Dynamic" ErrorMessage="Введите название товара" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:TextBox ID="txtProductPrice" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtProductPrice" Display="Dynamic" ErrorMessage="Введите цену товара" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:DropDownList ID="ddlCategories" runat="server">
                <asp:ListItem>Книги</asp:ListItem>
                <asp:ListItem>Кольца</asp:ListItem>
                <asp:ListItem>Стулья</asp:ListItem>
            </asp:DropDownList></td>
    </tr>
    <tr>
        <td align="center">
            <asp:Button ID="btnAddProduct" runat="server" Text="Добавить" OnClick="btnAddProduct_Click" /></td>
    </tr>
</table>

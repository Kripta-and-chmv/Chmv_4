<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <form id="form1" runat="server">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF0066" ShowMessageBox="True" ShowSummary="False" />
        <div>
            <table>
                <tr>
                    <td>Имя</td>
                    <td style="width: 560px">
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Укажите имя" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Фамилия</td>
                    <td style="width: 560px">
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Укажите фамилию" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>Email</td>
                    <td style="width: 560px">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Укажите почту" ForeColor="#FF0066" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="некорректный email" ForeColor="#FF0066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Указанный емаил существует" ForeColor="#FF0066" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnSave" runat="server" Text="Сохранить" OnClick="btnSave_Click" />
                        <br />
                        <asp:Label ID="lblOut" runat="server" Text="Label"></asp:Label>
                    </td>
                    
                </tr>
            </table>
        </div>

    </form>



</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="default.aspx.cs" Inherits="chmv4._default" %>

<%@ Register Src="~/red.ascx" TagPrefix="My" TagName="Editor" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 67px;
        }

        .auto-style3 {
            width: 1px;
        }

        .auto-style4 {
            width: 13px;
        }

        .auto-style7 {
            height: 23px;
        }

        .auto-style8 {
            width: 13px;
            height: 23px;
        }

        .auto-style9 {
            width: 1px;
            height: 23px;
        }

        .auto-style13 {
            width: 814px;
        }

        .auto-style14 {
            width: 121px;
        }

        .auto-style18 {
            width: 11px;
        }

        .auto-style19 {
            width: 7px;
        }

        .auto-style21 {
            height: 23px;
            width: 120px;
        }

        body {
            margin: 0;
        }

        #sidebar, #content {
            position: absolute;
        }

        #sidebar, #content {
            overflow: auto;
        }

        #header {
            height: 80px; /* Высота слоя */
            background: #FEDFC0;
            border-bottom: 2px solid #7B5427;
        }

        #editor {
            top: 82px; /* Расстояние от верхнего края */
            left: 170px; /* Расстояние от левого края */
            bottom: 0;
            right: 0;
        }
        .auto-style23 {
            width: 34px;
        }
        .auto-style24 {
            width: 120px;
        }
        .auto-style26 {
            height: 23px;
            width: 77px;
        }
        .auto-style27 {
            width: 77px;
        }
        .auto-style28 {
            width: 558px;
        }
        .auto-style29 {
            width: 120px;
            height: 29px;
        }
        .auto-style30 {
            width: 77px;
            height: 29px;
        }
        .auto-style31 {
            height: 29px;
        }
        .auto-style32 {
            width: 67px;
            height: 29px;
        }
        .auto-style33 {
            width: 7px;
            height: 29px;
        }
        .auto-style34 {
            width: 11px;
            height: 29px;
        }
        .auto-style35 {
            width: 34px;
            height: 29px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <asp:Button ID="btnEnterance" runat="server" OnClick="btnEnterance_Click" Text="Вход" ValidationGroup="VG2" />
                        <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged" ActiveViewIndex="0" OnInit="MultiView1_Init">
                            <asp:View ID="view1" runat="server">
                               <My:Editor runat="server" ID="invisible" Visible="True" />
                            </asp:View>
                            <asp:View ID="view2" runat="server">
                                <table class="auto-style13">
                                    <tr>
                                        <td class="auto-style24">
                                            <p>
                                                Название товара</p>
                                        </td>
                                        <td class="auto-style27">
                                            <asp:TextBox ID="txtName" runat="server" OnTextChanged="name_TextChanged" Width="141px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style4">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Введите название товара" ForeColor="#FF0066" ValidationGroup="VG1">*</asp:RequiredFieldValidator>
                                        </td>
                                        <td class="auto-style3"></td>
                                        <td class="auto-style2">
                                            <p>
                                                Категория</p>
                                        </td>
                                        <td class="auto-style19">
                                            <asp:DropDownList ID="ddlFindCategory" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlFindCategory_SelectedIndexChanged">
                                                <asp:ListItem>Книги</asp:ListItem>
                                                <asp:ListItem>Кольца</asp:ListItem>
                                                <asp:ListItem>Стулья</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style18"></td>
                                        <td class="auto-style23">
                                            &nbsp;</td>
                                        <td rowspan="8" width="160">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style21"></td>
                                        <td class="auto-style26"></td>
                                        <td class="auto-style8"></td>
                                        <td class="auto-style9"></td>
                                        <td class="auto-style7" colspan="5">
                                            <p align="left">
                                                Ценовой диапазон</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style29"></td>
                                        <td class="auto-style30">
                                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Поиск" Width="101px" ValidationGroup="VG1" />
                                        </td>
                                        <td class="auto-style31"></td>
                                        <td class="auto-style31"></td>
                                        <td class="auto-style32">
                                            <asp:TextBox ID="txtFrom" runat="server" Width="60px">От</asp:TextBox>
                                        </td>
                                        <td class="auto-style33">
                                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtFrom" Display="Dynamic" ErrorMessage="Нижняя граница ценового диапазона задана неверно" ForeColor="#FF0066" MaximumValue="99999999" MinimumValue="0" ValidationGroup="VG1">*</asp:RangeValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFrom" Display="Dynamic" ErrorMessage="Введите нижнюю границу для поиска" ForeColor="#FF0066" ValidationGroup="VG1">*</asp:RequiredFieldValidator>
                                        </td>
                                        <td class="auto-style34">
                                            <asp:TextBox ID="txtTo" runat="server" Width="60px">До</asp:TextBox>
                                        </td>
                                        <td class="auto-style35">
                                            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtTo" Display="Dynamic" ErrorMessage="Нижняя граница ценового диапазона задана неверно" ForeColor="#FF0066" MaximumValue="99999999" MinimumValue="0" ValidationGroup="VG1">*</asp:RangeValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTo" Display="Dynamic" ErrorMessage="Введите верхнюю границу для поиска" ForeColor="#FF0066" ValidationGroup="VG1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                            </asp:View>
                        </asp:MultiView>
        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="VG1" />
        </div>
        <div>
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="редактировать" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
            <br />
            <table border="1" class="auto-style28">
                <tr>
                    <td class="auto-style14">
                        <p>Категория</p>
                    </td>
                    <td>
                        <p>Название</p>
                    </td>
                    <td>
                        <p>Цена</p>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style14">
                        <p>Книги</p>
                    </td>
                    <td>Маркиз де Сад - &quot;120 дней содома&quot;</td>
                    <td>500
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <p>Кольца</p>
                    </td>
                    <td>Кольцо с сапфиром</td>
                    <td>150000</td>
                </tr>
            </table>
        </div>
        <div id="editor">
        </div>

    </form>
</body>
</html>
